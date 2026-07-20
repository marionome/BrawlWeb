use brawlweb;
select b.nome_brawler, b.classe, b.vida, b.dano, b.descricao, t.nome_trio, r.nome_raridade,p.perfil_dir
from brawler b
join perfil p on p.id_brawler = b.id_brawler
join raridade r on r.id_raridade = b.id_raridade
join trio t on t.id_trio = b.id_trio
where nome_brawler = %s;

select * from brawler;
select * from perfil;
select * from raridade;
select * from trio;