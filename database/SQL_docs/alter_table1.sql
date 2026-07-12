use brawlweb;
alter table brawler add column(
ordem_raridade int not null,
dt_lancamento date not null
);
alter table perfil add column(
ordem_perfil int not null
);