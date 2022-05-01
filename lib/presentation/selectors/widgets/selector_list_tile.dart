import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/selector_list/selector_list_cubit.dart';
import 'package:raver_partners/domain/selector_management/selector_entity.dart';
import 'package:raver_translations/raver_translations.dart';

class SelectorListTile extends StatelessWidget {
  final Selector selector;

  const SelectorListTile({
    required this.selector,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.all(5),
      child: ListTile(
        title: AutoSizeText(
          selector.email,
          style: theme.textTheme.subtitle1,
          maxLines: 1,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () async {
                final result =
                    await context.showConfirmationDialogWithCustomMessage(
                  S().confirmSelectorDeletion,
                );

                if (result ?? false) {
                  context.read<SelectorListCubit>().deleteSelector(selector);
                }
              },
              icon: FaIcon(
                FontAwesomeIcons.ban,
                color: theme.iconTheme.color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
