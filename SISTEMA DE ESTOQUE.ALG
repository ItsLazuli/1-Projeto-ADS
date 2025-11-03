Algoritmo "Sistema de Estoque"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 03/11/2025
var
    numeros: vetor[1..10] de inteiro
    i, maior, menor, soma: inteiro
    media: real
    encontrado: logico
    busca: inteiro
inicio
    escreval("=== OPERAÇÕES COM VETORES ===")

    // Preenchendo o vetor
    PARA i DE 1 ATE 10 FACA
        escreva("Digite o ", i, "º número: ")
        leia(numeros[i])
    FIMPARA

    // Encontrando maior e menor
    maior <- numeros[1]
    menor <- numeros[1]
    soma <- 0

    PARA i DE 1 ATE 10 FACA
        // Atualiza maior
        SE (numeros[i] > maior) ENTAO
            maior <- numeros[i]
        FIMSE

        // Atualiza menor
        SE (numeros[i] < menor) ENTAO
            menor <- numeros[i]
        FIMSE

        // Acumula para média
        soma <- soma + numeros[i]
    FIMPARA

    media <- soma / 10

    // Busca linear
    escreval("")
    escreva("Digite um número para buscar: ")
    leia(busca)

    encontrado <- falso
    PARA i DE 1 ATE 10 FACA
        SE (numeros[i] = busca) ENTAO
            encontrado <- verdadeiro
            escreval("Número encontrado na posição ", i)
        FIMSE
    FIMPARA

    SE (NAO encontrado) ENTAO
        escreval("Número não encontrado no vetor!")
    FIMSE

    // Exibindo resultados
    escreval("")
    escreval("=== ESTATÍSTICAS ===")
    escreval("Vetor: ")
    PARA i DE 1 ATE 10 FACA
        escreva(numeros[i], " ")
    FIMPARA
    escreval("")
    escreval("Maior valor: ", maior)
    escreval("Menor valor: ", menor)
    escreval("Média: ", media:4:1)
    escreval("Soma total: ", soma)
fimalgoritmo