import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_application_2/styles/font_style.dart';
import '/models/resume_model.dart';

part 'portfolio_app_event.dart';
part 'portfolio_app_state.dart';

class PortfolioAppBloc extends Bloc<PortfolioAppEvent, PortfolioAppState> {
  PortfolioAppBloc() : super(PortfolioAppInitial()) {
    on<LoadResume>(_onLoadResume);
  }

  Future<void> _onLoadResume(
    LoadResume event,
    Emitter<PortfolioAppState> emit,
  ) async {
    emit(ResumeState(resume: resume));
    kPrint("__LoadResume...");
  }
}
