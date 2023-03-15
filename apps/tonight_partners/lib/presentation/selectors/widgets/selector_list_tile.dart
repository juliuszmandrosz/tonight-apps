import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight_partners/application/selector_list/selector_list_cubit.dart';
import 'package:tonight_partners/domain/selector_management/selector_entity.dart';
import 'package:translations/translations.dart';

class SelectorListTile extends StatelessWidget {
  final Selector selector;

  const SelectorListTile({
    required this.selector,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
      title: AutoSizeText(
        selector.email,
        style: context.titleMedium,
        maxLines: 1,
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () async {
              final result =
                  await context.showConfirmationDialogWithCustomMessage(
                S().confirmSelectorDeletion,
              );

              if (context.mounted && (result ?? false)) {
                context.read<SelectorListCubit>().deleteSelector(selector);
              }
            },
            icon: const FaIcon(FontAwesomeIcons.ban),
          ),
        ],
      ),
    );
  }
}
