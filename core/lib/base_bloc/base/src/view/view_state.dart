import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

/// Base class for states.
@immutable
abstract class ViewState extends Equatable {
  const ViewState();

  @override
  List<Object> get props => [];
}

/// The initial view state.
class Initial extends ViewState {
  const Initial();

  @override
  String toString() => 'Initial';
}

/// State indicating that data is being loaded.
class Loading extends ViewState {
  const Loading();

  @override
  String toString() => 'Loading';
}

/// State indicating that data is being refreshed. It can occur only after
/// initial loading ends with [Success] or [Empty] result. It may contain
/// the data that has already been loaded.
class Refreshing<T> extends ViewState {
  final T data;

  const Refreshing(this.data);

  @override
  List<Object> get props => [data];

  @override
  String toString() => 'Refreshing: $data';
}

/// State indicating that data was loaded successfully, but was null or empty.
class Empty extends ViewState {
  const Empty();

  @override
  String toString() => 'Empty';
}

/// State indicating that data was loaded successfully and is not null nor empty.
/// [T] - list element type.
class Success<T> extends ViewState {
  final T data;

  const Success(this.data) : assert(data != null);

  @override
  List<Object> get props => [data];

  @override
  String toString() => 'Success: $data';
}

/// State indicating that loading or refreshing has failed. It contains an
/// exact [error] that has occurred.
class Failure extends ViewState {
  final dynamic error;

  const Failure(this.error) : assert(error != null);

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'Failure: $error';
}

enum ViewStateErrorType {
  defaultError,
  networkTimeOutError,
  unauthorizedError
}

class ViewStateError {
  ViewStateErrorType _errorType;
  String message;
  String errorMessage;

  ViewStateError(this._errorType, {this.message, this.errorMessage}) {
    _errorType ??= ViewStateErrorType.defaultError;
    message ??= errorMessage;
  }

  ViewStateErrorType get errorType => _errorType;

  get isDefaultError => _errorType == ViewStateErrorType.defaultError;
  get isNetworkTimeOut => _errorType == ViewStateErrorType.networkTimeOutError;
  get isUnauthorized => _errorType == ViewStateErrorType.unauthorizedError;

  @override
  String toString() {
    return 'ViewStateError{errorType: $_errorType, message: $message, errorMessage: $errorMessage}';
  }
}