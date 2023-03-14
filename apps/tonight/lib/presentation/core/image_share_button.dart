import 'package:common/common.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:share_plus/share_plus.dart';
import 'package:tonight/application/core/tonight_constants.dart';

class ImageShareButton extends StatefulWidget {
  final String path;

  const ImageShareButton({
    required this.path,
    Key? key,
  }) : super(key: key);

  @override
  State<ImageShareButton> createState() => _ImageShareButtonState();
}

class _ImageShareButtonState extends State<ImageShareButton> {
  var _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        if (_isLoading) return;
        final link = '${dotenv.get(dynamicLinkUrl)}/${widget.path}';
        final dynamicLinkParams = DynamicLinkParameters(
          link: Uri.parse(link),
          uriPrefix: dotenv.get(dynamicLinkUrl),
          androidParameters: AndroidParameters(
            packageName: packageName,
            fallbackUrl: Uri.parse(tonightAppUrl),
            minimumVersion: 1,
          ),
          iosParameters: IOSParameters(
            bundleId: packageName,
            appStoreId: appStoreId,
            fallbackUrl: Uri.parse(tonightAppUrl),
            minimumVersion: '1',
          ),
        );

        setState(() {
          _isLoading = true;
        });

        final shortLink = await FirebaseDynamicLinks.instance.buildShortLink(
          dynamicLinkParams,
        );

        setState(() {
          _isLoading = false;
        });

        Share.share(shortLink.shortUrl.toString());
      },
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: context.surfaceColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: _isLoading
              ? SizedBox(
                  height: 24,
                  width: 24,
                  child: SpinKitThreeBounce(
                    color: context.onSurfaceColor,
                    size: 14,
                  ),
                )
              : const SizedBox(
                  height: 24,
                  width: 24,
                  child: Icon(
                    Icons.share,
                    size: 24,
                  ),
                ),
        ),
      ),
    );
  }
}
