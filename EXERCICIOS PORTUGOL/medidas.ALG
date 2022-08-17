Algoritmo "medidas"

Var

    a, b, c, areaTriangulo, areaQuadrado, areaTrapezio: real

Inicio

    escreva("Digite a medida A: ")
    leia(a)
    escreva("Digite a medida B: ")
    leia(b)
    escreva("Digite a medida C: ")
    leia(c)
    
    areaQuadrado <- Exp (a,2)
    areaTriangulo <- a*b/2
    areaTrapezio <- ((a+b)*c )/ 2
    
    escreval ("AREA DO QUADRADO = " , areaQuadrado:6:4 )
    escreval ("AREA DO TRIANGULO = " , areaTriangulo:6:4 )
    escreval ("AREA DO TRAPEZIO = " , areaTrapezio:6:4 )
    

Fimalgoritmo