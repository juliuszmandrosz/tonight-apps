import 'package:common/presentation/search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/select_club/select_club_cubit.dart';

class SelectClubSearchField extends StatelessWidget {
  const SelectClubSearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SearchField(
      onSubmit: (phrase) async =>
          await context.read<SelectClubCubit>().filterClubs(phrase),
    );
  }
}
