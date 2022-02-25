library iskelet_splash;

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
export 'package:flutter_spinkit/flutter_spinkit.dart';

class WpSplash extends StatelessWidget {
  const WpSplash({
    Key? key,
    required this.isBusy,
    required this.isSuccess,
    this.errorText,
    this.imageWidthFactor = .5,
    this.imageHeightFactor = .2,
    this.background,
    required this.image,
    required this.onNavigate,
    required this.onRefresh,
    this.splash,
  }) : super(key: key);

  final bool isBusy;
  final bool isSuccess;
  final String? errorText;

  final double imageWidthFactor;
  final double imageHeightFactor;

  final Color? background;

  /// image: Image.asset('assets/icon.png'),
  /// or
  /// Icon()
  final Widget image;

  ///onNavigate: (context) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (contex) => const Home())),
  final void Function(BuildContext context) onNavigate;

  ///onRefresh: (context) async => await channel.afterInitState(),
  final void Function(BuildContext context) onRefresh;

  ///  Padding(
  ///                         padding: const EdgeInsets.all(8.0),
  ///                         child: SpinKitThreeBounce(
  ///                           size: 15,
  ///                           itemBuilder: (BuildContext context, int index) {
  ///                             return DecoratedBox(
  ///                               decoration: BoxDecoration(
  ///                                 shape: BoxShape.circle,
  ///                                 color: Colors.grey.shade300,
  ///                               ),
  ///                             );
  ///                           },
  ///                         ),
  ///                       ),
  final Widget? splash;

  @override
  Widget build(BuildContext context) {
    if (!isBusy && isSuccess) {
      WidgetsBinding.instance?.addPostFrameCallback((_) => onNavigate(context));
    }
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: background,
        alignment: Alignment.center,
        child: !isBusy && !isSuccess
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 25.0),
                    child: Text(
                      errorText ?? 'An error has occurred :( Please try again.',
                      style: const TextStyle(color: Colors.red),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      icon: const Icon(Icons.replay),
                      onPressed: () {
                        onRefresh(context);
                      },
                    ),
                  ),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: w * imageWidthFactor,
                    height: h * imageHeightFactor,
                    child: Align(alignment: Alignment.bottomCenter, child: image),
                  ),
                  splash ??
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SpinKitThreeBounce(
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
                ],
              ),
      ),
    );
  }
}
