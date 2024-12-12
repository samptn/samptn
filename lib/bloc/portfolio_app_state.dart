part of 'portfolio_app_bloc.dart';

sealed class PortfolioAppState extends Equatable {
  const PortfolioAppState();

  @override
  List<Object> get props => [];
}

final class PortfolioAppInitial extends PortfolioAppState {}

final class ResumeState extends PortfolioAppState {
  final Resume resume;

  const ResumeState({required this.resume});
}
