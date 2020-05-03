import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:http/http.dart' as http;
//import 'package:html/parser.dart' as parser;
//import 'package:html/dom.dart' as dom;
import 'package:webview_flutter/webview_flutter.dart';

class ArticlesData {
  final String title;
  final String uri;
  const ArticlesData({this.title, this.uri});
}
List<ArticlesData> artData =[
  const ArticlesData(
    title: "Tips for college students to maintain mental health",
    uri: "https://www.sanluisobispo.com/living/family/linda-lewis-griffith/article39470529.html"
  ),
  const ArticlesData(
    title:"Positive Psychology: The Benefits of Living Positively",
    uri: "https://psychcentral.com/blog/positive-psychology-the-benefits-of-living-positively/"
  ),
  const ArticlesData(
    title:"If You’re a Student Who’s Struggling With Mental Health, These 7 Tips Will Help",
    uri:"https://thriveglobal.com/stories/what-to-do-struggling-help-resources-campus-student-mental-health-tips/"

  ),
  const ArticlesData(
    title:"8 Benefits of Positive Psychology in Your Workplace",
    uri:"https://www.positivepsych.edu.sg/global-happiness-policy-report/"
  ),
  const ArticlesData(
    title: "7 Key Benefits of Positive Thinking",
    uri:"https://www.learning-mind.com/7-key-benefits-of-positive-thinking/"
  ),
  const ArticlesData(
    title:"How to NOT Let Toxic People, Words or Situations Affect Your Mental Health",
    uri:"https://drleaf.com/blogs/news/how-to-not-let-toxic-people-words-or-situations-affect-your-mental-health"
  )
];

class ArticleList extends StatelessWidget {
  ArticleList({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var layout = new ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: artData.length,
      itemBuilder:  (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.all(1),
          padding: const EdgeInsets.all(5),
          child: Container(
            color: Colors.blueAccent[50],
            child: Material(
              color: Colors.grey[200],
              elevation: 14.0,
              borderRadius: BorderRadius.circular(20),
              shadowColor: Color(0x802196F3),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 80,
                    constraints: BoxConstraints(
                      maxWidth: 250,
                      minWidth: 100,
                    ),
                    child: new InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FullArticle(artData[index].uri)));
                      },
                      
                      child: Center(
                        child: Text(
                          artData[index].title,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        
      
        );
      });
    return new Scaffold(
      body: layout,
    );
  }
}

class FullArticle extends StatelessWidget {
  
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  FullArticle(this.uri): super();
  final String uri;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Posinotes Articles',
        ),
      ),
      body: WebView(
        initialUrl:
            uri,
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
      ),
     
    );
  }
}
