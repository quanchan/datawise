create table
  if not exists webpage (
    id serial primary key,
    webpage varchar(255) not null,
    entity_meta_table varchar(255) not null,
    constraint fk_entity_meta_table foreign key (entity_meta_table) references entity_meta (table_name) on delete cascade
  );

-- entity_meta
insert into
  entity_meta (
    display_name,
    description,
    table_name,
    standalone,
    custom
  )
values
  ('Webpage', '', 'webpage', true, false);

-- column_meta
insert into
  column_meta (
    display_name,
    description,
    example,
    column_name,
    data_type,
    gen_opts_name,
    entity_meta_table
  )
values
  (
    'Webpage',
    'Popular website',
    'www.example.com',
    'webpage',
    'varchar.255',
    'entityVarchar',
    'webpage'
  );

INSERT INTO
  webpage (webpage, entity_meta_table)
VALUES
  ('example.com', 'webpage'),
  ('google.com', 'webpage'),
  ('facebook.com', 'webpage'),
  ('twitter.com', 'webpage'),
  ('youtube.com', 'webpage'),
  ('instagram.com', 'webpage'),
  ('linkedin.com', 'webpage'),
  ('pinterest.com', 'webpage'),
  ('reddit.com', 'webpage'),
  ('amazon.com', 'webpage'),
  ('ebay.com', 'webpage'),
  ('wikipedia.org', 'webpage'),
  ('stackoverflow.com', 'webpage'),
  ('github.com', 'webpage'),
  ('cnn.com', 'webpage'),
  ('bbc.com', 'webpage'),
  ('nytimes.com', 'webpage'),
  ('washingtonpost.com', 'webpage'),
  ('forbes.com', 'webpage'),
  ('apple.com', 'webpage'),
  ('microsoft.com', 'webpage'),
  ('netflix.com', 'webpage'),
  ('hulu.com', 'webpage'),
  ('spotify.com', 'webpage'),
  ('amazonaws.com', 'webpage'),
  ('adobe.com', 'webpage'),
  ('wordpress.com', 'webpage'),
  ('tumblr.com', 'webpage'),
  ('imgur.com', 'webpage'),
  ('flickr.com', 'webpage'),
  ('dropbox.com', 'webpage'),
  ('slack.com', 'webpage'),
  ('zoom.us', 'webpage'),
  ('salesforce.com', 'webpage'),
  ('oracle.com', 'webpage'),
  ('craigslist.org', 'webpage'),
  ('yelp.com', 'webpage'),
  ('quora.com', 'webpage'),
  ('stackexchange.com', 'webpage'),
  ('github.io', 'webpage'),
  ('vimeo.com', 'webpage'),
  ('buzzfeed.com', 'webpage'),
  ('espn.com', 'webpage'),
  ('cnet.com', 'webpage'),
  ('nationalgeographic.com', 'webpage'),
  ('weather.com', 'webpage'),
  ('npr.org', 'webpage'),
  ('huffpost.com', 'webpage'),
  ('pbs.org', 'webpage'),
  ('nike.com', 'webpage'),
  ('walmart.com', 'webpage'),
  ('target.com', 'webpage'),
  ('bestbuy.com', 'webpage'),
  ('wired.com', 'webpage'),
  ('techcrunch.com', 'webpage'),
  ('businessinsider.com', 'webpage'),
  ('time.com', 'webpage'),
  ('foxnews.com', 'webpage'),
  ('bloomberg.com', 'webpage'),
  ('reuters.com', 'webpage'),
  ('bbc.co.uk', 'webpage'),
  ('aljazeera.com', 'webpage'),
  ('nasa.gov', 'webpage'),
  ('ea.com', 'webpage'),
  ('rockstargames.com', 'webpage'),
  ('nintendo.com', 'webpage'),
  ('xbox.com', 'webpage'),
  ('playstation.com', 'webpage'),
  ('ubisoft.com', 'webpage');