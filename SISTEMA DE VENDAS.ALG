Algoritmo "Sistema de Vendas"

tipo produto = registro
   nome: caractere
   codigo, qnt: inteiro
   preco, total: real
fimregistro

Var
   itens: vetor[1..5] de produto
   opcao: inteiro


Funcao pegarProxPosicaoVazia() : inteiro
Var
   i : inteiro
Inicio
   Para i de 1 até 5 Faça
      Se (itens[i].nome = "") Então
         Retorne i
         Interrompa
      Fimse
   Fimpara
FimFuncao

procedimento add()
Var

   i: inteiro
   nome: caractere
   codigo, qnt: inteiro
   preco: real

Inicio

   limpatela()

   i <- pegarProxPosicaoVazia()

   escreval("Cadastre o produto no estoque: ")
   Escreval("Posição na lista: ", i)

   escreval("Nome do produto: ")
   leia(itens[i].nome)
   escreval("Código do produto: ")
   leia(itens[i].codigo)
   escreval("Quantidade do produto: ")
   leia(itens[i].qnt)
   escreval("Preço do produto: ")
   leia(itens[i].preco)
   itens[i].total <- itens[i].qnt * itens[i].preco

   limpatela()

   escreval("Produto adicionado")
   escreval()
fimprocedimento

procedimento search()
Var
   cod, i: inteiro
   encontrado: logico

Inicio
   limpatela()
   escreva("Digite o código do produto: ")
   leia(cod)

   encontrado <- falso

   para i de 1 até 5 faça
      se (itens[i].codigo = cod) então
         escreval("Produto encontrado!")
         escreval()
         escreval("Nome | Código | Qnt | Val. Unit | Val. Total")
         escreva(itens[i].nome)
         escreva(" | ", itens[i].codigo)
         escreva(" | ", itens[i].qnt)
         escreva(" | ", itens[i].preco:0:2)
         escreva(" | ", itens[i].total:0:2)

         encontrado <- verdadeiro
         interrompa
      fimse
   fimpara

   se (encontrado = falso) entao
      escreval("Produto não encontrado!")
   fimse

   escreval()

fimprocedimento

procedimento list()

Var

   i: inteiro

Inicio
   limpatela()

   escreval("# | Nome | Código | Qnt | Val. Unit | Val. Total")
   para i de 1 até 5 faça
      se (itens[i].nome <> "") então
         escreva(i)
         escreva(" | ", itens[i].nome)
         escreva(" | ", itens[i].codigo)
         escreva(" | ", itens[i].qnt)
         escreva(" | ", itens[i].preco:0:2)
         escreva(" | ", itens[i].total:0:2)
      fimse
   fimpara
   escreval()
fimprocedimento

procedimento venda()
Var
   cod, qntVendida, i: inteiro
   valorVenda: real
   encontrado: logico

Inicio
   limpatela()
   escreval("Digite o código do produto: ")
   leia(cod)
   encontrado <- falso

   para i de 1 até 5 faça
      se (itens[i].codigo = cod) então
         encontrado <- verdadeiro
         escreval("Produto encontrado: ", itens[i].nome)
         escreval("Quantidade do produto: ", itens[i].qnt)
         escreva("Digite a quantidade vendida: ")
         leia(qntVendida)

         se(qntVendida > itens[i].qnt) então
            escreval("Erro: quantidade insuficiente em estoque.")
         senao
            valorVenda <- qntVendida * itens[i].preco
            itens[i].qnt <- itens[i].qnt - qntVendida
            itens[i].total <- itens[i].qnt * itens[i].preco

            escreval()
            escreval("Venda realizada com sucesso!")
            escreval("Valor total da venda: R$", valorVenda:0:2)
         fimse
         interrompa
      fimse
   fimpara
   
   se (encontrado = falso) então
   escreval("Produto não encontrado!")
   fimse
   
   escreval()

fimprocedimento

Inicio

   repita
      escreval("===============MENU================")
      escreval("1 - Cadastro de produto")
      escreval("2 - Pesquisa de produto")
      escreval("3 - Estoque")
      escreval("4 - Vender")
      escreval("0 - Sair")
      escreval("===================================")
      escreva("Escreva a opção desejada: ")
      leia(opcao)

      escolha(opcao)
      caso 1
         add()

      caso 2
         search()

      caso 3
         list()

      caso 4
         venda()

      caso 0
         escreval("Fechando programa.")
      outrocaso
         limpatela()
         escreval("Opção inválida")
      fimescolha
   até(opcao = 0)



Fimalgoritmo