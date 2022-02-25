import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:iskelet_splash/iskelet_splash.dart';

import 'package:signal/signal.dart';

class StAppSignal extends ChannelAppSignal {}

abstract class ChannelAppSignal extends ChannelSignal {}

class StAppState extends BaseState {
  StAppState(void Function() onStateChanged) : super(onStateChanged);

  @override
  void initState() => wait(signal: false);

  @override
  Future<void> afterInitState() async {
    await Future.delayed(
      const Duration(seconds: 0),
    );
  }

  @override
  void dispose() {}
}

class ChannelApp extends StateChannel<ChannelAppSignal> {
  ChannelApp() {
    stAppState = StAppState(() => add(StAppSignal()));
  }

  final int _minSecondsWait = 1;
  late final StAppState stAppState;

  @override
  void initState() {
    stAppState.wait(signal: false);
    stAppState.initState();
  }

  final List<String> _complatedStates = [];

  @override
  Future<void> afterInitState() async {
    DateTime? startTime;
    try {
      stAppState.wait();

      if (!_complatedStates.contains('minSecondsWait')) {
        startTime = DateTime.now();
      }

//Load states start
      if (!_complatedStates.contains('stAppState')) {
        await stAppState.afterInitState();
        _complatedStates.add('stAppState');
      }
//Load states end

      if (startTime != null) {
        await _wait(startTime);
        _complatedStates.add('minSecondsWait');
      }

      stAppState.doneSuccess();
    } catch (e) {
      if (!_complatedStates.contains('minSecondsWait')) {
        _complatedStates.add('minSecondsWait');
      }

      stAppState.doneError(e.toString());
    }
  }

  @override
  void dispose() {
    stAppState.dispose();
    super.dispose();
  }

  Future<void> _wait(DateTime startTime) async {
    int waitSecond = DateTime.now().difference(startTime).inSeconds - _minSecondsWait;
    if (kDebugMode) {
      print(waitSecond);
    }
    if (waitSecond < 0) {
      await Future.delayed(Duration(seconds: waitSecond.abs()));
    }
  }
}

void main() {
  runApp(ChannelProvider<ChannelApp>(
    channel: (context) => ChannelApp()..stAppState.wait(signal: false),
    child: ChannelBuilder<ChannelApp, ChannelAppSignal>(
        condition: (channel, signal) => signal is StAppSignal,
        builder: (context, channel, _) {
          final _state = channel.stAppState;

          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: WpSplash(
              isBusy: _state.busy,
              isSuccess: _state.success,
              errorText: _state.error,
              background: Colors.black87,
              image: Image.asset('assets/icon.png'),
              onRefresh: (context) async => await channel.afterInitState(),
              onNavigate: (context) =>
              
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (contex) => const ApPage())),
              splash: SpinKitThreeBounce(
                size: 15,
                itemBuilder: (BuildContext context, int index) {
                  return DecoratedBox(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade300,
                    ),
                  );
                },
              ),
            ),
          );
        }),
  ));
}

class ApPage extends StatelessWidget {
  const ApPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('AppPage')),
        body: Container(color: Colors.blue, child: const Text('AppPage')));
  }
}

// class WpSplash extends StatelessWidget {
//   const WpSplash({
//     Key? key,
//     required this.isBusy,
//     required this.isSuccess,
//     this.errorText,
//     this.imageWidthFactor = .5,
//     this.imageHeightFactor = .2,
//     this.background,
//     required this.image,
//     required this.onNavigate,
//     required this.onRefresh,
//     this.splash,
//   }) : super(key: key);

//   final bool isBusy;
//   final bool isSuccess;
//   final String? errorText;

//   final double imageWidthFactor;
//   final double imageHeightFactor;

//   final Color? background;

//   /// image: Image.asset('assets/icon.png'),
//   /// or
//   /// Icon()
//   final Widget image;

//   ///onNavigate: (context) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (contex) => const Home())),
//   final void Function(BuildContext context) onNavigate;

//   ///onRefresh: (context) async => await channel.afterInitState(),
//   final void Function(BuildContext context) onRefresh;

//   ///  Padding(
//   ///                         padding: const EdgeInsets.all(8.0),
//   ///                         child: SpinKitThreeBounce(
//   ///                           size: 15,
//   ///                           itemBuilder: (BuildContext context, int index) {
//   ///                             return DecoratedBox(
//   ///                               decoration: BoxDecoration(
//   ///                                 shape: BoxShape.circle,
//   ///                                 color: Colors.grey.shade300,
//   ///                               ),
//   ///                             );
//   ///                           },
//   ///                         ),
//   ///                       ),
//   final Widget? splash;

//   @override
//   Widget build(BuildContext context) {
//     if (!isBusy && isSuccess) {
//       WidgetsBinding.instance?.addPostFrameCallback((_) => onNavigate(context));
//     }
//     final w = MediaQuery.of(context).size.width;
//     final h = MediaQuery.of(context).size.height;
//     return Scaffold(
//       body: Container(
//         color: background,
//         alignment: Alignment.center,
//         child: !isBusy && !isSuccess
//             ? Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(bottom: 25.0),
//                     child: Text(
//                       errorText ?? 'An error has occurred :( Please try again.',
//                       style: const TextStyle(color: Colors.red),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: IconButton(
//                       icon: const Icon(Icons.replay),
//                       onPressed: () {
//                         onRefresh(context);
//                       },
//                     ),
//                   ),
//                 ],
//               )
//             : Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   SizedBox(
//                     width: w * imageWidthFactor,
//                     height: h * imageHeightFactor,
//                     child: Align(alignment: Alignment.bottomCenter, child: image),
//                   ),
//                   splash ??
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: SpinKitThreeBounce(
//                           size: 15,
//                           itemBuilder: (BuildContext context, int index) {
//                             return DecoratedBox(
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 color: Colors.grey.shade300,
//                               ),
//                             );
//                           },
//                         ),
//                       ),
//                 ],
//               ),
//       ),
//     );
//   }
// }
