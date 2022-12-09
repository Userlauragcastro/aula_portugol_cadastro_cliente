Algoritmo "Dados do cliente"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   :  LORRAYNE
// Descrição   : CADASTRO DO CLIENTE
// Autor(a)    : LAURA GONÇALVES DE CASTRO
// Data atual  : 09/12/2022
Var
// Seção de Declarações das variáveis 
nome_cliente: caracter
funcao validar_nome_vazio (nome_cliente:caracter): logico

inicio
//Nesta parte colocaremos as funçoes para que quando a pessoa digitar não seja aceito espaços vazios.
      se (nome_cliente="") entao
         retorne falso
      senao
         retorne verdadeiro
      fimse
fimfuncao

procedimento solicitar_nome_cliente
inicio
      escreva ("Nome: ")
         leia (nome_cliente)
fimprocedimento

// Nesta parte iremos solicitar a idade , idade tipo logico , considerando que não sera aceito espaços vazios.
idade:inteiro
funcao validar_idade (idade:inteiro): logico

inicio
      se (idade <=0) entao
         retorne falso
      senao
         retorne verdadeiro
      fimse
fimfuncao

procedimento solicitar_idade
inicio
      escreva ("Idade: ")
               leia (idade)
fimprocedimento
 // Nesta parte iremos solicitar o EMAIL , considerando que não sera aceito espaços vazios.
email: caracter
funcao validar_email (email:caracter):logico

inicio
      se (email="") entao
         retorne falso
      senao
         retorne verdadeiro
      fimse
fimfuncao

procedimento solicitar_email
inicio
      escreva  ("Email: ")
               leia (email)
fimprocedimento
// Nesta parte iremos declarar as variaveis para obtenção de dados do cliente para cadastro.
rua : inteiro
numero :inteiro
cep:inteiro
bairro : caracter
cidade : caracter
estado: caracter

// Utilizaremos o procedimento para chamar as variaveis.
procedimento solicitar_endereco
inicio
      escreva ("Rua: ")
              leia (rua)
      escreva ("Número: ")
              leia (numero)
      escreva ("Bairro: ")
              leia (bairro)
      escreva ("Cidade: ")
              leia (cidade)
      escreva ("Estado: ")
              leia (estado)
      escreva ("CEP: ")
              leia (cep)

fimprocedimento

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
//Nesta parte do codigo iremos solicitr que quando o cliente deixar espaços vazios retorne novamente para o inicio .

solicitar_nome_cliente
   
       enquanto (validar_nome_vazio(nome_cliente)=falso) faca
           escreval ("Nome Inválido")
   solicitar_nome_cliente

fimenquanto

solicitar_idade

               enquanto (validar_idade(idade)=falso) faca
                        escreval ("idade Inválida")
               solicitar_idade
               fimenquanto
               
solicitar_email

               enquanto (validar_email(email)=falso) faca
                        escreval ("Email inválido")
               solicitar_email
               fimenquanto

solicitar_endereco
//Nesta parte iremos apresentar todos os dados do usuario conforme foi digitado na sequencia do codigo.

limpatela

escreval ("   CADASTRO USUARIO  ")
escreval ("----------------------")
escreval ("Nome: ", nome_cliente)
escreval ("Idade: ", idade)
escreval ("Email: ", email)
escreval ("Endereço: Rua ", rua, " nº", numero, " Bairro ", bairro)
escreval ("Cidade ", cidade, "/", estado, " CEP ", cep)

Fimalgoritmo