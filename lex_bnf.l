%{
#include <stdio.h>
%}

/* Definiciones */
DIGITO [0-9]
LETRA [a-zA-Z]
CARACTER [a-zA-Z0-9\(\)\{\}:;.,]
IDENTIFICADOR {LETRA}{CARACTER}*
ENTERO {DIGITO}+
CADENA {CARACTER}+
SUMA "+"
RESTA "-"
MULTIPLICACION "*"
DIVISION "/"
ASIGNACION "="
COMPARADOR "(<=)|(>=)|(<)|(>)|(==)"

/* Reglas de reconocimiento */
%%
mientras        printf("Mientras: %s\n", yytext);
capturar        printf("Capturar: %s\n", yytext);
switch          printf("Switch: %s\n", yytext);
funcion         printf("Funcion: %s\n", yytext);
imprimir        printf("Imprimir: %s\n", yytext);
{ENTERO}        printf("Entero: %s\n", yytext);
{CADENA}        printf("Cadena: %s\n", yytext);

{SUMA}          printf("Suma: %s\n", yytext); 
{RESTA}         printf("Resta: %s\n", yytext); 
{MULTIPLICACION} printf("Multiplicacion: %s\n", yytext); 
{DIVISION}      printf("Division: %s\n", yytext); 
{ASIGNACION}    printf("Asignacion: %s\n", yytext); 
{COMPARADOR}    printf("Comparador: %s\n", yytext); 
 /*{CARACTER}      printf("Caracter: %s\n", yytext); */

%%

