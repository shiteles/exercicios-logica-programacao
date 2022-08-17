Algoritmo "matriz_geral"

Var

     mat: vetor [0..9, 0..9] de real
     N, i, j,linha, coluna: inteiro
     soma: real

Inicio
    escreva("Qual a ordem da matriz? ")
    leia(N)

    para i de 0 ate N-1 faca
        para j de 0 ate N-1 faca
            escreva("Elemento [", i, ",", j, "]: ")
            leia(mat[i, j])
        fimpara
    fimpara
    
      // a) SOMA DOS POSITIVOS:
    soma <- 0
    para i de 0 ate N-1 faca
        para j de 0 ate N-1 faca
            se mat[i, j] > 0 entao
            soma <- soma +  mat[i, j]
            fimse
        fimpara
        escreval
    fimpara
    
    escreval("SOMA DOS POSITIVOS:" , soma )
    
       // b) MOSTRAR UMA DADA LINHA
    escreval
    escreva("Escolha uma linha: ")
    leia(linha)
    escreva("LINHA ESCOLHIDA: ")
    para j de 0 ate N-1 faca
        escreva(mat[linha, j]:3:1, " ")
    fimpara
    escreval
    
      // c) MOSTRAR UMA DADA COLUNA
    escreval
    escreva("Escolha uma coluna: ")
    leia(coluna)
    escreva("COLUNA ESCOLHIDA: ")
    para i de 0 ate N-1 faca
        escreva(mat[i, coluna]:3:1, " ")
    fimpara
    escreval

    // d) MOSTRAR A DIAGONAL PRINCIPAL

    escreval
    escreva("DIAGONAL PRINCIPAL: ")
    para i de 0 ate N-1 faca
        escreva(mat[i, i]:3:1, " ")
    fimpara
    escreval

    // e) ELEVAR AO QUADRADO OS NEGATIVOS

    para i de 0 ate N-1 faca
        para j de 0 ate N-1 faca
            se mat[i, j] < 0 entao
                mat[i, j] <- mat[i, j] * mat[i, j]
            fimse
        fimpara
    fimpara

    escreval
    escreval("MATRIZ ALTERADA:")
    para i de 0 ate N-1 faca
        para j de 0 ate N-1 faca
            escreva(mat[i, j]:3:1, " ")
        fimpara
        escreval
    fimpara
    



Fimalgoritmo