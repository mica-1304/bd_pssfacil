-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2023 at 08:46 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pss_facil`
--

-- --------------------------------------------------------

--
-- Table structure for table `certificados_graduacao`
--

CREATE TABLE `certificados_graduacao` (
  `id` int(11) NOT NULL,
  `url_certificado` varchar(50) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certificados_mestrado`
--

CREATE TABLE `certificados_mestrado` (
  `id` int(11) NOT NULL,
  `url_certificado` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certificados_pos_graduacao`
--

CREATE TABLE `certificados_pos_graduacao` (
  `id` int(11) NOT NULL,
  `url_certificado` varchar(50) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mensagens_usuario`
--

CREATE TABLE `mensagens_usuario` (
  `id` int(11) NOT NULL,
  `mensagem_usuario` varchar(300) NOT NULL,
  `assunto` varchar(50) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_usuario`
--

CREATE TABLE `tb_usuario` (
  `id_usuario` int(11) NOT NULL,
  `nome_completo` varchar(80) NOT NULL,
  `data_nascimento` date NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `rg` int(20) NOT NULL,
  `estado_rg` varchar(50) NOT NULL,
  `email` varchar(80) NOT NULL,
  `sexo` varchar(20) NOT NULL,
  `canhoto` varchar(20) NOT NULL,
  `estado_civil` varchar(20) NOT NULL,
  `nome_mae` varchar(80) NOT NULL,
  `nome_pai` varchar(80) NOT NULL,
  `nacionalidade` varchar(50) NOT NULL,
  `naturalidade` varchar(50) NOT NULL,
  `cep` int(20) NOT NULL,
  `rua` varchar(80) NOT NULL,
  `numero_casa` int(20) NOT NULL,
  `complemento` varchar(100) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `uf` varchar(20) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `telefone` int(20) NOT NULL,
  `celular` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_usuario`
--

INSERT INTO `tb_usuario` (`id_usuario`, `nome_completo`, `data_nascimento`, `cpf`, `rg`, `estado_rg`, `email`, `sexo`, `canhoto`, `estado_civil`, `nome_mae`, `nome_pai`, `nacionalidade`, `naturalidade`, `cep`, `rua`, `numero_casa`, `complemento`, `bairro`, `cidade`, `uf`, `senha`, `telefone`, `celular`) VALUES
(1, 'Maria da Silva', '1995-11-14', '3256556565', 46546541, 'PR', 'mariasil@gmail.com', 'Feminino', 'Não', 'Casada', 'Rosa da Silva', 'Pedro da Silva', 'Brasileira', 'Paraná', 87466667, 'Rua da lua', 74, 'Casa', 'Santo Antonio', 'Carambei ', 'PR', 'd41d8cd98f00b204e9800998ecf8427e', 0, 416699562),
(2, 'Paulo Soares', '1991-05-17', '06999987581', 116528964, 'SC', 'soares@gmail.com', 'Masculino', 'Sim', 'Solteiro', 'Paulina Soares', 'João Soares', 'Brasileiro', 'Santa Catarina', 84956479, 'Rua das carmelitas', 236, 'Casa', 'Afonso Camargo', 'Portulancia', 'SC', 'd41d8cd98f00b204e9800998ecf8427e', 0, 489984665),
(3, 'Flora Maria', '1989-06-14', '6975556423', 103336554, 'SP', 'flora@hotmail.com', 'Feminino', 'Sim', 'Solteira', 'Caroline Medeiros', 'Jose Carlos', 'Btrasileira', 'São Paulo', 82697742, 'Rua dodogues', 485, 'Casa', 'Mercedes', 'Moema', 'SP', 'd41d8cd98f00b204e9800998ecf8427e', 98756542, 98756542),
(4, 'Marcinha Pereira', '2000-08-09', '6984423651', 1036554697, 'RJ', 'Marci@bol.com', 'Feminino', 'Não', 'Divorciada', 'Laisa Junqueira', 'Paulo Pereira', 'Brasileira', 'Rio de Janeiro', 87954687, 'Rua Samanbaia', 98, 'Casa', 'Retro', 'Potiguara', 'RJ', 'd41d8cd98f00b204e9800998ecf8427e', 0, 985445326);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `certificados_graduacao`
--
ALTER TABLE `certificados_graduacao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificados_pos_graduacao`
--
ALTER TABLE `certificados_pos_graduacao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mensagens_usuario`
--
ALTER TABLE `mensagens_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_usuario`
--
ALTER TABLE `tb_usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `certificados_graduacao`
--
ALTER TABLE `certificados_graduacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certificados_pos_graduacao`
--
ALTER TABLE `certificados_pos_graduacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mensagens_usuario`
--
ALTER TABLE `mensagens_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_usuario`
--
ALTER TABLE `tb_usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

--Mostre todos os usários
SELECT * FROM tb_usuario;

-- Mostre a média de idade dos candidatos
SELECT AVG(YEAR(CURDATE()) - YEAR(data_nascimento)) AS media_idades FROM tb_usuario;

--Candidato por sexo em percentual

SELECT
    sexo,
    COUNT(*) as quantidade,
    (COUNT(*) / (SELECT COUNT(*) FROM tb_usuario)) * 100 AS porcentagem
FROM
    tb_usuario
GROUP BY
    sexo;

--Quantidade de mensagens de usuários e assunto:

SELECT
    assunto,
    COUNT(*) AS quantidade_mensagens
FROM
    mensagens_usuario
GROUP BY
    assunto;

--Quantidade de candidatos com curso de graduação e pós graduação:

SELECT COUNT(DISTINCT u.id_usuario) AS quantidade_usuarios
FROM tb_usuario u
JOIN certificados_graduacao cg ON u.id_usuario = cg.id_usuario
JOIN certificados_pos_graduacao cpg ON u.id_usuario = cpg.id_usuario;

--Quantidade de usuários que possuem mestrado:

SELECT COUNT(DISTINCT id_usuario) AS quantidade_candidatos_mestrado
FROM certificados_mestrado;

--Percentual de candidatos com graduação, pós e mestrado:

SELECT
    (COUNT(DISTINCT cg.id_usuario) / (SELECT COUNT(DISTINCT id_usuario) FROM tb_usuario)) * 100 AS percentual_graduacao,
    (COUNT(DISTINCT cm.id_usuario) / (SELECT COUNT(DISTINCT id_usuario) FROM tb_usuario)) * 100 AS percentual_mestrado,
    (COUNT(DISTINCT cpg.id_usuario) / (SELECT COUNT(DISTINCT id_usuario) FROM tb_usuario)) * 100 AS percentual_pos_graduacao
FROM
    tb_usuario u
LEFT JOIN
    certificados_graduacao cg ON u.id_usuario = cg.id_usuario
LEFT JOIN
    certificados_mestrado cm ON u.id_usuario = cm.id_usuario
LEFT JOIN
    certificados_pos_graduacao cpg ON u.id_usuario = cpg.id_usuario;

-- Percentual de usuários por cidade e idade

SELECT
    cidade,
    idade,
    (COUNT(*) / total_cidade.total) * 100 AS percentual_por_cidade
FROM
    (
        SELECT
            u.cidade,
            YEAR(CURDATE()) - YEAR(u.data_nascimento) AS idade
        FROM
            tb_usuario u
    ) subquery,
    (
        SELECT
            cidade,
            COUNT(*) AS total
        FROM
            tb_usuario
        GROUP BY
            cidade
    ) total_cidade
GROUP BY
    cidade, idade
ORDER BY
    cidade, idade;






