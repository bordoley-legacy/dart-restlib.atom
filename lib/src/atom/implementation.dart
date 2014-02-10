part of restlib.atom;

class _AtomEntry<T> implements AtomEntry<T> {
  final Iterable<AtomPerson> authors;
  final Iterable <AtomCategory> categories;
  final Option<T> content;
  final Iterable<AtomPerson> contributors;
  final IRI id;
  final Iterable<AtomLink> links;
  final Option<DateTime> published;
  final Option<String> rights;
  final Option<AtomFeed> source;
  final Option<String> summary;
  final String title;
  final DateTime updated;
  
  _AtomEntry(
      this.authors, this.categories, this.content, 
          this.contributors, this.id, this.links, 
              this.published, this.rights, this.source,
              this.summary, this.title, this.updated);
}

class _AtomFeed<T extends AtomEntry> implements AtomFeed<T> {
  final Iterable<AtomPerson> authors;
  final Iterable<AtomCategory> categories;
  final Iterable<AtomPerson> contributors;
  final Iterable<T> entries;
  final Option<AtomGenerator> generator;
  final Option<IRI> icon;
  final IRI id;
  final Iterable<AtomLink> links;
  final Option<IRI> logo;
  final Option<String> rights;
  final Option<String> subtitle;
  final String title;
  final DateTime updated;
  
  _AtomFeed(this.authors, this.categories, this.contributors,
      this.entries, this.generator, this.icon,
      this.id, this.links, this.logo,
      this.rights, this.subtitle, this.title,
      this.updated);
}

class _AtomGenerator implements AtomGenerator {
  final String content;
  final Option<IRI> uri;
  final Option<String> version;
  
  _AtomGenerator(this.content, this.uri, this.version);
}

class _AtomPerson implements AtomPerson {
  final Option/*<EmailAddress>*/ email;
  final String name;
  final Option<IRI> uri;
  
  _AtomPerson(this.email, this.name, this.uri);
}

class _AtomCategory implements AtomCategory {
  final Option<String> label;
  final Option<IRI> scheme;
  final String term;
  
  _AtomCategory(this.label, this.scheme, this.term);
}

class _AtomLink implements AtomLink {
  final IRI href;
  final Option<Language> hrefLanguage;
  final Option<int> length;
  final Option<String> rel;
  final Option<String> title;
  final Option<MediaRange> type;
  
  _AtomLink(this.href, this.hrefLanguage, this.length,
      this.rel, this.title, this.type);
}