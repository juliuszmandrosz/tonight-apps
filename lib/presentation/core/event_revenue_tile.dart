import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class EventRevenueTile extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;
  final bool isFirst;

  const EventRevenueTile({
    required this.icon,
    required this.value,
    required this.label,
    this.isFirst = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: isFirst
            ? theme.colorScheme.secondary
            : theme.colorScheme.tertiaryContainer,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Icon(
              icon,
              size: 40,
              color: isFirst ? Colors.white : Colors.black,
            ),
          ),
          const SizedBox(height: 12),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: AutoSizeText(
                value,
                maxLines: 1,
                style: isFirst
                    ? theme.textTheme.bodyText1!.copyWith(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      )
                    : theme.textTheme.bodyText2!.copyWith(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            label,
            style: isFirst
                ? theme.textTheme.bodyText1!.copyWith(
                    color: theme.colorScheme.onPrimaryContainer,
                  )
                : theme.textTheme.bodyText2!.copyWith(
                    color: theme.colorScheme.onTertiaryContainer,
                  ),
          ),
        ],
      ),
    );
  }
}
