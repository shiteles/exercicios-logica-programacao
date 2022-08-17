#include <stdio.h>
#include <string.h>

void limpar_entrada(){
    char c;
    while ((c = getchar()) != '\n' && c != EOF) {}
}

void ler_texto(char *buffer, int length){
    fgets(buffer, length, stdin);
    strtok(buffer, "\n");
}

int main(){
    int N, menor;
    double soma, media, porcentagem;

    printf("Quantas pessoas serao digitadas? ");
    scanf("%d", &N);

    char nomes[N][50];
    int idades[N];
    double alturas[N];

    for ( int i = 0; i < N; i++){
        printf("Dados da %da pessoa: \n", i + 1);
        printf("Nome: ");
        limpar_entrada();
        ler_texto(nomes[i],50);
        printf("Idades: ");
        scanf("%d", &idades[i]);
        printf("Alturas: ");
        scanf("%lf", &alturas[i]);
    }

    soma=0;
    for (int i = 0; i < N; i++){
        soma = soma +  alturas[i];
    }

    media = soma / N;
    printf("\nAltura media: %.2lf\n", media);

    menor=0;
    for (int i = 0; i < N; i++){
        if (idades[i]<16){
            menor = menor + 1;
        }
    }

    porcentagem = menor * 100.0 / N;
    printf("Pessoas com menos de 16 anos: %.1lf %%\n", porcentagem);

    for (int i=0; i<N; i++){
        if (idades[i] < 16){
            printf ("%s\n", nomes[i]);
        }
    }

    return 0;


}
