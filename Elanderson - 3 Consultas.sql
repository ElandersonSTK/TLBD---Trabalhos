-- Relatorios (query) do BANCO DE DADOS DO DETRAN 

-- listar todas as cores de veiculo por ordem alfabetica
select * from cor ORDER BY nome ASC;


-- LISTAR TODOS OS VEICULOS
SELECT v.placa,
       c.nome AS cor_veiculo,
	   m.nome AS modelo_carro,
	   ma.nome AS marca,
	   p. nome AS proprietario

FROM veiculo veiculo

JOIN cor c ON (m.id = v.id_cor)
JOIN modelo m ON (m.id = v.id_modelo)
JOIN marca ma ON (ma.id = m.id_marca)
JOIN proprietario p ON (P.id = v.id_proprietario)


-- Quais as MULTAS NO SISTEMA?
-- DE QUEM SAO AS MULTAS?
-- QUAL É O VALOR DAS MULTAS?
SELECT m.lancamento,
       m.data_multa,
       v.placa,
       p.nome,
       i.valor,
       i.pontos

FROM multa m 

JOIN veiculo v ON (v.id = m m.id_veiculo)
JOIN proprietario p ON (p.id = v.id_proprietario)
JOIN infracao i ON (i.id = m.id_infrcao);


SELECT m.lancamento,
       m.data_multa,
       v.placa,
       p.nome,
       i.valor,
       SUM(I.VALOR)


FROM multa m 

JOIN veiculo v ON (v.id = m.id_veiculo)
JOIN proprietario p ON (p.id = v.id_proprietario)
JOIN infracao i ON (i.id = m.id_infracao);

GROUP BY p.id; 	







SELECT lancamento FROM multa;


SELECT m.data_multa,
		 m.hora,
		 p.nome,
		 v.placa,
		 m2.nome,
		 c.nome
   FROM multa m
   JOIN veiculo v ON (v.id=m.id_veiculo)
   JOIN modelo m2 ON (m2.id=id_modelo)
   JOIN cor c ON(c.id=v.id_cor)
   JOIN proprietario p ON (p.id=v.id_proprietario);   
	   

