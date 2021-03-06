import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:mikack/models.dart';

class ComicEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class ComicLoadedEvent extends ComicEvent {
  final Comic comic;

  ComicLoadedEvent({@required this.comic});

  @override
  List<Object> get props => [comic];
}

class ComicFetchErrorEvent extends ComicEvent {
  @override
  List<Object> get props => [];
}

class ComicRetryEvent extends ComicEvent {
  @override
  List<Object> get props => [];
}

class ComicTabChangedEvent extends ComicEvent {
  final int index;

  ComicTabChangedEvent({@required this.index});

  @override
  List<Object> get props => [index];
}

class ComicRequestEvent extends ComicEvent {
  @override
  List<Object> get props => [];
}

class ComicReverseEvent extends ComicEvent {
  @override
  List<Object> get props => [];
}

class ComicFavoriteEvent extends ComicEvent {
  final bool isCancel;

  ComicFavoriteEvent({this.isCancel});

  @override
  List<Object> get props => [isCancel];
}

class ComicReadHistoriesUpdateEvent extends ComicEvent {
  @override
  List<Object> get props => [];
}

enum ComicReadingMarkType { readOne, readBefore, unreadOne }

class ComicReadingMarkUpdateEvent extends ComicEvent {
  final ComicReadingMarkType markType;
  final Chapter chapter;
  final List<Chapter> chapters;

  ComicReadingMarkUpdateEvent({
    @required this.markType,
    this.chapter,
    this.chapters,
  });

  @override
  List<Object> get props => [markType, chapter, chapters];
}

class ComicReadingMarkCleanRequestEvent extends ComicEvent {
  @override
  List<Object> get props => [];
}
