-- INSERINDO MAIS PROPRIETÁRIOS
INSERT INTO proprietario (id_cidade, id_sexo, nome, cpf, logradouro, numero, complemento, bairro, cep) VALUES
(1, 1, "Joazim", "12345678910", "Rua dos Multados", "2", "Casa", "Centro", "14240000"),
(2, 1, "Juquinha", "12354896214", "Rua José Bonifácio", "89", "Comercio", "Jd. das Trevas", "13240000"),
(3, 2, "Mariazinha", "78923578214", "Av José Santos", "66", "Casa", "Centro", "14240000"),
(4, 1, "Zezinho", "96532578921", "Rua Antonio dosw Santos", "100", "Casa", "Quebrada", "12240000");

-- INSERINDO MAIS VEÍCULOS
INSERT INTO veiculo (id_modelo, id_proprietario, id_cor, placa, cadastro) VALUES 
(3, 2, 1, "YDX5892", "Licenciado"),
(4, 3, 2, "KYN0169", "Licenciado"),
(5, 4, 5, "OKY0101", "Licenciado"),
(1, 5, 4, "YAG0101", "Licenciado");


-- INSERINDO MAIS MULTAS
INSERT INTO multa (id_agente, id_veiculo, id_cidade, id_infracao, lancamento, data_multa, hora, local_multa) VALUES 
(1, 2, 1, 1, "Agente Rodoviário", "2019-02-28", "00:22", "Rua"),
(2, 2, 1, 1, "Agente Rodoviário", "2018-05-30", "13:25", "Avenida"),
(1, 3, 3, 3, "Agente Rodoviário", "2019-05-30", "14:33", "Praça do Centro"),
(1, 4, 3, 2, "Agente Rodoviário", "2017-03-14", "15:30", "Praça José Gomes"),
(3, 5, 4, 2, "Agente Rodoviário", "2017-12-23", "17:18", "Rua"),
(3, 1, 4, 3, "Agente Rodoviário", "2016-08-19", "09:26", "Estacionamento"),
(1, 1, 3, 1, "Agente Rodoviário", "2018-11-15", "10:34", "Praça da Matriz"),
(3, 1, 3, 3, "Agente Rodoviário", "2019-01-28", "15:23", "Praça de pedágio");