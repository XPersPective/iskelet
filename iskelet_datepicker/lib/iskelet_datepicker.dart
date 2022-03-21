library iskelet_datepicker;

import 'package:flutter/material.dart';

class WsDatePicker extends StatefulWidget {
  const WsDatePicker({
    Key? key,
    this.showStartTime = true,
    this.showEndTime = true,
    this.direction = Axis.vertical,
    this.isExpand = false,
    this.years,
    this.showYear = true,
    this.showMonth = true,
    this.showDay = true,
    this.showHour = true,
    this.showMinute = true,
    this.showSecond = true,
    this.showMillisecond = true,
    this.showMicroSecond = true,
    this.subtitleStyle,
    this.titleStyle,
    this.startTime,
    this.endTime,
    required this.onChanged,
    this.showSubTitles = true,
  }) : super(key: key);

  final bool showStartTime;
  final bool showEndTime;
  final bool showSubTitles;

  final Axis direction;
  final bool isExpand;
  final List<int>? years;
  final bool showYear;
  final bool showMonth;
  final bool showDay;
  final bool showHour;
  final bool showMinute;
  final bool showSecond;
  final bool showMillisecond;
  final bool showMicroSecond;
  final TextStyle? subtitleStyle;
  final TextStyle? titleStyle;
  final DateTime? startTime;
  final DateTime? endTime;
  final void Function(DateTime startTime, DateTime endTime) onChanged;

  @override
  State<WsDatePicker> createState() => _WsDatePickerState();
}

class _WsDatePickerState extends State<WsDatePicker> {
  late DateTime startTime;
  late DateTime endTime;

