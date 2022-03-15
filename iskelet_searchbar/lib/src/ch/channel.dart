
import 'package:signal/signal.dart';

class StChannelSearchBarSignal extends ChannelSearchBarSignal {}

class StChannelSearchBar extends BaseState {
  StChannelSearchBar(void Function() onStateChanged) : super(onStateChanged);

  @override
  void initState() {}

  @override
  void afterInitState() {}

  @override
  void dispose() {}
}

abstract class ChannelSearchBarSignal extends ChannelSignal {}

class ChannelSearchBar extends StateChannel<ChannelSearchBarSignal> {
  ChannelSearchBar({required List<String> Function() items, required String value})
      : _items = items,
        _value = value {
    state = StChannelSearchBar(() => add(StChannelSearchBarSignal()));
  }

  late final StChannelSearchBar state;

  final List<String> Function() _items;
  List<String> get items {
    return _find(_items(), query);
  }

  String _value;

  String get value => _value;

  set value(String newValue) {
    _value = newValue;
    state.doneSuccess();
  }

  String _query = '';

  String get query => _query;

  set query(String newQuery) {
    _query = newQuery;
    state.doneSuccess();
  }

  // getList(){
  //   if(query.isEmpty) return items else
  // }

  List<String> _find(List<String> list, String? searchedText) {
    if ((searchedText ?? '').isEmpty) return list;
    var rtn = <String>[];
    for (var item in list) {
      if (item.startsWith(searchedText!)) {
        rtn.add(item);
      }
    }
    return rtn;
  }

  @override
  void initState() {
    // state.wait(signal: false);
  }

  @override
  void afterInitState() {}
}
