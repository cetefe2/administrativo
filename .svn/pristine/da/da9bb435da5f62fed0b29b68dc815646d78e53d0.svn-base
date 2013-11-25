


ALTER PROCEDURE BUSCA_TOTAIS_EMPRESAS
(@tipo  char(1),
 @data1 datetime,
 @data2 datetime,
 @rescindidos char(1))

AS

declare	@tce_cod int,
				@tce_datares datetime,
				@dias_rescisao int,
				@dias_mes int

create table #TCEs
(emp_cod 				int,
 emp_nome 			varchar(150),
 tce_cod				int,
 tipo 					char(1),
 tce_tipobolsa 	char(1),
 bolsa 					float,
 tce_datares		datetime,
 taxa 					float)

-- insere os TCEs normais
insert into #TCEs
select 
  t.emp_cod,
  t.emp_nome, t.tce_cod, '1' tipo, 
	t.tce_tipobolsa, 
	(case when t.tce_tipobolsa = '0' then isnull(tce_bolsa * tce_tothoras,0)
			  else isnull(tce_bolsa,0) end) as Bolsa,
	t.tce_datares, 0 taxa
from
  Tce t, Empresa E
where
	t.tce_dataini <= @data2 and
  t.tce_datafim >= @data1 and
  t.tce_situacao = '0' and
	t.emp_cod = E.emp_cod and
  e.emp_tipo = (case when @tipo = '2' then 'Pública'
										 when @tipo = '3' then 'Privada'
								else e.emp_tipo end) and
  e.emp_formapgto = (case when @tipo = '0' then 'CETEFE'
										 			when @tipo = '1' then 'Própria'
										 else e.emp_formapgto end)
 

-- Insere os TAs
insert into #TCEs
select 
  t.emp_cod, t.emp_nome, t.tce_cod, '2' tipo, 
  t.tce_tipobolsa, 
	(case when t.tce_tipobolsa = '0' then isnull(tce_bolsa * tce_tothoras,0)
			  else isnull(tce_bolsa,0) end) as bolsa,
	t.tce_datares, 0 taxa
from
  Tce t, TceAditivo A, Empresa E
where
	t.tce_cod = A.tce_cod and
	A.tpr_dataini <= @data2 and
  A.tpr_datafim >= @data1 and
  t.tce_situacao <> '0' and
	t.tce_situacao <> '7' and
  convert(int, t.tce_situacao) = a.prg_cod and
	t.emp_cod = E.emp_cod and
  e.emp_tipo = (case when @tipo = '2' then 'Pública'
										 when @tipo = '3' then 'Privada'
								else e.emp_tipo end) and
  e.emp_formapgto = (case when @tipo = '0' then 'CETEFE'
										 			when @tipo = '1' then 'Própria'
										 else e.emp_formapgto end)

If @rescindidos = '1' 
begin
	-- TCEs rescindidos
	insert into #TCEs
	select 
	  t.emp_cod, t.emp_nome, t.tce_cod, '1' tipo, 
	  t.tce_tipobolsa, 
		(case when t.tce_tipobolsa = '0' then isnull(tce_bolsa * tce_tothoras,0)
				  else isnull(tce_bolsa,0) end) as bolsa,
		t.tce_datares, 0 taxa
	from
	  Tce t, Empresa E
	where
		t.tce_dataini <= @data2 and
	  t.tce_datares >= @data1 and
	  t.tce_situacao = '7' and
	  not exists (select * from TceAditivo where tce_cod = t.tce_cod and tpr_dataini <= @data2) and
		t.emp_cod = E.emp_cod and
	  e.emp_tipo = (case when @tipo = '2' then 'Pública'
											 when @tipo = '3' then 'Privada'
									else e.emp_tipo end) and
	  e.emp_formapgto = (case when @tipo = '0' then 'CETEFE'
											 			when @tipo = '1' then 'Própria'
											 else e.emp_formapgto end)


	-- TAs rescindidos
	insert into #TCEs
	select 
	  t.emp_cod, t.emp_nome, t.tce_cod, '2' tipo, 
	  t.tce_tipobolsa, 
		(case when t.tce_tipobolsa = '0' then isnull(tce_bolsa * tce_tothoras,0)
				  else isnull(tce_bolsa,0) end) as bolsa,
		t.tce_datares, 0 taxa
	from
	  Tce t, TceAditivo A, Empresa E
	where
		t.tce_cod = A.tce_cod and
		a.tpr_dataini <= @data2 and
	  t.tce_datares >= @data1 and
	  t.tce_situacao = '7' and
		t.emp_cod = E.emp_cod and
	  e.emp_tipo = (case when @tipo = '2' then 'Pública'
											 when @tipo = '3' then 'Privada'
									else e.emp_tipo end) and
	  e.emp_formapgto = (case when @tipo = '0' then 'CETEFE'
											 			when @tipo = '1' then 'Própria'
											 else e.emp_formapgto end)

end

declare cur_Alteracao cursor for
select tce_cod, tce_datares from #TCEs

open cur_alteracao
fetch cur_alteracao into @tce_cod, @tce_datares

while @@fetch_status = 0
begin
	-- busca as alterações
	If exists (select * from TCEAlteracao where tce_cod = @tce_cod)
	begin
		Update 	#TCEs
		set 		bolsa = (case when t.tce_tipobolsa = '0' 
											then A.tal_novabolsa * A.tal_tothoras
											else A.tal_novabolsa end),
						tipo = (case when t.tce_tipobolsa = '0' then '3' else '4' end) 
		from 		#TCEs T, TCEAlteracao A
		where 	t.tce_cod = A.tce_cod
		and			t.tce_cod = @tce_cod
		and 		A.tal_cod = (select max (tal_cod) from TCEAlteracao where tce_cod = @tce_cod)
		
	end

	-- Verifica os rescindidos
	If (@tce_datares is not null) and (@tce_datares >= @data1)
	begin
		set @dias_rescisao 	= datepart(dd, @tce_datares)
		set @dias_mes 			= datepart(dd, @data2)

		-- calcula o percentual 
		Update 	#TCEs
		set 		bolsa = bolsa * @dias_rescisao / @dias_mes,
						tipo = '5'
		where		tce_cod = @tce_cod
	end	

	-- calcula a taxa
	Update	#TCEs
	set 		taxa = (case  when e.emp_tipotaxa = 0 then
															(case when t.bolsa <= 250 then 20	else t.bolsa * 0.08 end)
												when e.emp_tipotaxa = 1 then
															(case when t.bolsa <= 250 then 25 else t.bolsa * 0.10 end)
												when e.emp_tipotaxa = 2 then
															(case when t.bolsa <= 500 then 20 else 25 end)
												when e.emp_tipotaxa = 3 then e.emp_valortaxa
												when e.emp_tipotaxa = 4 then
														e.emp_valortaxa / 100 * t.bolsa end) 
	from		#TCEs T, Empresa E
	where		t.emp_cod = E.emp_cod
	and			t.tce_cod = @tce_cod
	
	fetch cur_alteracao into @tce_cod, @tce_datares
end

select 	t.emp_cod, t.emp_nome, count(t.tce_cod) Estagiarios, 
				sum(t.bolsa) as bolsa, sum(t.taxa) as taxa
from 		#TCEs t
group by  t.emp_cod, t.emp_nome
order by 	t.emp_cod, t.emp_nome

drop table #tces

Close cur_alteracao
deallocate cur_alteracao

go







