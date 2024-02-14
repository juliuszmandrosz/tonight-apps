import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MarketplaceProductPage extends HookWidget {
  final String url;

  const MarketplaceProductPage({
    required this.url,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isLoading = useState(true);
    final webViewController = useState(
      WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setBackgroundColor(Colors.white)
        ..setNavigationDelegate(
          NavigationDelegate(
            onProgress: (_) {},
            onPageStarted: (_) {},
            onPageFinished: (_) => isLoading.value = false,
            onWebResourceError: (_) {},
            onNavigationRequest: (_) => NavigationDecision.navigate,
          ),
        )
        ..loadRequest(Uri.parse(url)),
    );
    return Scaffold(
      appBar: const TonightAppBar(title: ''),
      body: Stack(
        children: [
          if (isLoading.value) const WaveLoadingIndicator(),
          WebViewWidget(controller: webViewController.value),
        ],
      ),
    );
  }
}
