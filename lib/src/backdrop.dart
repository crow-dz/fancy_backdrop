import 'package:flutter/material.dart';

import 'animation.dart';

class FancyBackdrop extends StatefulWidget {
  const FancyBackdrop(
      {Key? key,
      required this.open,
      required this.child,
      this.handleClose = false})
      : super(key: key);
  final bool open;
  final Widget child;
  final bool handleClose;

  @override
  State<FancyBackdrop> createState() => _FancyBackdropState();
}

class _FancyBackdropState extends State<FancyBackdrop> {
  @override
  Widget build(BuildContext context) {
    bool isReady = widget.open;
    return Stack(
      children: [
        Positioned(top: 0, left: 0, child: widget.child),
        isReady
            ? Positioned(
                top: 0,
                left: 0,
                child: InkWell(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    color: Colors.transparent.withOpacity(0.5),
                    child: Center(
                      child: SpinKitRing(),
                    ),
                  ),
                  onTap: () {
                    if (widget.handleClose) {
                      setState(() {
                        isReady = !isReady;
                      });
                    }
                  },
                ),
              )
            : Positioned(child: Container()),
      ],
    );
  }
}
