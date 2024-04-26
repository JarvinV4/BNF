%{
#include <stdio.h>
int contador_mientras = 0;
int contador_cadena = 0;
int contador_capturar = 0;
int contador_switch = 0;
int contador_funcion = 0;
int contador_imprimir = 0;
int contador_entero = 0;
int contador_suma = 0;
int contador_resta = 0;
int contador_multiplicacion = 0;
int contador_division = 0;
int contador_asignacion = 0;
int contador_comparador = 0;
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
mientras        { contador_mientras++; }
capturar        { contador_capturar++; }
switch          { contador_switch++; }
funcion         { contador_funcion++; }
imprimir        { contador_imprimir++; }
{ENTERO}        { contador_entero++; }
{CADENA}        { contador_cadena++; }

{SUMA}          { contador_suma++; }
{RESTA}         { contador_resta++; }
{MULTIPLICACION} { contador_multiplicacion++; }
{DIVISION}      { contador_division++; }
{ASIGNACION}    { contador_asignacion++; }
{COMPARADOR}    { contador_comparador++; }

.               ;

%%

int main() {
    FILE *archivo;
    archivo = fopen("programa_005.prg", "r");
    if (archivo == NULL) {
        fprintf(stderr, "No se pudo abrir el archivo\n");
        return 1;
    }

    yyin = archivo; 
    yylex(); 

    fclose(archivo); // cerrar el arcivo

    printf("Identificadores encontrados:\n");
    printf("Mientras: %d\n", contador_mientras);
    printf("Capturar: %d\n", contador_capturar);
    printf("Switch: %d\n", contador_switch);
    printf("Funcion: %d\n", contador_funcion);
    printf("Imprimir: %d\n", contador_imprimir);
    printf("Entero: %d\n", contador_entero);
    printf("Cadena: %d\n", contador_cadena);
    printf("Suma: %d\n", contador_suma);
    printf("Resta: %d\n", contador_resta);
    printf("Multiplicacion: %d\n", contador_multiplicacion);
    printf("Division: %d\n", contador_division);
    printf("Asignacion: %d\n", contador_asignacion);
    printf("Comparador: %d\n", contador_comparador);

    return 0;
}