import 'package:common/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:translations/translations.dart';

class SearchField extends HookWidget {
  final Future<void> Function(String phrase) onSubmit;

  const SearchField({
    required this.onSubmit,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController();
    final phrase = useListenable(textController).value.text;
    return TextField(
      controller: textController,
      onSubmitted: (phrase) async => await onSubmit(phrase),
      decoration: InputDecoration(
        hintMaxLines: 1,
        hintText: S().startSearching,
        prefixIcon: const Icon(Icons.search),
        suffixIcon: phrase.isEmpty
            ? null
            : InkWell(
                onTap: () async {
                  textController.clear();
                  context.unfocus();
                  await onSubmit('');
                },
                child: const Icon(Icons.clear),
              ),
      ),
    );
  }
}
