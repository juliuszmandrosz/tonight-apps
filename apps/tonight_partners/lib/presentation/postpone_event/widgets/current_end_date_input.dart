import 'package:common/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formz/formz.dart';
import 'package:tonight_partners/application/add_event/form_inputs/end_date_time.dart';
import 'package:tonight_partners/application/postpone_event/postpone_event_cubit.dart';
import 'package:tonight_partners/presentation/utils/get_date_time_from_user.dart';
import 'package:translations/raver_translations.dart';

class CurrentEndDateInput extends StatelessWidget {
  const CurrentEndDateInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostponeEventCubit, PostponeEventState>(
      buildWhen: (previous, current) =>
          previous.endDateTime != current.endDateTime ||
          previous.startDateTime != current.startDateTime ||
          previous.postponeEventStatus != current.postponeEventStatus,
      builder: (context, state) {
        return TextField(
          readOnly: true,
          controller: TextEditingController(
            text: state.endDateTime.value != null
                ? context.formatDateTimeToLocaleYMDHM(
                    state.endDateTime.value!,
                  )
                : '',
          ),
          keyboardType: TextInputType.datetime,
          decoration: InputDecoration(
            labelText: S().endDate,
            errorText: _getEndDateTimeErrorMessage(state),
            suffixIcon: IconButton(
              onPressed: () async {
                final dateTime = await getDateTimeFromUser(
                  context,
                  initialDate: state.startDateTime.value,
                );
                if (context.mounted) {
                  context
                      .read<PostponeEventCubit>()
                      .endDateTimeChanged(dateTime);
                }
              },
              icon: const Padding(
                padding: EdgeInsets.only(right: 8),
                child: FaIcon(FontAwesomeIcons.calendar),
              ),
            ),
          ),
        );
      },
    );
  }

  String? _getEndDateTimeErrorMessage(PostponeEventState state) {
    if (state.endDateTime.valid ||
        state.postponeEventStatus != FormzStatus.invalid) {
      return null;
    }

    return endDateTimeErrorMessages[state.endDateTime.error];
  }
}
