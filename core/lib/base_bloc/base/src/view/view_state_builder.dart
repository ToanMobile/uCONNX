import 'package:bloc/bloc.dart';
import 'package:core/base_bloc/base/src/view/view_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Builder function for the the initial state.
typedef InitialBuilder = Widget Function(BuildContext context);

/// Builder function for the data loading state.
typedef LoadingBuilder = Widget Function(BuildContext context);

/// Builder function for a success state. The data was fetched and nonnull
/// element was returned.
typedef SuccessBuilder<T> = Widget Function(BuildContext context, T data);

/// Builder function for the data refreshing state. Can only occur after
/// [SuccessBuilder].
typedef RefreshingBuilder<T> = Widget Function(BuildContext context, T data);

/// Builder function for no result. The data was fetched
/// successfully, but a null element was returned.
typedef EmptyBuilder = Widget Function(BuildContext context);

/// Builder function for an error. It contains an [error] that has caused
/// which may allow a view to react differently on different errors.
typedef ErrorBuilder = Widget Function(
  BuildContext context,
  dynamic error,
);

/// [ViewStateBuilder] is responsible for building the UI based on the [ViewState].
/// It's a wrapper over the [BlocBuilder] widget so it accepts a [bloc] object and
/// a set of handy callbacks, which corresponds to each possible state:
/// [onReady] builder for the the initial state,
/// [onLoading] builder for the data loading state,
/// [onRefreshing] builder for the data refreshing state,
/// [onSuccess] builder for the data success state,
/// [onEmpty] builder for for no result state,
/// [onError] builder function for an error state.
///
/// [T] - the type of elements,
/// [B] - the type of bloc.
class ViewStateBuilder<T, B extends Bloc<dynamic, ViewState>>
    extends BlocBuilder<B, ViewState> {
  ViewStateBuilder({
    Key key,
    B bloc,
    InitialBuilder onReady,
    LoadingBuilder onLoading,
    RefreshingBuilder<T> onRefreshing,
    SuccessBuilder<T> onSuccess,
    EmptyBuilder onEmpty,
    ErrorBuilder onError,
    BlocBuilderCondition<ViewState> condition,
  }) : super(
          key: key,
          bloc: bloc,
          condition: condition,
          builder: (BuildContext context, ViewState state) {
            if (state is Initial) {
              return onReady?.call(context) ?? const SizedBox();
            } else if (state is Loading) {
              return onLoading?.call(context) ?? const SizedBox();
            } else if (state is Refreshing<T>) {
              return onRefreshing?.call(context, state.data) ??
                  const SizedBox();
            } else if (state is Success<T>) {
              return onSuccess?.call(context, state.data) ?? const SizedBox();
            } else if (state is Empty) {
              return onEmpty?.call(context) ?? const SizedBox();
            } else if (state is Failure) {
              return onError?.call(context, state.error) ?? const SizedBox();
            } else {
              return const SizedBox();
            }
          },
        );
}
