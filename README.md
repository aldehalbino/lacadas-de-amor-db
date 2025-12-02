# Laçadas de Amor – Banco de Dados

Repositório da Experiência Prática 4 da disciplina de Modelagem de Banco de Dados.

## Arquivos incluídos

- create_tables.sql — Criação das tabelas (DDL)
- inserts.sql — Inserção de dados
- selects.sql — Consultas SQL
- updates_deletes.sql — Atualizações e remoções
- README.md — Este arquivo

## Como executar (MySQL)

1. Crie o banco:
CREATE DATABASE lacadas_de_amor;
USE lacadas_de_amor;

2. Execute:
SOURCE create_tables.sql;
SOURCE inserts.sql;

3. Execute as consultas normalmente:
SOURCE selects.sql;
SOURCE updates_deletes.sql;

## Observações
- Estrutura modelada com base no DER e no modelo lógico desenvolvido nas Atividades 2 e 3.
- A encomenda_custom pode ou não possuir pedido associado.
