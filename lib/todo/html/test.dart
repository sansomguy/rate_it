import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/services.dart' show rootBundle;

class TestView extends StatelessWidget {
  WebViewController _controller;

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 200,
      width: 200,
      child: WebView(
        initialUrl: '',
        onWebViewCreated: (WebViewController webViewController) {
          _controller = webViewController;
          _loadHtmlFromAssets();
        },
      )
    );
  }

  _loadHtmlFromAssets() async {
    String fileText = await rootBundle.loadString('assets/test.html');
    _controller.loadUrl( Uri.dataFromString(
        fileText,
        mimeType: 'text/html',
        encoding: Encoding.getByName('utf-8')
    ).toString());
  }
}

