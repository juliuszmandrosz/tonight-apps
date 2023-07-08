import 'package:auth/auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

extension BlocX on BuildContext {
  AuthCubit get readAuthCubit => read<AuthCubit>();
}
