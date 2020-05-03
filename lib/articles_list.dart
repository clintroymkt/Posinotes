import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as parser;
import 'package:html/dom.dart' as dom;
import 'package:webview_flutter/webview_flutter.dart';

class ArticleList extends StatelessWidget {
  ArticleList({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var layout = new ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(2),
          child: Container(
            child: Material(
              color: Colors.blueAccent[50],
              elevation: 14.0,
              borderRadius: BorderRadius.circular(20),
              shadowColor: Color(0x802196F3),
              child: Row(
                children: <Widget>[
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: 150,
                      minWidth: 100,
                    ),
                    child: Text("sup wassa wassa wassup whats good you there"),
                  ),
                  Container(
                    constraints: BoxConstraints(maxWidth: 165, minWidth: 130),
                    child: ClipRRect(
                      borderRadius: new BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/inspi.jpg",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
    return new Scaffold(
      body: layout,
    );
  }
}

class FullArticle extends State {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl: "https://google.com",
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
      ),
      floatingActionButton: FutureBuilder<WebViewController>(
          future: _controller.future,
          builder: (context, AsyncSnapshot<WebViewController> controller) {
            if (controller.hasData) {
              return FloatingActionButton(
                child: Icon(Icons.ac_unit),
                onPressed: () {
                  controller.data.loadUrl(
                      "https://thriveglobal.com/stories/what-to-do-struggling-help-resources-campus-student-mental-health-tips/");
                },
              );
            }
            return Container();
          }),
    );
  }
}
