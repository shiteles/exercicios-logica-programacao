Algoritmo "diagonal_negativos"

Var
     mat: vetor [0..9, 0..9] de inteiro
     N, i, j, quantNeg : inteiro

Inicio

    escreva("Qual a ordem da matriz? ")
    leia(N)
      
    para i de 0 ate N-1 faca
        para j de 0 ate N-1 faca
            escreva("Elemento [", i, ",", j, "]: ")
            leia(mat[i, j])
        fimpara
    fimpara

    escreval("DIAGONAL PRINCIPAL:  ")
    para i de 0 ate N-1 faca
        para j de 0 ate N-1 faca
        se i=j entao
            escreval(mat[i, j])
        fimse
        fimpara
    fimpara
    
    quantNeg <-0
    para i de 0 ate N-1 faca
        para j de 0 ate N-1 faca
            se mat[i, j] < 0 entao
            quantNeg <- quantNeg + 1
            fimse
        fimpara
    fimpara
    
    escreva("QUANTIDADE DE NEGATIVOS = " , quantNeg  )

Fimalgoritmo