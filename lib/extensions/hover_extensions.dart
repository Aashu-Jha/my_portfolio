import 'package:flutter/material.dart';
// import 'dart:html' as html;
import 'package:my_portfolio/extensions/translate_on_hover.dart';

extension HoverExtensions on Widget {
  // Get a regerence to the body of the view
  // static final appContainer =
  // html.window.document.getElementById('app-container');

  Widget get moveUpOnHover {
    return TranslateOnHover(
      child: this,
    );
  }
}