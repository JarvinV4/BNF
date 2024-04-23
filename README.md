1. bnf_main: Contiene la bnf completada.
2. Archivos programa[#]: Contienen los programas utilizados en el video para realizar pruebas de escritorio.
3. videoDemostracion: Archivo txt con enlace directo a youtube sobre la demostracion de pruebas de escritorio de la bnf.
4. Carpeta lex:
     a. prueba.txt: Es el archivo txt que nuestro lex va a analizar.
     b. lex_bnf.l: Archivo bnf antes de generar codigo fuente en C.
     c. lex.yy.c: Archivo C generado a partir del archivo lex_bnf.l
     d. lex1.exe: Archivo ejecutable generado a partir del archivo C.

Lista de comandos [NO OLVIDAR]:
 $ flex lex_bnf.l
 $  gcc lex.yy.c -o lex1.exe -lfl
 $ ./lex1.exe
