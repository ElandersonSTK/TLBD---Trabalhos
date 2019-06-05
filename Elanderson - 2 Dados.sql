insert into estado (sigla, nome) values ("SP", "São Paulo");
insert into estado (sigla, nome) values ("MG", "Minas Gerais");
insert into estado (sigla, nome) values ("PR", "Paraná");

insert into cidade (id_estado, nome) values (1, "Mococa");
insert into cidade (id_estado, nome) values (1, "Cajuru");
insert into cidade (id_estado, nome) values (2, "Guaxupé");
insert into cidade (id_estado, nome) values (3, "Curitiba");

insert into sexo (inicial, nome) values ("M", "Masculino");
insert into sexo (inicial, nome) values ("F", "Feminino");

insert into agente (matricula, nome, contratacao) values ("123", "Jão", "CLT");
insert into agente (matricula, nome, contratacao) values ("456", "Zé", "CLT");
insert into agente (matricula, nome, contratacao) values ("789", "Toin", "CLT");

insert into infracao(descricao, valor, pontos) values ("Transitar em velocidade superior à máxima permitida em até 20%", 85.15, 5);
insert into infracao(descricao, valor, pontos) values ("Avançar o sinal vermelho do semáforo ou a parada obrigatória", 293.47, 7);
insert into infracao(descricao, valor, pontos) values ("Falta do cinto de segurança", 195.32, 5);

insert into marca (nome) values ("Volkswagen"), ("Chevrolet"), ("Fiat"), ("Ford"), ("Pegeot"), ("Renault");

insert into cor (nome) values ("Vermelho"), ("Branco"), ("Azul"), ("Verde"), ("Preto");

insert into modelo (id_marca, nome) values (1, "Polo"), (1, "Fusca"), (2, "Chevette"), (3, "Palio"), (4, "Ká"), (1, "Gol"), (2, "Opala");

insert into veiculo (id_modelo, id_proprietario, id_cor, placa, cadastro) values (1, 1, 2, "EVA4960", "do Prof");
insert into veiculo (id_modelo, id_proprietario, id_cor, placa, cadastro) values (2, 1, 2, "BLD7764", "do Prof");
insert into veiculo (id_modelo, id_proprietario, id_cor, placa, cadastro) values (6, 1, 3, "CFU0412", "do Prof");
insert into veiculo (id_modelo, id_proprietario, id_cor, placa, cadastro) values (7, 1, 5, "ZZZ0666", "Troco pelo Gol");

insert into proprietario (id_cidade, id_sexo, nome, cpf, logradouro, numero, complemento, bairro, cep) values 
(2, 1, "Prof. Tiago", "12345678910", "Rua dos Professores", "666", "Casa", "Centro", "14240000");

insert into multa (id_agente, id_veiculo, id_cidade, id_infracao, lancamento, data_multa, hora, local_multa) values 
(3, 1, 3, 2, "Condutor sem vergonha", "2018-12-30", "00:22", "Praça do Centro");

insert into multa (id_agente, id_veiculo, id_cidade, id_infracao, lancamento, data_multa, hora, local_multa) values 
(1, 1, 2, 3, "Com camisa do vasco", "2018-12-31", "08:15", "Avenida do rio");

insert into multa (id_agente, id_veiculo, id_cidade, id_infracao, lancamento, data_multa, hora, local_multa) values 
(2, 1, 1, 3, "Tocando música que machuca o coração", "2018-12-31", "11:30", "Vale da Sofrência");
