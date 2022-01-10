part of 'playlist_cubit.dart';

@immutable
abstract class PlaylistState extends Equatable{
  const PlaylistState();

  @override
  List<Object> get props => [];
}

class PlaylistEmpty extends PlaylistState {
  @override
  List<Object> get props => [];
}

// class PlaylistLoading extends PlaylistState {
//   final List<> oldPlayList;
//   final bool isFirstFetch;
//
//   const PlaylistLoading(this.oldPlayList, {this.isFirstFetch = false});
//
//   @override
//   List<Object> get props => [oldPlayList];
// }
//
// class PlaylistLoaded extends PlaylistState {
//   final List<> playList;
//
//   const PlaylistLoaded(this.playList);
//
//   @override
//   List<Object> get props => [playList];
// }
//
// class PlaylistError extends PlaylistState {
//   final String message;
//
//   const PlaylistError({required this.message});
//
//   @override
//   List<Object> get props => [message];
// }
