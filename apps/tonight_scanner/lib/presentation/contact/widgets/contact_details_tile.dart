import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:raver_common/raver_common.dart';

class ContactDetailsTile extends StatelessWidget {
  final String contactType;
  final String contactDetail;
  final Widget trailingIcon;
  final VoidCallback onTap;

  const ContactDetailsTile({
    required this.contactType,
    required this.contactDetail,
    required this.trailingIcon,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
      title: AutoSizeText(
        contactType,
        maxLines: 1,
        style: context.headline6,
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: AutoSizeText(
          contactDetail,
          maxLines: 1,
          style: context.subtitle1.copyWith(color: context.secondaryColor),
        ),
      ),
      trailing: trailingIcon,
      onTap: onTap,
    );
  }
}
