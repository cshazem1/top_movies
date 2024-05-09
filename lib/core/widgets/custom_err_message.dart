
import 'package:flutter/material.dart';

class CustomErrorMessage extends StatelessWidget {
  final String errMessage;
  const CustomErrorMessage({required this.errMessage,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(errMessage);
  }
}
