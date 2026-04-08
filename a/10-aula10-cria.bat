@echo off
setlocal EnableDelayedExpansion

REM =========================================================
REM Defina a aula aqui
REM =========================================================
set "AULA=10-aula10\10-2026-05-06_Programacao_OO-parte2"

REM =========================================================
REM IDENTIFICADORES INTERNOS DAS TURMAS
REM =========================================================
set TURMAS=T1 T2

REM =========================================================
REM NOMES REAIS DAS TURMAS
REM =========================================================
set NOME_TURMA_T1=GTI-TI1P13
set NOME_TURMA_T2=ADS-DS1R13

REM =========================================================
REM LISTA DE ALUNOS POR TURMA
REM =========================================================
set ALUNOS_T1=DATALEVE
set ALUNOS_T2=GABRIELA_HECKMANN_DE_L_MOLLO-H971JC7 MARIANA_ZANELLA_P_DA_CRUZ-R140911

REM =========================================================
REM LAÇO 1: CRIA DIRETÓRIOS DAS TURMAS
REM =========================================================
for %%T in (%TURMAS%) do (
    call set "PASTA_TURMA=%%NOME_TURMA_%%T%%"
    echo Criando diretório da turma !PASTA_TURMA!
    mkdir "%AULA%\!PASTA_TURMA!" 2>nul
)

