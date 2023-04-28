CREATE TABLE `medicos` (
  `id_medico` int PRIMARY KEY,
  `nome` varchar(255),
  `cpf` varchar(255),
  `rg` varchar(255),
  `telefone` varchar(255),
  `email` varchar(255),
  `tipo` varchar(255)
);

CREATE TABLE `especialidades` (
  `id_especialidade` int PRIMARY KEY,
  `especialidade` varchar(255)
);

CREATE TABLE `medico_especialidades` (
  `id_medico_especialidades` int PRIMARY KEY,
  `id_medico` int,
  `id_especialidade` int
);

CREATE TABLE `pacientes` (
  `id_paciente` int PRIMARY KEY,
  `nome` varchar(255),
  `dt_nascimento` date,
  `endereco` varchar(255),
  `cpf` varchar(255),
  `rg` varchar(255),
  `telefone` varchar(255),
  `email` varchar(255)
);

CREATE TABLE `convenios` (
  `id_convenio` int PRIMARY KEY,
  `id_paciente` int,
  `nome_convenio` varchar(255),
  `cnpj` varchar(255),
  `tempo_carencia` varchar(255)
);

CREATE TABLE `paciente_convenios` (
  `id_paciente_convenio` int PRIMARY KEY,
  `id_paciente` int,
  `id_convenio` int
);

CREATE TABLE `consultas` (
  `id_consulta` int PRIMARY KEY,
  `id_medico` int,
  `id_paciente` int,
  `id_convenio` int,
  `data` date,
  `hora` time,
  `n_carteira` int,
  `especialidade` varchar(255),
  `valor` float
);

CREATE TABLE `receitas` (
  `id_receita` int PRIMARY KEY,
  `id_paciente` int,
  `id_medico` int,
  `id_consulta` int,
  `data_emissao` date,
  `medicamento` varchar(255)
);

CREATE TABLE `medicamentos` (
  `id_medicamento` int PRIMARY KEY,
  `medicamento` varchar(255),
  `quantidade` int,
  `instrucao` varchar(255)
);

CREATE TABLE `receita_medicamento` (
  `id_receita_medicamento` int PRIMARY KEY,
  `id_receita` int,
  `id_medicamento` int
);

ALTER TABLE `medico_especialidades` ADD FOREIGN KEY (`id_medico`) REFERENCES `medicos` (`id_medico`);

ALTER TABLE `medico_especialidades` ADD FOREIGN KEY (`id_especialidade`) REFERENCES `especialidades` (`id_especialidade`);

ALTER TABLE `paciente_convenios` ADD FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`);

ALTER TABLE `paciente_convenios` ADD FOREIGN KEY (`id_convenio`) REFERENCES `convenios` (`id_convenio`);

ALTER TABLE `medicos` ADD FOREIGN KEY (`id_medico`) REFERENCES `consultas` (`id_medico`);

ALTER TABLE `receitas` ADD FOREIGN KEY (`id_consulta`) REFERENCES `consultas` (`id_consulta`);

ALTER TABLE `receita_medicamento` ADD FOREIGN KEY (`id_medicamento`) REFERENCES `medicamentos` (`id_medicamento`);

ALTER TABLE `receita_medicamento` ADD FOREIGN KEY (`id_receita`) REFERENCES `receitas` (`id_receita`);

ALTER TABLE `pacientes` ADD FOREIGN KEY (`id_paciente`) REFERENCES `receitas` (`id_paciente`);

ALTER TABLE `pacientes` ADD FOREIGN KEY (`id_paciente`) REFERENCES `consultas` (`id_paciente`);

ALTER TABLE `receitas` ADD FOREIGN KEY (`id_receita`) REFERENCES `consultas` (`id_consulta`);
