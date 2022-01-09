import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class viewWebsite extends StatefulWidget {
  @override
  State<viewWebsite> createState() => _viewWebsiteState();
}

class _viewWebsiteState extends State<viewWebsite> {
  late WebViewController controller;

  double progress = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        // stay in the app
        if (await controller.canGoBack()) {
          controller.goBack();
          return false;
        } else {
          return true;
        }
        return false;
      },
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(35.0),
          child: AppBar(
          backgroundColor: Color(0xFF0ff5318),
          actions: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () async {
                if (await controller.canGoBack()){
                  controller.goBack();
                }
              }, 
            ),
            IconButton(
              onPressed: () => controller.reload(),
              icon: Icon(Icons.refresh),
            ),
          ],
          ),
        ),
        body: _buildWebView(),
      ),
    );
  }

  Widget _buildWebView() {
    return Column(
      children: [
        LinearProgressIndicator(
          value: progress,
          color: Color(0xFF1B62F1),
          backgroundColor: Colors.white,
        ),
        Expanded(
          child: WebView(
            javascriptMode: JavascriptMode.unrestricted,
            initialUrl: 'http://beta.thelessonteacher.com/login',
            onWebViewCreated: (controller){
              this.controller = controller;
            },
            onProgress: (progress) => 
              setState(() => this.progress = progress / 100),
          ),
        ),
      ],
    );
  }
}
