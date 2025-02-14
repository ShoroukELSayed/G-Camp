import 'package:flutter/material.dart';

class FavouriteButton extends StatelessWidget {
  const FavouriteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 25,
        width: 25,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.3), shape: BoxShape.circle),
        child: Icon(
          Icons.favorite_outline_sharp,
          size: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
