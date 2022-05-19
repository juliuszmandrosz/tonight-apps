import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formz/formz.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_partners/application/add_event/form_inputs/dj_channel_url.dart';
import 'package:raver_partners/presentation/config/themes/dark_theme/color_extensions.dart';

class EventDjChannelUrlInput extends HookWidget {
  const EventDjChannelUrlInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = useTextEditingController(
      text: context.read<AddEventCubit>().state.djChannelUrl.value,
    );

    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) =>
          previous.isDjChannelUrlEnabled != current.isDjChannelUrlEnabled ||
          previous.djChannelUrl != current.djChannelUrl ||
          previous.status != current.status,
      builder: (context, state) {
        if (!state.isDjChannelUrlEnabled) {
          _controller.text = '';
        }
        return IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      padding: EdgeInsets.zero,
                      icon: FaIcon(
                        eventSocialMedia[djChannel]!.icon,
                        size: 40,
                        color: state.isDjChannelUrlEnabled
                            ? context.primaryColor
                            : context.outlineColor,
                      ),
                      onPressed: () => context
                          .read<AddEventCubit>()
                          .toggleDjChannelUrlEnabledState(),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              Flexible(
                flex: 6,
                child: Column(
                  children: [
                    TextField(
                      enabled: state.isDjChannelUrlEnabled,
                      style: state.isDjChannelUrlEnabled
                          ? const TextStyle()
                          : const TextStyle().copyWith(
                              color: context.outlineColor,
                            ),
                      controller: _controller,
                      onChanged: (value) => context
                          .read<AddEventCubit>()
                          .djChannelUrlChanged(value),
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: eventSocialMedia[djChannel]!.label,
                        errorText: _getDjChannelUrlErrorMessage(state),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  String? _getDjChannelUrlErrorMessage(AddEventState state) {
    if (!state.isDjChannelUrlEnabled) return null;

    if (state.djChannelUrl.valid || state.status != FormzStatus.invalid) {
      return null;
    }

    return djChannelUrlErrorMessages[state.djChannelUrl.error];
  }
}