  late final List<int> years;
  final List<int> months = const [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
  final List<int> hours = List<int>.generate(24, (i) => i);
  final List<int> sixty = List<int>.generate(60, (i) => i);
  final List<int> thousand = List<int>.generate(1000, (i) => i);

  List<int> days(int year, int month) => List<int>.generate(24, (i) => i + 1);

  Color? get iconColor {
    if (widget.titleStyle?.color != null) return Color(widget.titleStyle!.color!.value);
  }

  @override
  void initState() {
    super.initState();
    years = widget.years != null
        ? widget.years!.toList(growable: false)
        : List<int>.generate(40, (i) => (DateTime.now().year - 20) + i);

    startTime = widget.startTime != null
        ? DateTime.fromMillisecondsSinceEpoch(widget.startTime!.millisecondsSinceEpoch, isUtc: widget.startTime!.isUtc)
        : DateTime.now();
    endTime = widget.endTime != null
        ? DateTime.fromMillisecondsSinceEpoch(widget.endTime!.millisecondsSinceEpoch, isUtc: widget.endTime!.isUtc)
        : DateTime.now();
  }

  _copy(
      {required int year,
      required int month,
      required int day,
      required int hour,
      required int minute,
      required int second,
      required int millisecond,
      required int microsecond}) {
    return startTime.isUtc
        ? DateTime.utc(year, month, day, hour, minute, second, millisecond, microsecond)
        : DateTime(year, month, day, hour, minute, second, millisecond, microsecond);
  }

  _getPopupMenuButton(
      {required int initialValue,
      required String subTitle,
      required void Function(int value) onSelected,
      required List<int> list}) {
    if (widget.isExpand) {
      return Expanded(
        child: PopupMenuButton<int>(
          padding: const EdgeInsets.all(0.0),
          initialValue: initialValue,
          child: ListTile(
            horizontalTitleGap: 10,
            minLeadingWidth: 0,
            subtitle: widget.showSubTitles ? Text(subTitle, style: widget.subtitleStyle) : null,
            trailing: Icon(Icons.arrow_drop_down, color: iconColor),
            title: Text(initialValue < 10 ? '0$initialValue' : '$initialValue', style: widget.titleStyle),
          ),
          onSelected: onSelected,
          itemBuilder: (BuildContext context) => list
              .map(
                (e) => PopupMenuItem<int>(
                  value: e,
                  child: ListTile(
                    title: Text(
                      e < 10 ? '0$e' : '$e',
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      );
    } else {
      return PopupMenuButton<int>(
        padding: const EdgeInsets.all(0.0),
        initialValue: initialValue,
        child: ListTile(
          horizontalTitleGap: 10,
          minLeadingWidth: 0,
          subtitle: Text(subTitle),
          trailing: const Icon(Icons.arrow_drop_down),
          title: Text('$initialValue'),
        ),
        onSelected: onSelected,
        itemBuilder: (BuildContext context) => list
            .map(
              (e) => PopupMenuItem<int>(
                value: e,
                child: ListTile(
                  title: Text(
                    e.toString(),
                  ),
                ),
              ),
            )
            .toList(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        if (widget.showStartTime)
          Flex(
            direction: widget.direction,
            children: [
              if (widget.showYear)
                _getPopupMenuButton(
                    initialValue: startTime.year,
                    subTitle: 'Start Year',
                    onSelected: (int value) {
                      startTime = _copy(
                          year: value,
                          month: startTime.month,
                          day: 1,
                          hour: startTime.hour,
                          minute: startTime.minute,
                          second: startTime.second,
                          millisecond: startTime.millisecond,
                          microsecond: startTime.microsecond);
                      setState(() {});
                      widget.onChanged(startTime, endTime);
                    },
                    list: years),
              if (widget.showMonth)
                _getPopupMenuButton(
                    initialValue: startTime.month,
                    subTitle: 'Start Month',
                    onSelected: (int value) {
                      startTime = _copy(
                          year: startTime.year,
                          month: value,
                          day: 1,
                          hour: startTime.hour,
                          minute: startTime.minute,
                          second: startTime.second,
                          millisecond: startTime.millisecond,
                          microsecond: startTime.microsecond);
                      setState(() {});
                      widget.onChanged(startTime, endTime);
                    },
                    list: const [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]),
              if (widget.showDay)
                _getPopupMenuButton(
                    initialValue: startTime.day,
                    subTitle: 'Start Day',
                    onSelected: (int value) {
                      startTime = _copy(
                          year: startTime.year,
                          month: startTime.month,
                          day: value,
                          hour: startTime.hour,
                          minute: startTime.minute,
                          second: startTime.second,
                          millisecond: startTime.millisecond,
                          microsecond: startTime.microsecond);
                      setState(() {});
                      widget.onChanged(startTime, endTime);
                    },
                    list: days(startTime.year, startTime.month)),
              if (widget.showHour)
                _getPopupMenuButton(
                    initialValue: startTime.hour,
                    subTitle: 'Start Hour',
                    onSelected: (int value) {
                      startTime = _copy(
                          year: startTime.year,
                          month: startTime.month,
                          day: startTime.day,
                          hour: value,
                          minute: startTime.minute,
                          second: startTime.second,
                          millisecond: startTime.millisecond,
                          microsecond: startTime.microsecond);
                      setState(() {});
                      widget.onChanged(startTime, endTime);
                    },
                    list: hours),
              if (widget.showMinute)
                _getPopupMenuButton(
                    initialValue: startTime.minute,
                    subTitle: 'Start Minute',
                    onSelected: (int value) {
                      startTime = _copy(
                          year: startTime.year,
                          month: startTime.month,
                          day: startTime.day,
                          hour: startTime.hour,
                          minute: value,
                          second: startTime.second,
                          millisecond: startTime.millisecond,
                          microsecond: startTime.microsecond);
                      setState(() {});
                      widget.onChanged(startTime, endTime);
                    },
                    list: sixty),
              if (widget.showSecond)
                _getPopupMenuButton(
                    initialValue: startTime.second,
                    subTitle: 'Start Second',
                    onSelected: (int value) {
                      startTime = _copy(
                          year: startTime.year,
                          month: startTime.month,
                          day: startTime.day,
                          hour: startTime.hour,
                          minute: startTime.minute,
                          second: value,
                          millisecond: startTime.millisecond,
                          microsecond: startTime.microsecond);
                      setState(() {});
                      widget.onChanged(startTime, endTime);
                    },
                    list: sixty),
              if (widget.showMillisecond)
                _getPopupMenuButton(
                    initialValue: startTime.millisecond,
                    subTitle: 'Start Millisecond',
                    onSelected: (int value) {
                      startTime = _copy(
                          year: startTime.year,
                          month: startTime.month,
                          day: startTime.day,
                          hour: startTime.hour,
                          minute: startTime.minute,
                          second: startTime.second,
                          millisecond: value,
                          microsecond: startTime.microsecond);
                      setState(() {});
                      widget.onChanged(startTime, endTime);
                    },
                    list: thousand),
              if (widget.showMicroSecond)
                _getPopupMenuButton(
                    initialValue: startTime.microsecond,
                    subTitle: 'Start Microsecond',
                    onSelected: (int value) {
                      startTime = _copy(
                          year: startTime.year,
                          month: startTime.month,
                          day: startTime.day,
                          hour: startTime.hour,
                          minute: startTime.minute,
                          second: startTime.second,
                          millisecond: startTime.millisecond,
                          microsecond: value);
                      setState(() {});
                      widget.onChanged(startTime, endTime);
                    },
                    list: thousand),
            ],
          ),
        if (widget.showEndTime)
          Flex(
            direction: widget.direction,
            children: [
              if (widget.showYear)
                _getPopupMenuButton(
                    initialValue: endTime.year,
                    subTitle: 'End Year',
                    onSelected: (int value) {
                      endTime = _copy(
                          year: value,
                          month: endTime.month,
                          day: 1,
                          hour: endTime.hour,
                          minute: endTime.minute,
                          second: endTime.second,
                          millisecond: endTime.millisecond,
                          microsecond: endTime.microsecond);
                      setState(() {});
                      widget.onChanged(startTime, endTime);
                    },
                    list: years),
              if (widget.showMonth)
                _getPopupMenuButton(
                    initialValue: endTime.month,
                    subTitle: 'End Month',
                    onSelected: (int value) {
                      endTime = _copy(
                          year: endTime.year,
                          month: value,
                          day: 1,
                          hour: endTime.hour,
                          minute: endTime.minute,
                          second: endTime.second,
                          millisecond: endTime.millisecond,
                          microsecond: endTime.microsecond);
                      setState(() {});
                      widget.onChanged(startTime, endTime);
                    },
                    list: const [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]),
              if (widget.showDay)
                _getPopupMenuButton(
                    initialValue: endTime.day,
                    subTitle: 'End Day',
                    onSelected: (int value) {
                      endTime = _copy(
                          year: endTime.year,
                          month: endTime.month,
                          day: value,
                          hour: endTime.hour,
                          minute: endTime.minute,
                          second: endTime.second,
                          millisecond: endTime.millisecond,
                          microsecond: endTime.microsecond);
                      setState(() {});
                      widget.onChanged(startTime, endTime);
                    },
                    list: days(endTime.year, endTime.month)),
              if (widget.showHour)
                _getPopupMenuButton(
                    initialValue: endTime.hour,
                    subTitle: 'End Hour',
                    onSelected: (int value) {
                      endTime = _copy(
                          year: endTime.year,
                          month: endTime.month,
                          day: endTime.day,
                          hour: value,
                          minute: endTime.minute,
                          second: endTime.second,
                          millisecond: endTime.millisecond,
                          microsecond: endTime.microsecond);
                      setState(() {});
                      widget.onChanged(startTime, endTime);
                    },
                    list: hours),
              if (widget.showMinute)
                _getPopupMenuButton(
                    initialValue: endTime.minute,
                    subTitle: 'End Minute',
                    onSelected: (int value) {
                      endTime = _copy(
                          year: endTime.year,
                          month: endTime.month,
                          day: endTime.day,
                          hour: endTime.hour,
                          minute: value,
                          second: endTime.second,
                          millisecond: endTime.millisecond,
                          microsecond: endTime.microsecond);
                      setState(() {});
                      widget.onChanged(startTime, endTime);
                    },
                    list: sixty),
              if (widget.showSecond)
                _getPopupMenuButton(
                    initialValue: endTime.second,
                    subTitle: 'End Second',
                    onSelected: (int value) {
                      endTime = _copy(
                          year: endTime.year,
                          month: endTime.month,
                          day: endTime.day,
                          hour: endTime.hour,
                          minute: endTime.minute,
                          second: value,
                          millisecond: endTime.millisecond,
                          microsecond: endTime.microsecond);
                      setState(() {});
                      widget.onChanged(startTime, endTime);
                    },
                    list: sixty),
              if (widget.showMillisecond)
                _getPopupMenuButton(
                    initialValue: endTime.millisecond,
                    subTitle: 'End Millisecond',
                    onSelected: (int value) {
                      endTime = _copy(
                          year: endTime.year,
                          month: endTime.month,
                          day: endTime.day,
                          hour: endTime.hour,
                          minute: endTime.minute,
                          second: endTime.second,
                          millisecond: value,
                          microsecond: endTime.microsecond);
                      setState(() {});
                      widget.onChanged(startTime, endTime);
                    },
                    list: thousand),
              if (widget.showMicroSecond)
                _getPopupMenuButton(
                    initialValue: endTime.microsecond,
                    subTitle: 'End Microsecond',
                    onSelected: (int value) {
                      endTime = _copy(
                          year: endTime.year,
                          month: endTime.month,
                          day: endTime.day,
                          hour: endTime.hour,
                          minute: endTime.minute,
                          second: endTime.second,
                          millisecond: endTime.millisecond,
                          microsecond: value);
                      setState(() {});
                      widget.onChanged(startTime, endTime);
                    },
                    list: thousand),
            ],
          ),
      ],
    );
  }
}
