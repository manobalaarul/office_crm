import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../localization_bloc.dart';

String t(BuildContext context, String key) {
  final strings = context.watch<LocalizationBloc>().state.strings;
  return strings[key] ?? key;
}
