# Sistema de E-commerce em SQL

Projeto de banco de dados para um sistema de e-commerce desenvolvido em MySQL, com modelagem relacional, inserção de dados e consultas avançadas utilizando JOIN, GROUP BY, funções de agregação e filtros.

## Funcionalidades

* Cadastro de usuários.
* Cadastro de produtos.
* Controle de estoque.
* Registro de pedidos.
* Registro dos itens de cada pedido.
* Relacionamento entre tabelas utilizando chaves primárias e estrangeiras.
* Consultas para análise de vendas e pedidos.

## Estrutura do Banco de Dados

### Tabela usuarios

Armazena informações dos clientes cadastrados.

### Tabela produtos

Armazena informações dos produtos disponíveis para venda.

### Tabela pedidos

Registra os pedidos realizados pelos usuários.

### Tabela itens_pedidos

Relaciona produtos aos pedidos, armazenando quantidade e preço unitário.

## Conceitos SQL Utilizados

* CREATE DATABASE
* CREATE TABLE
* PRIMARY KEY
* FOREIGN KEY
* AUTO_INCREMENT
* INSERT INTO
* JOIN
* GROUP BY
* SUM()
* LIKE
* WHERE
* ALIAS (AS)

## Consultas Implementadas

* Listagem completa de pedidos com cliente, produto, quantidade e subtotal.
* Cálculo do faturamento total da loja.
* Cálculo do valor total por pedido.
* Relatório de pedidos por cliente.
* Busca de usuários por nome.
* Filtro de produtos por faixa de preço.
* Consultas utilizando padrões com LIKE.

## Tecnologias

* MySQL
* SQL

## Objetivo

Este projeto foi desenvolvido para praticar modelagem de banco de dados, relacionamentos entre tabelas e consultas SQL utilizadas em sistemas reais de comércio eletrônico.
