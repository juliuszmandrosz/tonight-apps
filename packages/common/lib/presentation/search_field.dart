import 'package:common/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SearchField extends HookWidget {
  final Future<void> Function(String phrase) onSubmit;
  final String text;

  const SearchField({
    required this.onSubmit,
    this.text = '',
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController();
    useEffect(() {
      textController.text = text;
      return null;
    }, [text]);
    final phrase = useListenable(textController).value.text;
    return TextField(
      controller: textController,
      onSubmitted: (phrase) async => onSubmit(phrase),
      decoration: InputDecoration(
        disabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: context.shadowColor, width: .5),
        ),
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: context.shadowColor, width: .5),
        ),
        hintMaxLines: 1,
        hintText: 'Szukaj gatunków muzycznych, artystów, kolektywów...',
        hintStyle: context.titleSmall.copyWith(color: context.hintColor),
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
