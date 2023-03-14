import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/clubs/club_filters/club_filters_cubit.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';
import 'package:translations/translations.dart';

class ClubFiltersCurrency extends StatelessWidget {
  final List<String> currencies;

  const ClubFiltersCurrency({
    required this.currencies,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: TonightHeadline(
            text: S().currency,
            isSmallerVersion: true,
          ),
        ),
        const SizedBox(height: 20),
        BlocBuilder<ClubFiltersCubit, ClubFiltersState>(
          buildWhen: (previous, current) =>
              previous.filters.currencyFilter.currency !=
              current.filters.currencyFilter.currency,
          builder: (context, state) {
            final currentValue = state.filters.currencyFilter.currency;
            return DropdownButtonFormField<String>(
              value: currentValue.isNotEmpty ? currentValue : null,
              decoration: InputDecoration(labelText: S().select),
              items: currencies.map((value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(
                    value.isEmpty ? S().anyCurrency : value.toUpperCase(),
                  ),
                );
              }).toList(),
              onChanged: (value) =>
                  context.read<ClubFiltersCubit>().changeCurrency(value!),
            );
          },
        ),
      ],
    );
  }
}
