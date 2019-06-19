-- 1) 	QUANTAS MULTAS POR CIDADE
  SELECT COUNT(m.id) AS total_multas, c.nome
  FROM multa m
  JOIN cidade c ON (c.id = m.id_cidade)
  GROUP BY m.id_cidade;
  
  
--2)  QUAL MODELO DE CARRO TEM MAIS MULTAS?
  SELECT COUNT(m.id) AS total_multas, mo.nome
  FROM multa m
  JOIN veiculo v ON (m.id_veiculo = v.id)
  JOIN modelo mo ON (v.id_modelo = mo.id)
  GROUP BY mo.id;
  
 
--3) QUAL É A INFRAÇÃO MAIS APLICADA? ORDER BY id DESC
  SELECT COUNT(m.id) AS total_multas, i.descricao
  FROM multa m
  JOIN infracao i ON (m.id_infracao = i.id)
  GROUP BY i.id
  ORDER BY total_multas DESC;
  
  
--4) QUAL MES DO ANO TEM MAIS MULTAS?
  SELECT COUNT(m.id) AS total_multas, MONTH(m.data_multa) AS mes
  FROM multa m 
  GROUP BY MONTH(m.data_multa)
  ORDER BY total_multas DESC;
  

--5) QUAL É A COR DE VEÍCLO MAIS MULTADA?
  SELECT COUNT(m.id) AS cores_multadas, c.nome AS Cor_Veiculo
  FROM multa m 
  JOIN veiculo v ON(v.id = m.id_veiculo)
  JOIN cor c ON(c.id = v.id_cor)
  GROUP BY c.id
  ORDER BY cores_multadas DESC;
  
--6) QUAL AGENTE APLICA MAIS MULTAS?
  SELECT COUNT(m.id) AS Total_Multas, a.nome AS agente
  FROM multa m 
  JOIN agente a ON (a.id= m.id_agente)
  GROUP BY a.id
  ORDER BY total_multas DESC;
  
  
--7) QUAL SEXO É MAIS MULTADO?
  SELECT COUNT(m.id) AS Total_Multas, s.nome AS Sexo
  FROM multa m
  JOIN veiculo v ON (v.id = m.id_veiculo)
  JOIN proprietario p ON (p.id = v.id_proprietario)
  JOIN sexo s ON (s.id = p.id_sexo)
  GROUP BY s.id
  ORDER BY total_multas DESC;
  
--8) QUAL MARCA DE CARRO OS HOMENS PREFEREM?
  SELECT COUNT(m.id) AS Total_veiculos, m.nome
  FROM Marca m
  JOIN modelo mo ON (mo.id_marca = m.id)
  JOIN veiculo v ON (v.id_modelo = mo.id)
  JOIN Proprietario p ON (v.id_proprietario = p.id)
  WHERE p.id_sexo = 1
  GROUP BY m.id
  ORDER BY Total_veiculos DESC;
  
  
--9) QUAL COR DE CARRO AS MULHERES PREFEREM
  SELECT COUNT(m.id) AS Total_veiculos, c.nome
  FROM Marca m
  JOIN modelo mo ON (mo.id_marca = m.id)
  JOIN veiculo v ON (v.id_modelo = mo.id)
  JOIN Proprietario p ON (v.id_proprietario = p.id)
  JOIN cor c ON (c.id = v.id_cor)
  WHERE p.id_sexo = 2
  GROUP BY m.id
  ORDER BY Total_veiculos DESC;
  
  
--10) RANKING DOS VEÍCULOS MAIS MUTADOS
  SELECT COUNT(m.id) AS Veiculos_Multados, mo.nome
  FROM multa m
  JOIN Veiculo v ON (v.id = m.id_veiculo)
  JOIN Modelo mo ON (v.id_modelo = mo.id)
  GROUP BY v.id
  ORDER BY Veiculos_Multados DESC;