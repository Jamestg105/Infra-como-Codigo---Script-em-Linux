# Script de Criação de Usuários e Grupos no Linux

Este script automatiza a criação de diretórios, grupos de usuários e usuários no sistema Linux, além de configurar permissões adequadas para cada diretório. Ele é útil para ambientes onde é necessário configurar rapidamente a infraestrutura de usuários e garantir que as permissões de acesso sejam definidas corretamente.

## Objetivo

O script tem como objetivo criar os diretórios e grupos necessários, além de adicionar usuários a esses grupos com senhas seguras. Ele também configura as permissões dos diretórios para garantir que apenas os grupos corretos possam acessar ou modificar determinados dados.

## Funcionalidades

- **Criação de diretórios**: Automatiza a criação dos diretórios `/public`, `/adm`, `/ven`, e `/sec`.
- **Criação de grupos de usuários**: Cria três grupos: `GRP_TI`, `GRP_FIN`, e `GRP_RH`.
- **Criação de usuários**: Cria usuários em massa e os adiciona aos respectivos grupos:
  - `GRP_TI`: alice, bruno, clara
  - `GRP_FIN`: daniel, elena, fernando
  - `GRP_RH`: gabriel, helena, igor
- **Configuração de permissões**: Define permissões de leitura, escrita e execução para os diretórios `/adm`, `/ven`, e `/sec`, e garante acesso irrestrito ao diretório `/public`.

## Como usar

### Requisitos
- Sistema operacional Linux (testado em distribuições como Ubuntu, Debian, CentOS)
- Acesso de administrador (root) ou permissões equivalentes para criação de grupos, usuários e manipulação de permissões
