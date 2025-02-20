import 'package:flutter/material.dart';

class CommentField extends StatelessWidget {
  const CommentField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'write here',
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
