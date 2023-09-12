abstract class MoviesEvent{
  const MoviesEvent();
}

class GetNowPlayingEvent extends MoviesEvent{}
class GetPopularEvent extends MoviesEvent{}
class GetTopRatedEvent extends MoviesEvent{}