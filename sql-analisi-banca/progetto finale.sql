
-- eta clienti
create temporary table banca.tmp_eta_clienti as 
select id_cliente,nome,cognome,timestampdiff(year,data_nascita,current_date()) as eta_cliente from banca.cliente;

select*from banca.tmp_eta_clienti ;

-- transazione uscita

create temporary table banca.tmp_transazione_uscita_2 as
select 
cont.id_cliente,count(*) as numero_transazioni_uscita
from banca.transazioni trs
inner join banca.conto cont on trs.id_conto = cont.id_conto
where trs.id_tipo_trans in ('3','4','5','6','7')
group by cont.id_cliente
order by id_cliente;

-- tabella
select*from banca.tmp_transazione_uscita_2;

-- transazione entrata

create temporary table banca.tmp_transazione_entrata_2 as
select
cont.id_cliente,count(*) as numero_transazioni_entrata
from banca.transazioni trs
inner join banca.conto cont on trs.id_conto = cont.id_conto
where trs.id_tipo_trans in ('0','1','2')
group by cont.id_cliente
order by id_cliente;


-- tabella 
select*from banca.tmp_transazione_entrata_2;

-- importo totale transato in uscita;

create temporary table banca.tmp_importo_uscita as
select
cont.id_cliente, sum(importo) as somma_totale_uscite

from banca.transazioni trs inner join banca.conto cont on trs.id_conto=cont.id_conto
where trs.id_tipo_trans in ('3','4','5','6','7')
group by 1;

select*from banca.tmp_importo_uscita order by 2;

-- importo totale transato in entrata,
create temporary table banca.tmp_importo_entrata as
select
cont.id_cliente, sum(importo) as somma_totale_entrate

from banca.transazioni trs inner join banca.conto cont on trs.id_conto=cont.id_conto
where trs.id_tipo_trans in ('0','1','2')
group by 1;

select*from banca.tmp_importo_entrata order by 2;

-- indicatori sui conti, numero totale di conti possedutti 

create temporary table banca.tmp_conteggio_conti_2 as
select

cont.id_cliente,cont.id_tipo_conto,count(*) as numero_conti
from banca.conto cont inner join banca.tipo_conto tipcont on cont.id_tipo_conto=tipcont.id_tipo_conto
group by 1,2;


select*from banca.tmp_conteggio_conti_2 order by id_cliente;

-- Numero di conti posseduti per tipologia (un indicatore per ogni tipo di conto)

create temporary table banca.tmp_numero_conti_tipologia AS
select
    id_cliente,
    SUM(CASE WHEN id_tipo_conto = 0 THEN numero_conti ELSE 0 END) AS conti_tipo_0,
    SUM(CASE WHEN id_tipo_conto = 1 THEN numero_conti ELSE 0 END) AS conti_tipo_1,
    SUM(CASE WHEN id_tipo_conto = 2 THEN numero_conti ELSE 0 END) AS conti_tipo_2,
    SUM(CASE WHEN id_tipo_conto = 3 THEN numero_conti ELSE 0 END) AS conti_tipo_3
from banca.conteggio_conti
group by id_cliente
order by id_cliente;

select*from banca.tmp_numero_conti_tipologia;

-- Numero di transazioni in uscita per tipologia di conto (un indicatore per tipo di conto)

create temporary table banca.transazioni_uscita_conto as 

select trs.id_conto,cont.id_cliente,cont.id_tipo_conto,trs.importo
from banca.transazioni trs inner join banca.conto cont on trs.id_conto=cont.id_conto
where trs.id_tipo_trans in ('3','4','5','6','7');

select
id_cliente,id_tipo_conto,count(*) as numero_transazioni_uscita
from banca.transazioni_uscita_conto
group by id_cliente,id_tipo_conto

order by 1;

-- Numero di transazioni in entrata per tipologia di conto (un indicatore per tipo di conto).


create temporary table banca.transazioni_entrata_conto as 

select trs.id_conto,cont.id_cliente,cont.id_tipo_conto,trs.importo
from banca.transazioni trs inner join banca.conto cont on trs.id_conto=cont.id_conto
where trs.id_tipo_trans in ('0','1','2');


select
id_cliente,id_tipo_conto,count(*) as numero_transazioni_entrata
from banca.transazioni_entrata_conto
group by id_cliente,id_tipo_conto

