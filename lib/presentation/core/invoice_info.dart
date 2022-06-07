import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:raver_common/raver_common.dart';

class InvoiceInfo extends StatelessWidget {
  const InvoiceInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      // TODO - add translation
      'Faktura zostanie wysłana na Twój adres email',
      maxLines: 1,
      style: context.bodyText2.copyWith(color: context.secondaryColor),
      textAlign: TextAlign.center,
    );
  }
}
