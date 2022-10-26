FuturoDEV
Módulo 2 - Projeto Avaliativo 


## SUMÁRIO

* [1. INTRODUÇÃO](#1-introdução)
* [2. ROTEIRO DE PROJETO](#2-roteiro-de-projeto)
* [3. REQUISITOS DO PROJETO](#3-requisitos-do-projeto)
* [4. PLANO DE PROJETO](#4-plano-de-projeto)


***

## 1. INTRODUÇÃO
Considerando os assuntos estudados anteriormente no módulo 2, vamos aplicar os conhecimentos aprendidos na criação da modelagem, ambiente e tabelas do banco de dados do software Lab School, um sistema de gestão escolar que valerá milhões de dólares, certamente.

## 2. ROTEIRO DE PROJETO
O projeto que deverá ser realizado individualmente deve contemplar os seguintes requisitos:
Criação do modelo relacional utilizando algum software de modelagem
Dica de software: Draw.io ou DBDesigner
Criação dos scripts DDL necessários para:
Criar o banco de dados
Criar as tabelas
Criar os relacionamentos
Criação dos scripts DML necessários para preencher as tabelas
Crie dados fictícios para utilizar no banco de dados
Dica: Utilize o 4Devs para gerar dados
Criação de scripts DML para realização de consulta no banco de dados
Crie exemplos para realizar busca nas bases de dados
Utilizar o banco de dados PostgreSQL
Seguir o Roteiro de Projeto

O arquivo de entrega deverá ser um PDF contendo o diagrama do modelo relacional seguido dos scripts solicitados.

## 3. REQUISITOS DO PROJETO
A escola de programação Lab School está com uma equipe de desenvolvedores focada na criação de uma aplicação para automatizar o armazenamento de informações referente aos alunos, pedagogos e professores. Para que o sistema funcione adequadamente, será necessário criar a modelagem e os scripts de banco de dados. O banco de dados deverá conter conter as seguintes características:

Tabelas:
Aluno:
Campos:
Identificador: Único, obrigatório e auto-incremental
Identificador de endereço: Obrigatório
Nome completo: Obrigatório
CPF: Único e obrigatório
Data de Nascimento: Obrigatório
Telefone: Opcional
Estado da matrícula: Obrigatório
Nota do processo seletivo: Obrigatório
Os campos devem possuir tipos adequadas para cada informação

Professor:
Campos:
Identificador: Único, obrigatório e auto-incremental
Identificador de endereço: Obrigatório
Nome completo: Obrigatório
CPF: Único e obrigatório
Data de Nascimento: Obrigatório
Telefone: Opcional
Formação: Obrigatório
Experiência: Obrigatório
Ativo no sistema (estado): Obrigatório
Os campos devem possuir tipos adequadas para cada informação

Pedagogo:
Campos:
Identificador: Único, obrigatório e auto-incremental
Identificador de endereço: Obrigatório
Nome completo: Obrigatório
CPF: Único e obrigatório
Data de Nascimento: Obrigatório
Telefone: Opcional
Ativo no sistema (estado): Obrigatório
Os campos devem possuir tipos adequadas para cada informação

Endereço:
Campos:
Identificador: Único, obrigatório e auto-incremental
CEP: Obrigatório
Logradouro: Obrigatório
Número: Obrigatório
Complemento: Opcional
Bairro: Obrigatório
Cidade: Obrigatório
UF: Obrigatório
Os campos devem possuir tipos adequadas para cada informação

Atendimento Pedagógico:
Campos:
Identificador: Único, obrigatório e auto-incremental
Identificador do pedagogo: Obrigatório
Identificador do aluno: Obrigatório
Título do atendimento: Obrigatório
Descrição do atendimento: Obrigatório
Categoria do atendimento: Obrigatório
Estado do atendimento (ativo ou não): Obrigatório
Os campos devem possuir tipos adequadas para cada informação

Tipos dos campos:
Deverá possuir tipos adequados para cada campo, por exemplo:
Nomes de usuários são do tipo varchar e não precisam ter mais de 64 caracteres
Datas possuem tipos adequados para uso
Estados geralmente são binários
Etc

Relacionamentos:
As tabelas devem possuir os relacionamentos adequados através das chaves primárias e estrangeiras.

## 4. PLANO DE PROJETO
Ao construir a aplicação proposta, o aluno estará colocando em prática os aprendizados em:
Programação Orientada a Objetos: Conceitos de POO, Classes, Objetos, Métodos de Classes e Métodos Estáticos, Encapsulamento, Herança, Polimorfismo.
Modelagem: Criação de Classes e Abstração
JAVA: Ambiente virtual, Variáveis, Operadores lógicos, aritméticos e de comparação, Métodos, Listas, Condicionais, Strings, Loops e Funções.
