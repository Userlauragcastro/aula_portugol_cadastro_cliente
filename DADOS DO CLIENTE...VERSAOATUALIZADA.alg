Algoritmo "Dados do cliente"
// Disciplina   : [Linguagem e L?gica de Programa??o]
// Professor   :  LORRAYNE
// Descri??o   : CADASTRO DO CLIENTE
// Autor(a)    : LAURA GON?ALVES DE CASTRO
// Data atual  : 09/12/2022
Var
// Se??o de Declara??es das vari?veis 
nome_cliente: caracter
funcao validar_nome_vazio (nome_cliente:caracter): logico

inicio
//Nesta parte colocaremos as fun?oes para que quando a pessoa digitar n?o seja aceito espa?os vazios.
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

// Nesta parte iremos solicitar a idade , idade tipo logico , considerando que n?o sera aceito espa?os vazios.
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
 // Nesta parte iremos solicitar o EMAIL , considerando que n?o sera aceito espa?os vazios.
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
// Nesta parte iremos declarar as variaveis para obten??o de dados do cliente para cadastro.
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
      escreva ("N?mero: ")
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
// Se??o de Comandos, procedimento, fun??es, operadores, etc... 
//Nesta parte do codigo iremos solicitr que quando o cliente deixar espa?os vazios retorne novamente para o inicio .

solicitar_nome_cliente
   
       enquanto (validar_nome_vazio(nome_cliente)=falso) faca
           escreval ("Nome Inv?lido")
   solicitar_nome_cliente

fimenquanto

solicitar_idade

               enquanto (validar_idade(idade)=falso) faca
                        escreval ("idade Inv?lida")
               solicitar_idade
               fimenquanto
               
solicitar_email

               enquanto (validar_email(email)=falso) faca
                        escreval ("Email inv?lido")
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
escreval ("Endere?o: Rua ", rua, " n?", numero, " Bairro ", bairro)
escreval ("Cidade ", cidade, "/", estado, " CEP ", cep)

Fimalgoritmo