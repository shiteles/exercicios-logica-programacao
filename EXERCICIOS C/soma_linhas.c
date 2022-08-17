#include <stdio.h>

int main()
{

    int M, N;
    double somalinha;

    printf("Qual a quantidade de linhas da matriz? ");
    scanf("%d", &M);
    printf("Qual a quantidade de colunas da matriz? ");
    scanf("%d", &N);

    double mat[M][N], vet[M];

    for (int i = 0; i < M; i++)
    {
        printf("Digite os elementos da %da linha: \n", i+1);
        for (int j = 0; j < N; j++)
        {
            scanf("%lf", &mat[i][j]);
        }
    }

    for (int i=0; i<M; i++)
    {
        somalinha = 0;

        for (int j=0; j<N; j++)
        {
            somalinha = somalinha + mat[i][j];
        }
        vet[i] = somalinha;
    }

    printf("VETOR GERADO:\n");

    for (int i=0; i<M; i++)
    {
        printf("%.1lf\n", vet[i]);
    }


    return 0;
}
