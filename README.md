# Configuração de Ambiente com Docker Compose

## Descrição

Este projeto configura um ambiente multi-container usando Docker Compose, integrando uma aplicação NestJS com um banco de dados PostgreSQL. Adicionalmente, utiliza Terraform para provisionar a infraestrutura como código (IaC), e a automação de CI/CD é realizada com GitHub Actions, realizando deploy da imagem Docker na AWS App Runner.

Este repositório faz parte do projeto de finalização da Formação DevOps da Rocketseat.

## Pré-requisitos

- Docker
- Docker Compose
- Terraform
- AWS CLI configurado com as permissões adequadas
- GitHub Actions configurado no repositório

## Configuração

1. Clone este repositório:

   ```sh
   git clone [<URL do repositório>](https://github.com/reginaldogomes/nestjs_docker_rocketeseat)
   cd nestjs_docker_rocketeseat
   ```

2. Crie um arquivo `.env` baseado no modelo abaixo:

   ```env
   DB_USER=myuser
   DB_PASSWORD=mypassword
   DB_NAME=mydatabase
   ```

3. Construa e inicie os containers:

   ```sh
   docker-compose up --build
   ```

4. A aplicação estará disponível em `http://localhost:3000`.

## Volumes

Os dados do banco de dados são persistidos em um volume Docker chamado `db-data`.

## Rede Customizada

Os serviços estão configurados para usar uma rede customizada `app-network` para comunicação isolada.

## Segurança

Para garantir a segurança, o banco de dados não é configurado com o usuário root. Um usuário específico para a aplicação é criado através das variáveis de ambiente definidas no arquivo `.env`.

## Testando a Conexão

Para testar a conexão entre a aplicação e o banco de dados, acesse `http://localhost:3000` e verifique as operações da aplicação que dependem do banco de dados.
