import 'package:common/extensions/color_extensions.dart';
import 'package:common/extensions/typography_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/clubs/club_list/clubs_bloc.dart';
import 'package:translations/translations.dart';

class ClubSearchField extends StatelessWidget {
  const ClubSearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClubsBloc, ClubsState>(
      builder: (context, state) {
        return Column(
          children: [
            TextField(
              controller: TextEditingController(
                text: state.clubFilters.phraseFilter.phrase,
              ),
              onSubmitted: (value) => context
                  .read<ClubsBloc>()
                  .add(ClubsEvent.phraseFilterApplied(value)),
              decoration: InputDecoration(
                hintMaxLines: 1,
                hintStyle:
                    context.titleSmall.copyWith(color: context.hintColor),
                hintText: S().startSearching,
                prefixIcon: const Icon(Icons.search, size: 22),
                suffixIcon: state.clubFilters.phraseFilter.phrase.isEmpty
                    ? null
                    : InkWell(
                        onTap: () => context
                            .read<ClubsBloc>()
                            .add(const ClubsEvent.phraseFilterApplied('')),
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
