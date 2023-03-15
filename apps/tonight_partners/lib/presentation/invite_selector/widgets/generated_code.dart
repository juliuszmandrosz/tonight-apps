import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share_plus/share_plus.dart';
import 'package:tonight_partners/application/invite_selector/invite_selector_cubit.dart';
import 'package:tonight_partners/presentation/core/tonight_partners_headline.dart';
import 'package:translations/translations.dart';

class GeneratedCode extends StatelessWidget {
  const GeneratedCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InviteSelectorCubit, InviteSelectorState>(
      builder: (context, state) {
        return state.accessCode.fold(
          () => const SizedBox(),
          (code) => Column(
            children: [
              AutoSizeText(
                S().oneTimeAccessCode,
                maxLines: 1,
                style: context.headlineSmall,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TonightPartnersHeadline(text: code),
                  const SizedBox(width: 20),
                  IconButton(
                    onPressed: () {
                      Clipboard.setData(ClipboardData(text: code));
                      context.showSnackbarMessage(S().copiedToClipboard);
                    },
                    icon: const FaIcon(FontAwesomeIcons.copy),
                  ),
                  IconButton(
                    onPressed: () => Share.share(code),
                    icon: const FaIcon(FontAwesomeIcons.share),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
