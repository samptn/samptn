part of 'portfolio_app_bloc.dart';

sealed class PortfolioAppEvent extends Equatable {
  const PortfolioAppEvent();

  @override
  List<Object> get props => [];
}


final class LoadResume extends PortfolioAppEvent{
  
}