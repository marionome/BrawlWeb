USE brawlweb;
create table if not exists brawler(
id_brawler int auto_increment PRIMARY KEY,
nome_brawler varchar(30) NOT NULL UNIQUE,
classe varchar(20) NOT NULL,
vida VARCHAR(50) NOT NULL,
dano varchar(50) NOT NULL,
descricao text
);
create table if not exists perfil(
id_perfil int auto_increment primary key,
id_brawler int,
perfil_dir varchar(255) not null,
foreign key (id_brawler) references brawler(id_brawler)
);
create table if not exists trio(
id_trio int auto_increment primary key,
nome_trio varchar(100) not null
);
create table if not exists raridade(
id_raridade int auto_increment primary key,
nome_raridade varchar(50) not null
);