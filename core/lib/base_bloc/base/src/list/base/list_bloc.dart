
import 'package:core/base_bloc/base/src/list/base/list_repository.dart';
import 'package:core/base_bloc/base/src/list/filter/filter_list_bloc.dart';
import 'package:core/base_bloc/base/src/list/filter/filter_list_repository.dart';

/// A basic list BLoC with no filtering or pagination. Thus it should be used
/// with a reasonable small amount of data.
///
/// Designed to collaborate with [ViewStateBuilder] for displaying data.
///
/// Call [loadElements] to perform initial data fetch.
/// Call [refreshElements] to perform a refresh.
///
/// [T] - type of list items.
class ListBloc<T> extends FilterListBloc<T, void> {
  ListBloc(ListRepository<T> listRepository)
      : assert(listRepository != null),
        super(_FilterRepositoryAdapter(listRepository));
}

class _FilterRepositoryAdapter<T> extends FilterListRepository<T, void> {
  final ListRepository<T> listRepository;

  _FilterRepositoryAdapter(this.listRepository);

  @override
  Future<List<T>> getAll() => listRepository.getAll();

  @override
  Future<List<T>> getBy(void filter) => listRepository.getAll();
}
