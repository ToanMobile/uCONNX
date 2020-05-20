import 'package:core/base_bloc/base/src/list/paged/page.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

/// Base class for paged list events.
@immutable
abstract class PagedListEvent extends Equatable {
  const PagedListEvent();
}

/// Event indicating that a page needs to be loaded.
///
/// [F] - the filter type.
class LoadPage<F> extends PagedListEvent {
  final Page page;
  final F filter;

  const LoadPage(this.page, {this.filter}) : assert(page != null);

  @override
  List<Object> get props => [page, filter];

  @override
  String toString() => '$runtimeType: $page ${filter ?? ''}';
}
