import 'package:flutter/material.dart';
import 'package:portfolio/generated/l10n.dart';

class NotFound404 extends StatelessWidget {
  const NotFound404({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(S.of(context).NotFound404),
      ),
    );
  }
}
