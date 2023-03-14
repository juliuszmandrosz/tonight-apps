import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/clubs/club_filters/club_filters_cubit.dart';
import 'package:translations/translations.dart';

class ClubSearchField extends StatelessWidget {
  const ClubSearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClubFiltersCubit, ClubFiltersState>(
      builder: (context, state) {
        final clubFiltersCubit = context.read<ClubFiltersCubit>();
        return Column(
          children: [
            TextField(
              controller: TextEditingController(
                text: state.filters.phraseFilter.phrase,
              ),
              onSubmitted: (value) => clubFiltersCubit.submitSearchField(value),
              decoration: InputDecoration(
                hintMaxLines: 1,
                hintText: S().startSearching,
                prefixIcon: const Icon(Icons.search),
                suffixIcon: state.filters.phraseFilter.phrase.isEmpty
                    ? null
                    : InkWell(
                        onTap: () => clubFiltersCubit.submitSearchField(''),
                        child: const Icon(Icons.clear),
                      ),
              ),
            ),
          ],
        );
      },
    );
  }
}
