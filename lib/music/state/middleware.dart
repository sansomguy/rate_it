import 'package:rate_it/music/logic/mediaRepository.dart';
import 'package:rate_it/music/state/actions.dart';
import 'package:redux/redux.dart';

mediaFetcherMiddleware<T>(Store<T> store, dynamic action, NextDispatcher next) {
  if(action is FetchItemsAction) {
    MediaRepository()
        .fetch()
        .then((value) => store.dispatch(ReceivedItemsAction(value)))
        .catchError((error) => store.dispatch(ErrorFetchingItemsAction()));
  }

  next(action);
}