order by 1;

-- Importo transato in uscita per tipologia di conto (un indicatore per tipo di conto).



create temporary table banca.tmp_importo_transato_uscita_per_conto_1 as

select 

cont.id_cliente,sum(trs.importo) as Totale_importo,
SUM(CASE WHEN id_tipo_conto = 0 THEN importo ELSE 0 END) as conti_tipo_0,
SUM(CASE WHEN id_tipo_conto = 1 THEN importo ELSE 0 END) as conti_tipo_1,
SUM(CASE WHEN id_tipo_conto = 2 THEN importo ELSE 0 END) as conti_tipo_2,
SUM(CASE WHEN id_tipo_conto = 3 THEN importo ELSE 0 END) as conti_tipo_3
from banca.transazioni trs inner join banca.conto cont on trs.id_conto=cont.id_conto
where trs.id_tipo_trans in ('3','4','5','6','7')
group by cont.id_cliente
order by id_cliente;

-- Importo transato in entrata per tipologia di conto (un indicatore per tipo di conto).

create temporary table banca.tmp_importo_transato_entrata_per_conto_1 as

select 
cont.id_cliente,sum(trs.importo) as Totale_importo,
SUM(CASE WHEN id_tipo_conto = 0 THEN importo ELSE 0 END) as conti_tipo_0,
SUM(CASE WHEN id_tipo_conto = 1 THEN importo ELSE 0 END) as conti_tipo_1,
SUM(CASE WHEN id_tipo_conto = 2 THEN importo ELSE 0 END) as conti_tipo_2,
SUM(CASE WHEN id_tipo_conto = 3 THEN importo ELSE 0 END) as conti_tipo_3
from banca.transazioni trs inner join banca.conto cont on trs.id_conto=cont.id_conto
where trs.id_tipo_trans in ('0','1','2')
group by cont.id_cliente
order by id_cliente;

-- tabella finale 

CREATE TEMPORARY TABLE banca.tmp_dashboard_clienti as
SELECT 
  tab1.id_cliente,
  tab1.nome,
  tab1.cognome,
  tab1.eta_cliente,
  tab2.numero_transazioni_entrata,
  tab3.numero_transazioni_uscita,
  tab4.somma_totale_entrate,
  tab5.somma_totale_uscite,
  tab6.conti_tipo_0 AS numero_conti_tipo_0,
  tab6.conti_tipo_1 AS numero_conti_tipo_1,
  tab6.conti_tipo_2 AS numero_conti_tipo_2,
  tab6.conti_tipo_3 AS numero_conti_tipo_3,
  tab7.conti_tipo_0 AS importo_uscite_tipo_0,
  tab7.conti_tipo_1 AS importo_uscite_tipo_1,
  tab7.conti_tipo_2 AS importo_uscite_tipo_2,
  tab7.conti_tipo_3 AS importo_uscite_tipo_3,
  tab8.conti_tipo_0 AS importo_entrate_tipo_0,
  tab8.conti_tipo_1 AS importo_entrate_tipo_1,
  tab8.conti_tipo_2 AS importo_entrate_tipo_2,
  tab8.conti_tipo_3 AS importo_entrate_tipo_3
FROM banca.tmp_eta_clienti tab1
LEFT JOIN banca.tmp_transazione_entrata_2 tab2 ON tab1.id_cliente = tab2.id_cliente
LEFT JOIN banca.tmp_transazione_uscita_2 tab3 ON tab1.id_cliente = tab3.id_cliente
LEFT JOIN banca.tmp_importo_entrata tab4 ON tab1.id_cliente = tab4.id_cliente
LEFT JOIN banca.tmp_importo_uscita tab5 ON tab1.id_cliente = tab5.id_cliente
LEFT JOIN banca.tmp_numero_conti_tipologia tab6 ON tab1.id_cliente = tab6.id_cliente
LEFT JOIN banca.tmp_importo_transato_uscita_per_conto_1 tab7 ON tab1.id_cliente = tab7.id_cliente
LEFT JOIN banca.tmp_importo_transato_entrata_per_conto_1 tab8 ON tab1.id_cliente= tab8.id_cliente
ORDER BY tab1.id_cliente;

-- tabella
select*from banca.tmp_dashboard_clienti;

