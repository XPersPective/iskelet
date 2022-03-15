
import 'package:flutter/material.dart';
import 'package:signal/signal.dart';

import '../ch/channel.dart';
import 'searchbar.dart';

class PopupSearch extends StatelessWidget {
  const PopupSearch({
    Key? key,
    required this.items,
    required this.initialValue,
    this.searchBarBackIcon,
    required this.title,
    required this.listItemTitle,
    this.listItemLeading,
    this.listItemSubtitle,
    this.listItemTrailing,
    this.listItemHeight,
  }) : super(key: key);

  final List<String> Function() items;
  final String initialValue;

  final Widget? searchBarBackIcon;
  final Widget Function(String value) title;

  final Widget Function(String value) listItemTitle;
  final Widget Function(String value)? listItemLeading;

  final Widget Function(String value)? listItemSubtitle;

  final Widget Function(String value)? listItemTrailing;

  final double? listItemHeight;
  @override
  Widget build(BuildContext context) {
    return ChannelProvider<ChannelSearchBar>(
      channel: (context) => ChannelSearchBar(items: items, value: initialValue),
      child: ChannelBuilder<ChannelSearchBar, ChannelSearchBarSignal>(
        condition: (channel, signal) => signal is StChannelSearchBarSignal,
        builder: (context, channel, __) {
          var channel = ChannelProvider.of<ChannelSearchBar>(context);

          return TextButton(
            child: title(channel.value),
            onPressed: () {
              channel.query = '';
              showDialog(
                context: context,
                builder: (context) {
                  return StatefulBuilder(builder: (BuildContext context, StateSetter setState) {
                    var query = channel.query;
                    var items = channel.items;
                    return Scaffold(
                      appBar: AppBar(
                        leading: searchBarBackIcon == null
                            ? null
                            : IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: searchBarBackIcon!,
                              ),
                        title: SearchBar(
                          initialValue: channel.value,
                          isUpperCase: true,
                          onChanged: (value) {
                            channel.query = value;
                            setState(() {});
                          },
                        ),
                      ),
                      body: ListView.builder(
                          itemCount: items.length,
                          itemBuilder: (context, index) {
                            var result = items[index];
                            return SizedBox(
                              height: listItemHeight,
                              child: ListTile(
                                title: listItemTitle(result),
                                leading: listItemLeading?.call(result),
                                trailing: listItemTrailing?.call(result),
                                subtitle: listItemSubtitle?.call(result),
                                onTap: () {
                                  // ChannelProvider.of<ChannelSearchBar>(buildercontext).addQuery(result);
                                  setState(() {
                                    channel.value = result;
                                  });
                                  Navigator.pop(context);
                                },
                              ),
                            );
                          }),
                    );
                  });
                },
              );
            },
          );
        },
      ),
    );
    //   ],
    // );
    //   },
    // );
  }
}