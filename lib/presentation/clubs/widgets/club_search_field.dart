import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/clubs/club_filters/club_filters_cubit.dart';
import 'package:raver_translations/raver_translations.dart';

class ClubSearchField extends StatefulWidget {
  const ClubSearchField({Key? key}) : super(key: key);

  @override
  _ClubSearchFieldState createState() => _ClubSearchFieldState();
}

class _ClubSearchFieldState extends State<ClubSearchField> {
  late TextEditingController textController;

  @override
  void initState() {
    textController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final filtersCubit = context.read<ClubFiltersCubit>();

    return TextField(
      controller: textController,
      onSubmitted: (value) => filtersCubit.searchFieldSubmitted(value),
      onChanged: (_) {
        setState(() {});
      },
      decoration: InputDecoration(
        hintText: S().startSearching,
        prefixIcon: const Icon(Icons.search),
        suffixIcon: textController.text.isNotEmpty
            ? InkWell(
                onTap: () {
                  setState(() {
                    textController.clear();
                  });

                  filtersCubit.searchFieldSubmitted('');
                },
                child: const Icon(Icons.clear),
              )
            : null,
      ),
    );
  }
}
