import 'package:common/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formz/formz.dart';
import 'package:tonight_partners/application/add_event/form_inputs/start_date_time.dart';
import 'package:tonight_partners/application/postpone_event/postpone_event_cubit.dart';
import 'package:tonight_partners/presentation/utils/get_date_time_from_user.dart';
import 'package:translations/translations.dart';

class CurrentStartDateInput extends StatelessWidget {
  const CurrentStartDateInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostponeEventCubit, PostponeEventState>(
      buildWhen: (previous, current) =>
          previous.startDateTime != current.startDateTime ||
          previous.postponeEventStatus != current.postponeEventStatus,
      builder: (context, state) {
        return TextField(
          readOnly: true,
          controller: TextEditingController(
            text: state.startDateTime.value != null
                ? context.formatDateTimeToLocaleYMDHM(
                    state.startDateTime.value!,
                  )
                : '',
          ),
          keyboardType: TextInputType.datetime,
          decoration: InputDecoration(
            labelText: S().startDate,
            errorText: _getStartDateTimeErrorMessage(state),
            suffixIcon: IconButton(
              onPressed: () async {
                final dateTime = await getDateTimeFromUser(
                  context,
                  initialDate: state.startDateTime.value,
                );
                if (context.mounted) {
                  context
                      .read<PostponeEventCubit>()
                      .startDateTimeChanged(dateTime);
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

  String? _getStartDateTimeErrorMessage(PostponeEventState state) {
    if (state.startDateTime.valid ||
        state.postponeEventStatus != FormzStatus.invalid) {
      return null;
    }

    return startDateTimeErrorMessages[state.startDateTime.error];
  }
}
