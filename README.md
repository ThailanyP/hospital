# ![hospital (3)](https://user-images.githubusercontent.com/111004514/235028569-7d9da66b-78df-4630-ae35-16db2af1f06b.png) Hospital Fundamental

![doente (1)](https://github.com/ThailanyP/hospital/assets/111004514/a0003b96-967b-45cd-97dd-ab7e3aacc691) A algumas pessoas doentes e precimos ajuda-lás, mas antes precisamos arrumar o hospital.

<br>
O hospital necessita de um sistema para sua área clínica que ajude a controlar consultas realizadas. Para isso vamos separar ps dados dos médicos que podem ser generalistas, especialistas ou residentes. Cada médico pode ter uma ou mais especialidades, que podem ser pediatria, clínica geral, gastroenterologia e dermatologia.

Os pacientes também precisam de cadastro, contendo dados pessoais (nome, data de nascimento, endereço, telefone e e-mail), documentos (CPF e RG) e convênio. Para cada convênio, são registrados nome, CNPJ e tempo de carência.

As consultas também têm sido registradas em planilhas, com data e hora de realização, médico responsável, paciente, valor da consulta ou nome do convênio, com o número da carteira. Também é necessário indicar na consulta qual a especialidade buscada pelo paciente.

Deseja-se ainda informatizar a receita do médico, de maneira que, no encerramento da consulta, ele possa registrar os medicamentos receitados, a quantidade e as instruções de uso. A partir disso, espera-se que o sistema imprima um relatório da receita ao paciente ou permita sua visualização via internet.
<br>
<h2>Modelagem</h2>
<br>

![hospital](https://user-images.githubusercontent.com/111004514/235029607-8874d784-3844-443b-8247-8476d0aea9d5.png)

<br>

# ![segredo](https://github.com/ThailanyP/hospital/assets/111004514/56b78cae-592f-4a68-95e5-083352800d42) Os Segredos do Hospital
O hospital necessitava de um sistema para sua área clínica que ajude a controlar consultas realizadas. E desde de então, as internações têm sido registradas por meio de formulários eletrônicos que gravam os dados em arquivos. 

Para cada internação, são anotadas a data de entrada, a data prevista de alta e a data efetiva de alta, além da descrição textual dos procedimentos a serem realizados, e precisam ser vinculadas a quartos, com a numeração e o tipo. 

Cada tipo de quarto tem sua descrição e o seu valor diário (a princípio, o hospital trabalha com apartamentos, quartos duplos e enfermaria).

Também é necessário controlar quais profissionais de enfermaria estarão responsáveis por acompanhar o paciente durante sua internação. Para cada enfermeiro(a), é necessário nome, CPF e registro no conselho de enfermagem (CRE).

A internação, obviamente, é vinculada a um paciente – que pode se internar mais de uma vez no hospital – e a um único médico responsável.
<br>
<br>
<h2>Modelagem</h2>
<br>


![hospital (1)](https://github.com/ThailanyP/hospital/assets/111004514/cc2c6df9-d0eb-467b-8a66-a739a0e39278)


<br>

# ![prisioneiro (3)](https://github.com/ThailanyP/hospital/assets/111004514/14c2f3ca-f00c-4f48-9eaa-ad2fbb5df603) O priseioneiro dos dados

Nesta etapa, também é importante realizar a separação de alguns scripts iniciais para o banco, com os dados que serão necessários a um povoamento inicial do sistema.
<br>
Então, Vamos começar à cadastrar alguns médicos, especialidades, convênios, pacientes, enfermeiros e internações.
banco de dados: hospital_bd
<br>
<br>
<code>INSERT INTO medicos (nome, cpf, rg, telefone, email, cargo)
VALUES ('Dr. Carlos Silva', '123.456.789-00', '12.345.678-9', '(11) 1111-1111', 'carlos.silva@hospital.com', 'Residente');</code>

<code>INSERT INTO especialidades (especialidade)
VALUE('pediatria');</code>

<code>INSERT INTO pacientes (nome, dt_nascimento, endereco, cpf, rg, telefone, email, senha)
VALUES ('Maria Silva', '1990-01-15', 'Rua A, 123', '123.456.789-00', '12.345.678-9', '(11) 1111-1111', 'maria.silva@gmail.com','1@345678');</code>

<code>INSERT INTO convenios (nome_convenio, cnpj, tempo_carencia)
VALUES ('Saúde Total', '12345678900001', 30);</code>

<code>INSERT INTO enfermeiros (nome, cpf, cre) 
VALUES('João da Silva', '123.456.789-00', '12345-SP');</code>

<code>INSERT INTO internacoes (dt_entrada, dt_prevista, dt_alta, procedimento, id_enfermeiro_internacao, id_medico, id_quarto, id_paciente) 
VALUES('2023-01-01', '2023-01-05', '2023-01-10', 'Cirurgia Cardíaca', 5, 16, 8, 10),</code>

<code>INSERT INTO consultas (id_medico, id_paciente, id_convenio, data, hora, n_carteira, especialidade, valor) 
VALUES(   1, 1, 67, '2021-12-15', '09:00:00', 12345, 'Cardiologia', 150.0);</code>

<br>
<br>

# ![alterar](https://github.com/ThailanyP/hospital/assets/111004514/7753da9f-a78f-47c7-b5ff-0b66b93085a3)  A Ordem do Alterar. 

Vamos adicionar uma coluna “em_atividade” para os médicos, indicando se ele ainda está atuando no hospital ou não, e alterar alguns médicos. 
<br>
1 = atuando e 0 = não
banco de dados: alterar_hospital
<br>
<code>ALTER TABLE medicos
ADD em_atividade TINYINT(1) DEFAULT 1;
UPDATE medicos
SET em_atividade = 0
WHERE id_medico IN (1, 2);</code>

<br>

<h2>Modelagem</h2>
<br>

![hospital (1)](https://github.com/ThailanyP/hospital/assets/111004514/3a32e219-9e46-43d8-aca7-570f5d2fd476)
