insert into fatture (tipologia,importo,iva,idcliente,datafattura,numerofornitore) values ('A',657, 20,1,'2022/03/26',125384);
select * from fatture  inner join clienti  on fatture.idcliente=clienti.numerocliente;
select count(clienti) from clienti where nome ='marco' ;
insert into clienti (nome,cognome,residenza ,datanascita) values ('mirco','giorgini','calabria','1982/03/26');
insert into prodotti (descrizione,inproduzione,incommercio,dataattivazione ,datadisattivazione) values ('bellissimo',true,false,'2017/03/26','2017/08/26');

select nome , cognome from clienti where EXTRACT('year' from datanascita) = 1982;
select count (fatture) from fatture where iva=20;
select datafattura,  sum(importo) from fatture group by datafattura;
select * from prodotti where EXTRACT('year' from dataattivazione) = 2017 and (inproduzione= true or incommercio=true);
select count(fatture),EXTRACT('year' from datafattura) from fatture where iva=20 group by EXTRACT('year' from datafattura);
select EXTRACT('year' from datafattura) from fatture where  tipologia='A' group by datafattura having count(fatture)>2;
select numerofattura, importo, iva, datafattura  from fatture inner join fornitori on fornitori.numerofornitore=fatture.numerofornitore;