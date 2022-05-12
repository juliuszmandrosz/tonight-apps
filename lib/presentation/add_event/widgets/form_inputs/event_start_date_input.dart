import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formz/formz.dart';
import 'package:raver_common/extensions/build_context_extensions.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_partners/application/add_event/form_inputs/start_date_time.dart';
import 'package:raver_partners/presentation/utils/get_date_time_from_user.dart';
import 'package:raver_translations/raver_translations.dart';

class EventStartDateInput extends StatelessWidget {
  const EventStartDateInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) =>
          previous.startDateTime != current.startDateTime ||
          previous.status != current.status,
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
                context.read<AddEventCubit>().startDateTimeChanged(dateTime);
              },
              icon: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: FaIcon(
                  FontAwesomeIcons.calendarAlt,
                  color: Theme.of(context).primaryColor,
                  size: 25,
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  String? _getStartDateTimeErrorMessage(AddEventState state) {
    if (state.startDateTime.valid || state.status != FormzStatus.invalid) {
      return null;
    }

    return startDateTimeErrorMessages[state.startDateTime.error];
  }
}
