import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:raver_common/raver_common.dart';
import 'package:share_plus/share_plus.dart';

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
        final link = '${dotenv.env[userDynamicLinkUrl]}/${widget.path}';
        final dynamicLinkParams = DynamicLinkParameters(
          link: Uri.parse(link),
          uriPrefix: dotenv.env[userDynamicLinkUrl]!,
          androidParameters: const AndroidParameters(
            packageName: 'com.raverteam.tonight',
          ),
          iosParameters: const IOSParameters(
            bundleId: 'com.raverteam.tonight',
          ),
        );

        setState(() {
          _isLoading = true;
        });

        final shortLink = await FirebaseDynamicLinks.instance.buildShortLink(
          dynamicLinkParams,
          shortLinkType: ShortDynamicLinkType.unguessable,
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
