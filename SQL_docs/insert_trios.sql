use brawlweb;

/*insert into trio(nome_trio)
values("Andarilhos Místico"),("Artistas Mexicanos"),
("Hotel Nevado"),("Pântano dos Pombinhos"),
("Terra dos Doces"),("Bazar das Bizarrices");
select *  from trio;*/
/*insert into raridade(nome_raridade)
values("Inicial"),("Raro"),("Super-raro"),("Épico"),("Mítico"),("Lendário"),("Ultralendário");
select * from raridade;*/

/*
insert into brawler(nome_brawler,classe,vida,dano,descricao,id_trio,id_raridade,ordem_raridade,dt_lancamento)
values("El Primo","Tanque","13000","3040(4x760)","El Primo gosta de se exibir no ringue e nasceu para isso. Todo mundo delira quando ele entra em cena. Alguns de alegria, outros de dor mesmo...",2,2,5,"2017-06-15");
insert into brawler(nome_brawler,classe,vida,dano,descricao,id_trio,id_raridade,ordem_raridade,dt_lancamento)
values("Sandy","Controle","8200","1800","Nas raríssimas ocasiões em que não está dormindo, Sandy tenta ajudar Tara na loja. No entanto, o papo dos clientes dá um sono, e todo o trabalho fica para sua irmã...",1,6,4,"2019-09-18");
insert into brawler(nome_brawler,classe,vida,dano,descricao,id_trio,id_raridade,ordem_raridade,dt_lancamento)
values("Gale","Controle","8000","3600(6x600)","O trabalho do Gale é usar seu soprador de folhas para limpar os arredores do Hotel Nevado do Mister P. Não se assuste caso veja gente voando, pois ninguém disse que ele deveria parar quando os hóspedes chegassem...",3,4,14,"2019-09-18");
insert into brawler(nome_brawler,classe,vida,dano,descricao,id_trio,id_raridade,ordem_raridade,dt_lancamento)
values("Alli","Algoz","7800","2600","Alli é a acanhada mecânica do pântano dos Pombinhos. Ela adora colocar a mão na massa, seja consertando máquinas quebradas ou perseguindo obstinadamente outros Brawlers. Se estiver voltando para casa tarde da noite e ouvir um barulho estranho, é bem provável que seja a Alli tentando dar um oizinho.",4,5,4,"2025-07-03");
insert into brawler(nome_brawler,classe,vida,dano,descricao,id_trio,id_raridade,ordem_raridade,dt_lancamento)
values("Mandy","Atirador","6000","2800","Mandy usa um traje digno de rainha para trabalhar em sua loja de doces. Para a surpresa de muitos, ela não tem nada de doce e governa seu reino com mão de ferro",5,4,34,"2023-01-02");
insert into brawler(nome_brawler,classe,vida,dano,descricao,id_trio,id_raridade,ordem_raridade,dt_lancamento)
values("Gigi","Algoz","8200","1200","Gigi, uma marionete enfeitiçada que causa arrepios por onde passa, e nunca se separa da sua luva mágica. Você pode encontrá-la no Bazar das Bizarrices, dançando entre as estantes",6,5,37,"2026-12-04");
*/
insert into brawler(nome_brawler,classe,vida,dano,descricao,id_trio,id_raridade,ordem_raridade,dt_lancamento)
values("Amber","Controle","6800","16800(420x40)","",2,6,5,"2020-10-23");


insert into perfil(id_brawler,perfil_dir,ordem_perfil)
values(1,"perfil/elprimo_perfil.png",1),(2,"perfil/sandy_perfil.png",1),
(3,"perfil/gale_perfil.png",1),(4,"perfil/alli_perfil.png",1),
(5,"perfil/mandy_perfil.png",1),(6,"perfil/gigi_perfil.png",1);




insert into brawler(nome_brawler,classe,vida,dano,descricao,id_trio,id_raridade,ordem_raridade,dt_lancamento)
values("Sandy","Controle","8200","1800","",2,6,5,"2020-10-23");
select * from brawler order by dt_lancamento;
select * from brawler;
select * from brawler order by classe;
select * from perfil
