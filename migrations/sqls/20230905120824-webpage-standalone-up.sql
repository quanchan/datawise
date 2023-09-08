create table if not exists webpage (
    id serial primary key,
    webpage varchar(255) not null,
    entity_meta_id int not null,
    constraint fk_webpage_entity_meta foreign key (entity_meta_id) references entity_meta(id)
);

-- entity_meta
insert into entity_meta 
    (id, display_name, description, table_name, standalone, custom)
values 
    (7, 'Webpage', '', 'webpage', true, false);

-- column_meta
insert into column_meta 
    (display_name, description, example, column_name, data_type, entity_meta_id)
values 
    ('Webpage', 'Popular website', 'www.example.com', 'webpage', 'varchar.255', 7);

INSERT INTO webpage (webpage, entity_meta_id) VALUES
    ('example.com', 7),
    ('google.com', 7),
    ('facebook.com', 7),
    ('twitter.com', 7),
    ('youtube.com', 7),
    ('instagram.com', 7),
    ('linkedin.com', 7),
    ('pinterest.com', 7),
    ('reddit.com', 7),
    ('amazon.com', 7),
    ('ebay.com', 7),
    ('wikipedia.org', 7),
    ('stackoverflow.com', 7),
    ('github.com', 7),
    ('cnn.com', 7),
    ('bbc.com', 7),
    ('nytimes.com', 7),
    ('washingtonpost.com', 7),
    ('forbes.com', 7),
    ('apple.com', 7),
    ('microsoft.com', 7),
    ('netflix.com', 7),
    ('hulu.com', 7),
    ('spotify.com', 7),
    ('amazonaws.com', 7),
    ('adobe.com', 7),
    ('wordpress.com', 7),
    ('tumblr.com', 7),
    ('imgur.com', 7),
    ('flickr.com', 7),
    ('dropbox.com', 7),
    ('slack.com', 7),
    ('zoom.us', 7),
    ('salesforce.com', 7),
    ('oracle.com', 7),
    ('craigslist.org', 7),
    ('yelp.com', 7),
    ('quora.com', 7),
    ('stackexchange.com', 7),
    ('github.io', 7),
    ('vimeo.com', 7),
    ('buzzfeed.com', 7),
    ('espn.com', 7),
    ('cnet.com', 7),
    ('nationalgeographic.com', 7),
    ('weather.com', 7),
    ('npr.org', 7),
    ('huffpost.com', 7),
    ('pbs.org', 7),
    ('nike.com', 7),
    ('walmart.com', 7),
    ('target.com', 7),
    ('bestbuy.com', 7),
    ('wired.com', 7),
    ('techcrunch.com', 7),
    ('businessinsider.com', 7),
    ('time.com', 7),
    ('foxnews.com', 7),
    ('bloomberg.com', 7),
    ('reuters.com', 7),
    ('bbc.co.uk', 7),
    ('aljazeera.com', 7),
    ('nasa.gov', 7),
    ('ea.com', 7),
    ('rockstargames.com', 7),
    ('nintendo.com', 7),
    ('xbox.com', 7),
    ('playstation.com', 7),
    ('ubisoft.com', 7);
