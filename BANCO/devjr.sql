-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28-Nov-2021 às 21:26
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "-03:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `devjr`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` int(5) NOT NULL,
  `cli_senha` varchar(8) NOT NULL,
  `cli_cpf` varchar(11) NOT NULL,
  `cli_nome` varchar(60) NOT NULL,
  `cli_end` varchar(60) NOT NULL,
  `cli_bairro` varchar(40) NOT NULL,
  `cli_cep` varchar(8) NOT NULL,
  `cli_cidade` varchar(40) NOT NULL,
  `cli_uf` varchar(2) NOT NULL,
  `cli_email` varchar(40) NOT NULL,
  `cli_fone_w` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id`, `cli_senha`, `cli_cpf`, `cli_nome`, `cli_end`, `cli_bairro`, `cli_cep`, `cli_cidade`, `cli_uf`, `cli_email`, `cli_fone_w`) VALUES
(3, '', '2147483647', 'Alexandre Francisco de Souza', 'Rua Angelo Rodi, 412 apto 1', 'Dom Bosco', '88303580', 'itajai', 'SC', 'contato@prohar.com.br', '2147483647'),
(10, '12345', '03933909937', 'Franciele Ariane de paula dos santos', 'Rua Angelo rodi, 412', 'Dom Bosco', '88303580', 'itajai', 'SC', 'fran@prohar.com.br', '47984733549'),
(13, '999999', '87239752968', 'Alexandre F', 'Rua angelo rodi', 'Dom Bosco', '88303580', 'itajai', 'SC', 'alexandre@prohar.com.br', '47984733549');

-- --------------------------------------------------------

--
-- Estrutura da tabela `locar`
--

CREATE TABLE `locar` (
  `loc_id` int(5) NOT NULL,
  `loc_codveic` varchar(5) NOT NULL,
  `loc_codcli` varchar(5) NOT NULL,
  `loc_dta_loc` varchar(10) NOT NULL,
  `loc_dta_devolve` varchar(10) NOT NULL,
  `loc_valor_dia` varchar(6) NOT NULL,
  `loc_total_diaria` varchar(6) NOT NULL,
  `loc_obs` varchar(100) NOT NULL,
  `loc_devolucao` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `locar`
--

INSERT INTO `locar` (`loc_id`, `loc_codveic`, `loc_codcli`, `loc_dta_loc`, `loc_dta_devolve`, `loc_valor_dia`, `loc_total_diaria`, `loc_obs`, `loc_devolucao`) VALUES
(12, '3', '111', '24/11/2021', '24/11/2021', '60', '18', 'Graça a Deus!', '1'),
(14, '1234', '156', '23/11/2021', '10/11/2021', '50', '180', 'Ate inserir corretamente', 'D'),
(27, '111', '111', '16/11/2021', '11/11/2021', '100', '200', 'deu certo', 'D');

-- --------------------------------------------------------

--
-- Estrutura da tabela `marca`
--

CREATE TABLE `marca` (
  `mar_id` int(5) NOT NULL,
  `mar_desc` varchar(150) NOT NULL,
  `mar_ativo` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `marca`
--

INSERT INTO `marca` (`mar_id`, `mar_desc`, `mar_ativo`) VALUES
(1, 'JEEP', 'ATIVO'),
(3, 'TOYOTA', 'ATIVO'),
(4, 'VOLKSVAGEM', 'ATIVO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `modelo`
--

CREATE TABLE `modelo` (
  `mod_id` int(5) NOT NULL,
  `mod_marca` varchar(5) NOT NULL,
  `mod_desc` varchar(150) NOT NULL,
  `mod_ativo` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `modelo`
--

INSERT INTO `modelo` (`mod_id`, `mod_marca`, `mod_desc`, `mod_ativo`) VALUES
(1, '15', 'SEDÃ', 'ATIVO'),
(2, '20', 'HATCHBACK', 'ATIVO'),
(3, '21', 'SUV', 'ATIVO'),
(5, '22', 'COOPE', 'ATIVO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `car_id` int(5) NOT NULL,
  `car_desc` varchar(50) NOT NULL,
  `car_mod` varchar(5) NOT NULL,
  `car_ano` varchar(4) NOT NULL,
  `car_cor` varchar(15) NOT NULL,
  `car_obs` varchar(150) NOT NULL,
  `car_apto` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `veiculo`
--

INSERT INTO `veiculo` (`car_id`, `car_desc`, `car_mod`, `car_ano`, `car_cor`, `car_obs`, `car_apto`) VALUES
(1, 'CHEVROLET SONIC 1.6', '15', '2015', 'Prata', 'Veiculo para pessoas exigentes', 'APTO'),
(3, 'UNO VIVACE', '16', '2015', 'Vermelho', 'Carro de Menina', 'APTO'),
(4, 'UNO MILLE ECONOMY FLEX', '10', '2011', 'Branco', 'MEU UNOOO', 'APTO'),
(5, 'LOGAN SEDAN', '16', '2016', 'Marrom', 'teste de inserção sdfsdf', 'APTO'),
(6, 'COBALT', '13', '2018', 'Branco', 'DE TIUZAO', 'APTO');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cli_cpf` (`cli_cpf`),
  ADD UNIQUE KEY `cli_email` (`cli_email`);

--
-- Índices para tabela `locar`
--
ALTER TABLE `locar`
  ADD PRIMARY KEY (`loc_id`);

--
-- Índices para tabela `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`mar_id`),
  ADD UNIQUE KEY `mar_desc` (`mar_desc`);

--
-- Índices para tabela `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`mod_id`);

--
-- Índices para tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`car_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `locar`
--
ALTER TABLE `locar`
  MODIFY `loc_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `marca`
--
ALTER TABLE `marca`
  MODIFY `mar_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `modelo`
--
ALTER TABLE `modelo`
  MODIFY `mod_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `veiculo`
--
ALTER TABLE `veiculo`
  MODIFY `car_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
