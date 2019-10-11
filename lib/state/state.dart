import 'package:rate_it/music/state/reducer.dart';

enum Actions { Increment }

int counterReducer(int state, dynamic action) {
  if (action == Actions.Increment) {
    return state + 1;
  }

  return state;
}

class AppState {
  MediaListState mediaListState;
  int counterState;
  AppState(this.mediaListState, this.counterState);

  AppState.initialState() {
   this.mediaListState = MediaListState(media: [], isFetching: false, selectedItem: null);
   this.counterState = 0;
  }
}

AppState appStateReducer(AppState state, action) => new AppState(mediaListReducer(state.mediaListState, action), counterReducer(state.counterState, action));