REM =========================================================
REM LAÇO 2: PROCESSA CADA TURMA
REM =========================================================
for %%T in (%TURMAS%) do (

    call set "PASTA_TURMA=%%NOME_TURMA_%%T%%"
    call set "LISTA_ALUNOS=%%ALUNOS_%%T%%"

    echo.
    echo Processando turma !PASTA_TURMA!

    for %%A in (!LISTA_ALUNOS!) do (

        echo Criando estrutura para !PASTA_TURMA!\%%A

        mkdir "%AULA%\!PASTA_TURMA!\%%A" 2>nul

        mkdir "%AULA%\!PASTA_TURMA!\%%A\exercicio-1"  2>nul
        mkdir "%AULA%\!PASTA_TURMA!\%%A\exercicio-2"  2>nul
        mkdir "%AULA%\!PASTA_TURMA!\%%A\exercicio-3"  2>nul
        mkdir "%AULA%\!PASTA_TURMA!\%%A\exercicio-4"  2>nul
        mkdir "%AULA%\!PASTA_TURMA!\%%A\exercicio-5"  2>nul
        mkdir "%AULA%\!PASTA_TURMA!\%%A\exercicio-6"  2>nul
        mkdir "%AULA%\!PASTA_TURMA!\%%A\exercicio-7"  2>nul
        mkdir "%AULA%\!PASTA_TURMA!\%%A\exercicio-8"  2>nul
        mkdir "%AULA%\!PASTA_TURMA!\%%A\exercicio-9"  2>nul
        mkdir "%AULA%\!PASTA_TURMA!\%%A\exercicio-10" 2>nul

        (echo #exercicio1)  > "%AULA%\!PASTA_TURMA!\%%A\exercicio-1\algoritmo1.txt"
        (echo //exercicio1) > "%AULA%\!PASTA_TURMA!\%%A\exercicio-1\exercicio1.c"
        (echo #exercicio1)  > "%AULA%\!PASTA_TURMA!\%%A\exercicio-1\exercicio1.py"
        (echo //exercicio1) > "%AULA%\!PASTA_TURMA!\%%A\exercicio-1\exercicio1.java"

        (echo #exercicio2)  > "%AULA%\!PASTA_TURMA!\%%A\exercicio-2\algoritmo2.txt"
        (echo //exercicio2) > "%AULA%\!PASTA_TURMA!\%%A\exercicio-2\exercicio2.c"
        (echo #exercicio2)  > "%AULA%\!PASTA_TURMA!\%%A\exercicio-2\exercicio2.py"
        (echo //exercicio2) > "%AULA%\!PASTA_TURMA!\%%A\exercicio-2\exercicio2.java"

        (echo #exercicio3)  > "%AULA%\!PASTA_TURMA!\%%A\exercicio-3\algoritmo3.txt"
        (echo //exercicio3) > "%AULA%\!PASTA_TURMA!\%%A\exercicio-3\exercicio3.c"
        (echo #exercicio3)  > "%AULA%\!PASTA_TURMA!\%%A\exercicio-3\exercicio3.py"
        (echo //exercicio3) > "%AULA%\!PASTA_TURMA!\%%A\exercicio-3\exercicio3.java"

        (echo #exercicio4)  > "%AULA%\!PASTA_TURMA!\%%A\exercicio-4\algoritmo4.txt"
        (echo //exercicio4) > "%AULA%\!PASTA_TURMA!\%%A\exercicio-4\exercicio4.c"
        (echo #exercicio4)  > "%AULA%\!PASTA_TURMA!\%%A\exercicio-4\exercicio4.py"
        (echo //exercicio4) > "%AULA%\!PASTA_TURMA!\%%A\exercicio-4\exercicio4.java"

        (echo #exercicio5)  > "%AULA%\!PASTA_TURMA!\%%A\exercicio-5\algoritmo5.txt"
        (echo //exercicio5) > "%AULA%\!PASTA_TURMA!\%%A\exercicio-5\exercicio5.c"
        (echo #exercicio5)  > "%AULA%\!PASTA_TURMA!\%%A\exercicio-5\exercicio5.py"
        (echo //exercicio5) > "%AULA%\!PASTA_TURMA!\%%A\exercicio-5\exercicio5.java"

        (echo #exercicio6)  > "%AULA%\!PASTA_TURMA!\%%A\exercicio-6\algoritmo6.txt"
        (echo //exercicio6) > "%AULA%\!PASTA_TURMA!\%%A\exercicio-6\exercicio6.c"
        (echo #exercicio6)  > "%AULA%\!PASTA_TURMA!\%%A\exercicio-6\exercicio6.py"
        (echo //exercicio6) > "%AULA%\!PASTA_TURMA!\%%A\exercicio-6\exercicio6.java"

        (echo #exercicio7)  > "%AULA%\!PASTA_TURMA!\%%A\exercicio-7\algoritmo7.txt"
        (echo //exercicio7) > "%AULA%\!PASTA_TURMA!\%%A\exercicio-7\exercicio7.c"
        (echo #exercicio7)  > "%AULA%\!PASTA_TURMA!\%%A\exercicio-7\exercicio7.py"
        (echo //exercicio7) > "%AULA%\!PASTA_TURMA!\%%A\exercicio-7\exercicio7.java"

        (echo #exercicio8)  > "%AULA%\!PASTA_TURMA!\%%A\exercicio-8\algoritmo8.txt"
        (echo //exercicio8) > "%AULA%\!PASTA_TURMA!\%%A\exercicio-8\exercicio8.c"
        (echo #exercicio8)  > "%AULA%\!PASTA_TURMA!\%%A\exercicio-8\exercicio8.py"
        (echo //exercicio8) > "%AULA%\!PASTA_TURMA!\%%A\exercicio-8\exercicio8.java"

        (echo #exercicio9)  > "%AULA%\!PASTA_TURMA!\%%A\exercicio-9\algoritmo9.txt"
        (echo //exercicio9) > "%AULA%\!PASTA_TURMA!\%%A\exercicio-9\exercicio9.c"
        (echo #exercicio9)  > "%AULA%\!PASTA_TURMA!\%%A\exercicio-9\exercicio9.py"
        (echo //exercicio9) > "%AULA%\!PASTA_TURMA!\%%A\exercicio-9\exercicio9.java"

        (echo #exercicio10)  > "%AULA%\!PASTA_TURMA!\%%A\exercicio-10\algoritmo10.txt"
        (echo //exercicio10) > "%AULA%\!PASTA_TURMA!\%%A\exercicio-10\exercicio10.c"
        (echo #exercicio10)  > "%AULA%\!PASTA_TURMA!\%%A\exercicio-10\exercicio10.py"
        (echo //exercicio10) > "%AULA%\!PASTA_TURMA!\%%A\exercicio-10\exercicio10.java"
    )
)

echo.
echo Estrutura criada com sucesso.
pause