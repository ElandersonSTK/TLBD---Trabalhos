-- QUANTAS MULTAS UM VEÍCULO TEM?
SELECT v.placa, m.local_multa, m.data_multa
FROM veiculo
JOIN multa m ON (v.id = m.id_veiculo)
WHERE v.placa = "EV4960"

-- QUAL O VALOR DAS MULTAS SOMADO?
SELECT v.placa
        SUM (i.valor) AS multas_somadas -- Matéria nova: "SUM" e "AS"
FROM veiculo valor
JOIN multa m ON (v.id = m.id_veiculo)
JOIN infracao i ON (i.id = m.id_infracao)
WHERE v.placa = "EVA4960"

-- QUAL É O VALOR DE MULTAS ESPECÍFICAS
SELECT v.placa, m.local_multa, m.data_multa, m.id AS "Código da Multa"
FROM veiculo v
JOIN multa m ON (v.id = m.id_veiculo)
WHERE (m.id = 3 OR m.id = 100)

-- QUANTOS PONTOS UM PROPRIETÁRIO TEM?
SELECT p.nome,
       v.placa
       SUM (i.pontos) AS total_pontos
FROM proprietario p 
JOIN veiculo v ON (p.id = v.id_proprietario)
JOIN multa m ON (m.id_veiculo = v.id)
JOIN infracao i ON (i.id = m.id_infracao)
GROUP BY p.id; -- Matéria nova: "GROUP BY"
	   
		