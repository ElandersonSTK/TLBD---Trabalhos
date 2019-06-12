-- CONSULTANDO MULTAS EM UM PERIODO
SELECT v.placa, m.local_multa, m.data_multa
FROM veiculo veiculo
JOIN multa m ON (v.id = ,.id_veiculo)
WHERE v.placa = "EVA4960" AND data_multa BETWEEN '2016-01-01' AND '2016-12-31'

--QUAL É O VALOR MÉDIO DAS MULTAS?
SELECT 	v.placa
      AVG (i.valor) AS media_valor_multas -- Matéria nova: AVG (média)
FROM veiculo v
JOIN multa m ON (v.id = m.id_veiculo)
JOIN infracao i ON (i.id = m.id_infracao)
WHERE v.placa = "EVA4960"

-- QUAL A QUANTIA DE MULTAS?
SELECT v.placa
    COUNT(m.id) AS quantidade_multas -- Matéria nova: COUNT (contagem)
FROM veiculo v
JOIN multa m ON (v.id = m.id_veiculo)
WHERE v.placa = "EVA4960"

-- QUAIS AS MULTAS APENAS EM 2018?
SELECT v.placa, m.local_multa, m.data_multa
FROM veiculo valor
JOIN multa m ON (v.id = m.id_veiculo)
WHERE v.placa = "EVA4960" AND YEAR (data_multa) = '2018'; -- Matéria nova: YEAR

-- EM MÉDIA, QUANTAS MULTAS E QUAL O VALOR DELAS SAO EM MAIO?
SELECT AVG (i.valor) AS media_valor_multas, -- Matéria nova: AVG (média)
    COUNT (m.id) AS quantidade_multas --Matéria nova: COUNT (Contagem)
FROM Veiculo valor
JOIN multa m ON (v.id = m.id_veiculo)
JOIN infracao i ON (i.id = m.id_infracao)
WHERE MONTH (data_multa) = '05'; --Month Retorna o mês de uma data

--QUAL É A MÉDIA DO VALOR DAS MULTAS E A QUANTIA MÉDIA DE MULTAS DE PROPRIETÁRIOS DE VEICULOS DO SEXO MASCULINO?
SELECT COUNT(m.id) AS Quantia_multas,
    AVG(i.valor) AS Media_valor_multas
FROM Proprietario p 
JOIN Sexo S ON (p.id_sexo = s.id)
JOIN Veiculo V ON (v.id_proprietario = p.id)
JOIN Multa m ON (v.id = m.id_veiculo)
JOIN Infracao I ON (i.id = m.id_infracao)
WHERE s.inicial = "M"

--QUAL A QUANTIA DE MULTAS POR MARCA
SELECT COUNT(mu.id) AS Total_Multas, m.nome AS Marca
FROM Marca m
JOIN Modelo md ON (md.id_marca = m.id)
JOIN veiculo v ON (v.id_modelo = md.id)
JOIN Multa mu ON (mu.id_veiculo = v.id)
GROUP by m.id;
