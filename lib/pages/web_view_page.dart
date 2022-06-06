import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  const WebViewPage({Key? key, required this.pageURL, required this.pageName}) : super(key: key);

  final String pageURL;
  final String pageName;

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  late WebViewController webViewController;

  Future _refreshData() async {
    webViewController.loadUrl(widget.pageURL);
    debugPrint(
        "////////////// ----------- REFRESH PAGE ----------- //////////////");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: AppThemeData.pureColorWhite,
        leading: IconButton(
          icon: const Icon(
            Icons.close_rounded,
            color: AppThemeData.icons,
          ),
          onPressed: () async {
            Navigator.pop(context);
            debugPrint(
                "////////////// ----------- CLOSE PAGE ----------- //////////////");
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              widget.pageName,
              style: TextStyle(
                  fontSize: Theme.of(context).textTheme.bodyText2?.fontSize,
                  color: AppThemeData.textQuaternary),
            ),
            const SizedBox(width: 10.0,),
            IconButton(
              icon: const Icon(
                Icons.refresh,
                color: AppThemeData.icons,
              ),
              onPressed: () async {
                webViewController.loadUrl(widget.pageURL);
                debugPrint(
                    "////////////// ----------- REFRESH PAGE ----------- //////////////");
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.navigate_before_rounded,
                color: AppThemeData.icons,
              ),
              onPressed: () async {
                webViewController.goBack();
                debugPrint(
                    "////////////// ----------- BACK PAGE ----------- //////////////");
              },
            ),
          ],
        ),
      ),
      body: RefreshIndicator(
        onRefresh: _refreshData,
        color: AppThemeData.white,
        backgroundColor: AppThemeData.white,
        child: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: widget.pageURL,
          onWebViewCreated: (controller) {
            webViewController = controller;
          },
          onPageStarted: (url) {
            debugPrint("Page Refresh: ${widget.pageURL}");
          },
        ),
      ),
    );
  }
}
