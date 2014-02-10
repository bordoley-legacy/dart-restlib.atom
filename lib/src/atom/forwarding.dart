part of restlib.atom;

abstract class ForwardingAtomEntry<T> implements Forwarder, AtomEntry<T> {  
  Iterable<AtomPerson> get authors =>
      delegate.authors;
  
  Iterable <AtomCategory> get categories =>
      delegate.categories;
  
  Option<T> get content =>
      delegate.content;
  
  Iterable<AtomPerson> get contributors =>
      delegate.contributors;
  
  IRI get id =>
      delegate.id;
  
  Iterable<AtomLink> get links =>
      delegate.links;
  
  Option<DateTime> get published =>
      delegate.published;
  
  Option<String> get rights =>
      delegate.rights;
  
  Option<AtomFeed> get source =>
      delegate.source;
  
  Option<String> get summary =>
      delegate.summary;
  
  String get title =>
      delegate.title;
  
  DateTime get updated =>
      delegate.updated;
}

abstract class ForwardingAtomFeed<T extends AtomEntry> implements Forwarder, AtomFeed<T> {  
  Iterable<AtomPerson> get authors =>
      delegate.authors;
  
  Iterable<AtomCategory> get categories =>
      delegate.categories;
  
  Iterable<AtomPerson> get contributors =>
      delegate.contributors;
  
  Iterable<T> get entries =>
      delegate.entries;
  
  Option<AtomGenerator> get generator =>
      delegate.generator;
  
  Option<IRI> get icon =>
      delegate.icon;
  
  IRI get id =>
      delegate.id;
  
  Iterable<AtomLink> get links =>
      delegate.links;
  
  Option<IRI> get logo =>
      delegate.logo;
  
  Option<String> get rights =>
      delegate.rights;
  
  Option<String> get subtitle =>
      delegate.subtitle;
  
  String get title =>
      delegate.title;
  
  DateTime get updated =>
      delegate.updated;
}

abstract class ForwardingAtomGenerator implements Forwarder, AtomGenerator {
  String get content =>
      delegate.content;
  
  Option<IRI> get uri =>
      delegate.uri;
  
  Option<String> get version =>
      delegate.version;
}

abstract class ForwardingAtomPerson implements Forwarder, AtomPerson {
  Option/*<EmailAddress>*/ get email =>
      delegate.email;
  
  String get name =>
      delegate.name;
  Option<IRI> get uri =>
      delegate.uri;
}

abstract class ForwardingAtomCategory implements Forwarder, AtomCategory {
  Option<String> get label =>
      delegate.label;
  
  Option<IRI> get scheme =>
      delegate.scheme;
  
  String get term =>
      delegate.term;
}

abstract class ForwardingAtomLink implements Forwarder, AtomLink {
  IRI get href =>
      delegate.href;
  
  Option<Language> get hrefLanguage =>
      delegate.hrefLanguage;
  
  Option<int> get length =>
      delegate.length;
  
  Option<String> get rel =>
      delegate.rel;
  
  Option<String> get title =>
      delegate.title;
  
  Option<MediaRange> get type =>
      delegate.type;
}