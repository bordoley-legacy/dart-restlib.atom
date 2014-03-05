library restlib.opensearch;

import "package:restlib_common/collections.dart";
import "package:restlib_core/data.dart";
import "package:restlib_core/net.dart";

abstract class OpenSearchDescription {
  String get shortName; // required non-empty
  String get description; // required non-empty
  Iterable<OpenSearchUrl> get url; // Must appear one or more times
  Iterable<EmailAddress> get contact;
  Iterable<String> get tags;
  Option<String> get longName;
  Iterable<OpenSearchImage> get image;
  Iterable<OpenSearchQuery> get query;
  Option<String> get developer;
  Option<String> get attribution;
  Option<OpenSearchSyndicationRight> get syndicationRight;
  Option<bool> get adultContent;
  Iterable<Language> get language;
  Option<Charset> get inputEncoding;
  Option<Charset> get outputEncoding;

}

abstract class OpenSearchUrl {
  OpenSearchURLTemplate get template;
  MediaRange get type;
  Iterable<String> getrel;
  Option<int> get indexOffset;
  Option<int> get pageOffset;
}

abstract class OpenSearchImage implements URI {
  Option<int> get height;
  Option<int> get width;
  Option<MediaRange> get type;
}

abstract class OpenSearchURLTemplate {

}

abstract class OpenSearchResponse {
  Option<int> get totalResults;
  Option<int> get startIndex;
  Option<int> get itemsPerPage;
  Iterable<OpenSearchQuery> get query;
}

abstract class OpenSearchQuery {
  String get role; // required non-empty
  String get title; //optional ie empty
  Option<int> get totalResults;
  String get searchTerms;
  Option<int> get count;
  Option<int> get startIndex;
  Option<int> get startPage;
  Option<Language> get language;
  Option<Charset> get inputEncoding;
  Option<Charset> get outputEncoding;
}

class OpenSearchSyndicationRight {
  static const OpenSearchSyndicationRight OPEN = const OpenSearchSyndicationRight._internal("open");
  static const OpenSearchSyndicationRight LIMITED = const OpenSearchSyndicationRight._internal("limited");
  static const OpenSearchSyndicationRight PRIVATE = const OpenSearchSyndicationRight._internal("private");
  static const OpenSearchSyndicationRight CLOSED = const OpenSearchSyndicationRight._internal("closed");

  final String _name;
  const OpenSearchSyndicationRight._internal(this._name);

  String toString() => _name;
}