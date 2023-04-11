import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';

class OutlinedLoaderButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isLoading;
  final String label;

  const OutlinedLoaderButton({
    required this.onPressed,
    required this.isLoading,
    required this.label,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        LayoutBuilder(
          builder: (context, constraints) {
            return SizedBox(
              width: constraints.maxWidth * 0.25,
              child: OutlinedButton(
                onPressed: onPressed,
                child: isLoading
                    ? const SizedBox()
                    : Center(
                        child: AutoSizeText(
                          label,
                          maxLines: 1,
                          overflow: TextOverflow.visible,
                          softWrap: false,
                        ),
                      ),
              ),
            );
          },
        ),
        if (isLoading)
          const Positioned.fill(
            child: DotsLoadingIndicator(size: 18),
          )
      ],
    );
  }
}
