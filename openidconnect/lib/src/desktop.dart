part of openidconnect;

class OpenIdConnectDesktop {
  static Future<String> authorizeInteractive({
    required BuildContext context,
    required String title,
    required String authorizationUrl,
    required String redirectUrl,
    required int popupWidth,
    required int popupHeight,
  }) async {
    var wv = macosWebView.FlutterMacOSWebView(
      onClose: () {
        print("closing WebView");
      },
      onOpen: () {
        print("opening WebView");
      },
      onPageFinished: (url) {
        print("finished page $url");
      },
      onPageStarted: (url) {
        print("started page $url");
      },
      onWebResourceError: (error) {
        print("error ${error.description}");
      },
    );
    wv.open(url: authorizationUrl);
    return "";
  }
}
