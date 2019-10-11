import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/services.dart' show rootBundle;

class TestView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 200,
      child: WebView(
        initialUrl: '',
        onWebViewCreated: (WebViewController webViewController) {
          _loadHtmlFromAssets(webViewController);
        },
      )
    );
  }

  _loadHtmlFromAssets(WebViewController webViewController) async {
    String fileText = await rootBundle.loadString('assets/test.html');
    webViewController.loadUrl( Uri.dataFromString(
        fileText,
        mimeType: 'text/html',
        encoding: Encoding.getByName('utf-8')
    ).toString());
  }
}

