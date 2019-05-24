import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String _assertPath;

  ImageBanner(this._assertPath);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(
        height: 150.0,
      ),
      decoration: BoxDecoration(color: Colors.grey),
      child: Image.asset(
        _assertPath,
        fit: BoxFit.cover,
      ),
    );
  }
}
