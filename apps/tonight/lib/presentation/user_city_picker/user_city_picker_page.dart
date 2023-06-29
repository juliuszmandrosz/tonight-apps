import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/onboarding_user_details/onboarding_user_details_cubit.dart';
import 'package:tonight/application/user_city_picker/user_city_picker_bloc.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:tonight/presentation/user_city_picker/widgets/user_city_picker_prediction_list.dart';
import 'package:tonight/presentation/user_city_picker/widgets/user_city_picker_text_field.dart';
import 'package:translations/translations.dart';

class UserCityPickerPage extends StatelessWidget {
  final BuildContext blocContext;

  const UserCityPickerPage({required this.blocContext, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TonightAppBar(title: S().city),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => getIt<UserCityPickerBloc>(),
          ),
          BlocProvider.value(
            value: blocContext.read<OnboardingUserDetailsCubit>(),
          ),
        ],
        child: BlocListener<UserCityPickerBloc, UserCityPickerState>(
          listenWhen: (p, c) => p.selectedPlace != c.selectedPlace,
          listener: (context, state) {
            state.selectedPlace.fold(
              () {},
              (place) {
                context.popRoute();
                context.read<OnboardingUserDetailsCubit>().cityChanged(place);
              },
            );
          },
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  UserCityPickerTextField(),
                  SizedBox(height: 20),
                  UserCityPickerPredictionList(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
