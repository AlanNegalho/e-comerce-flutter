import 'package:ecomerce/widgets/animated_input_widget.dart';
import 'package:flutter/material.dart';

class SearchBox extends StatefulWidget {
  const SearchBox({super.key});

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool menuOpened = false;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this,
        duration: Duration(
          seconds: 1,
        ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AnimatedInput(controller: _controller),
        TextButton(
            onPressed: () {
              !menuOpened ? _controller.forward() : _controller.reverse();
              menuOpened = !menuOpened;
            },
            child: AnimatedIcon(
              icon: AnimatedIcons.menu_close,
              progress: _controller,
              semanticLabel: "Open more",
            ))
      ],
    );
  }
}
