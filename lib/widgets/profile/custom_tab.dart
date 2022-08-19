import 'package:flutter/material.dart';

Tab customeTab(BuildContext context, {required String text}) {
  return Tab(
    child: Container(
      width: MediaQuery.of(context).size.width * 0.5,
      color: Colors.white,
      child: Center(
        child: Text(text),
      ),
    ),
  );
}
