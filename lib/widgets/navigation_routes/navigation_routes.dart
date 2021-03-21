import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

Future navigateToPageWithLR(BuildContext context, Widget pageName) {
  return Navigator.push(
    context,
    PageTransition(
      type: PageTransitionType.leftToRightWithFade,
      alignment: Alignment.topCenter,
      child: pageName,
    ),
  );
}