CREATE SCHEMA IF NOT EXISTS `Editora` DEFAULT CHARACTER SET utf8mb3 ;
USE `Editora` ;

CREATE TABLE Livros (
    ISBN CHAR(13) PRIMARY KEY,
    titulo VARCHAR(255),
    idAutor INT,
    idEditora INT,
    data_publicacao DATE,
    genero VARCHAR(100),
    num_paginas INT,
    descricao TEXT,
    FOREIGN KEY (idAutor) REFERENCES Autores(idAutor),
    FOREIGN KEY (idEditora) REFERENCES Departamentos(idDepartamento)
);

CREATE TABLE Autores (
    idAutor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    biografia TEXT,
    nacionalidade VARCHAR(100),
    data_nascimento DATE
);

CREATE TABLE Departamentos (
    idDepartamento INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    responsavel VARCHAR(255),
    descricao TEXT
);

CREATE TABLE Exemplares (
    numSerie INT PRIMARY KEY AUTO_INCREMENT,
    ISBN CHAR(13),
    estado VARCHAR(50),
    localizacao VARCHAR(255),
    FOREIGN KEY (ISBN) REFERENCES Livros(ISBN)
);

CREATE TABLE AreasConhecimento (
    codigoArea INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(255)
);

CREATE TABLE PalavrasChave (
    codigoPalavra INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(255)
);

CREATE TABLE Funcionarios (
    idFuncionario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    cargo VARCHAR(100),
    telefone VARCHAR(15),
    endereco TEXT,
    idDepartamento INT,
    FOREIGN KEY (idDepartamento) REFERENCES Departamentos(idDepartamento)
);

CREATE TABLE PedidosVendas (
    idPedido INT PRIMARY KEY AUTO_INCREMENT,
    idCliente INT,
    dataTransacao DATE,
    statusPedido VARCHAR(100),
    detalhePagamento TEXT,
    FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente)
);

CREATE TABLE Clientes (
    idCliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    email VARCHAR(255),
    telefone VARCHAR(15)
);

CREATE TABLE Indexacao (
    ISBN CHAR(13),
    codigoPalavra INT,
    PRIMARY KEY (ISBN, codigoPalavra),
    FOREIGN KEY (ISBN) REFERENCES Livros(ISBN),
    FOREIGN KEY (codigoPalavra) REFERENCES PalavrasChave(codigoPalavra)
);

CREATE TABLE Obras (
    idObra INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(255),
    data_publicacao DATE,
    autor VARCHAR(255)
);