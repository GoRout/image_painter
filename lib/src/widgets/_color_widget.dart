import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({Key? key, this.onTap, this.isSelected, this.color})
      : super(key: key);
  final VoidCallback? onTap;
  final bool? isSelected;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: isSelected! ? Colors.white70 : Colors.transparent,
            shape: BoxShape.circle,
            border: Border.all(
                width: isSelected! ? 3.0 : 2.0,
                color: isSelected! ? Colors.black : Colors.grey[200]!),
          ),
          child: CircleAvatar(
              radius: isSelected! ? 25 : 20, backgroundColor: color),
        ),
      ),
    );
  }
}

const List<Color> editorColors = [
  Colors.black,
  Colors.white,
  Colors.red,
  Colors.grey,
  Colors.blue,
  Colors.green,
  Colors.pink,
  Colors.yellow,
  Colors.orange,
];
