import 'package:flutter/material.dart';

class ClickFeedback extends StatefulWidget {
  final Widget child;
  final VoidCallback onPressed;
  final bool isfeed;
  final Color background;
  ClickFeedback({
    Key key,
    @required this.child,
    @required this.onPressed,
    this.isfeed: true,
    this.background: const Color(0xffd8d8d8),
  }) : super(key: key);
  @override
  ClickState createState() => new ClickState();
}

class ClickState extends State<ClickFeedback> {
  Color color = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      child: Container(
        color: color,
        child: widget.child,
      ),
      onTap: widget.onPressed,
      // onTapCancel: () {
      //   print('onTapCancel');
      // },
      // onTapDown: (TapDownDetails t) {
      //   print('onTapDown');
      //   setState(() {
      //     color = Colors.grey;
      //   });
      // },
      // onTapUp: (t) {
      //   print('onTapUp');
      //   setState(() {
      //     color = Colors.white;
      //   });
      // },
      onPanDown: (d) {
        // print('onPanDown');
        if (widget.isfeed == false) return;
        setState(() {
          color = widget.background;
        });
      },
      // onPanEnd: (d) {
      //   print('onPanEnd');
      // },
      // onPanStart: (d) {
      //   print('onPanStart');
      // },
      onPanCancel: () {
        // print('onPanCancel');
        setState(() {
          color = Colors.transparent;
        });
      },
      // onVerticalDragCancel:(){
      //   print('onVerticalDragCancel');
      //   setState(() {
      //     color = Colors.white;
      //   });
      // },
      onHorizontalDragCancel: () {
        // print('onHorizontalDragCancel');
        setState(() {
          color = Colors.transparent;
        });
      },
    );
  }
}
