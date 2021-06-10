
[![NPM](https://img.shields.io/npm/l/react)](https://github.com/srportto/portbank/blob/main/LICENSE)

![Portbank](https://github.com/srportto/portbank/blob/main/outros/iconportbank.jpg)
# Sobre o projeto



PortBank é uma aplicação back-end que fornece uma API RestFul para prover serviços de uma instituição financeira fictícia. 

A aplicação consiste em possibilitar o cadastro de clientes com suas respectivas contas e a realização de movimentações financeiras credito/debito.

## Requisitos de negócios
- [x] Possibilitar o cadastro de clientes
- [ ] Possibilitar a criação de contas para um cliente (corrente, poupança, investimento)
- [ ] Listar todas as contas que um cliente possui.
- [ ] Possibilitar a manutenção de contas dos clientes(criar, inativar, cancelar)
- [ ] Possibilitar o "login" dos clientes apenas por CPF e senha.
- [ ] Mostrar a composição de saldo do cliente com base em todas as contas do mesmo na instituição.
- [ ] Possibilitar a exibição da composição de saldo de apenas uma das contas do cliente.
- [ ] Possibilitar o cliente movimentar dinheiro entre suas propárias contas (credito/debito) 
- [ ] Possibilitar o cliente movimentar dinheiro para contas de terceiros (credito/debito)
- [ ] Listar todas as transações realizadas por um cliente
- [ ] Possibilitar consulta inteligente de operações realizadas por um cliente (data, valor, descrição operação).

## Requisitos de técnicos
- [ ] Atender requisições de pedidos de JSON e XML(Content negotiation)
- [ ] Configurar Pool de conexões para alem do "default (10)" do Spring Data Jpa
- [ ] Implementar controle de sessão
- [ ] Utilizar "Migrations" como estrategia de manutenção de banco de dados
- [ ] Criptografar senha de acesso dos clientes 
- [ ] Realizar mapeamento objeto relacional (oneToOne)
- [ ] Realizar mapeamento objeto relacional (oneToMany)
- [ ] Realizar mapeamento objeto relacional (ManyToOne)
- [ ] Realizar mapeamento objeto relacional (ManyToMany)



## Protótipo da aplicação
 ⚠ Em desenvolvimento ⚠


## Modelo conceitual
![Modelo Conceitual](https://github.com/srportto/portbank/blob/main/outros/modelagem.jpeg)

# Tecnologias utilizadas
## Back end
- Java 11 via OpenJDK
  - Herança
  - Polimorfismo
  - Interface
  - Generics
  - Override
  - Sobrecargas 
  - Manipulação de datas
  - Manipulação de Strings  
  - Manipulação de arrays
  - Manipulação de collections    
- Spring Boot
- Spring MVC
- Spring Security
- Spring Data JPA  
- JPA / Hibernate
- Maven
- FlayWay (migrations)
- JSON
- MySql  
- Intellij IDE
- Lombok

## Front end
- Não há 

## Implantação em produção
- [ ] Deploy na AWS 


# Como executar o projeto

## Back end
Pré-requisitos: 
* Java 11
* MySql server 8.0
* MySql Workbench 8.0 CE


```bash
# clonar repositório
git clone https://github.com/srportto/portbank.git

# entrar na pasta do projeto back end
cd portbank

# executar o projeto
./mvnw spring-boot:run
```



# Autor

Caique SilVa Porto

https://www.linkedin.com/in/caique-porto-26b50586/
