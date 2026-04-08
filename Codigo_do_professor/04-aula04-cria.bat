@echo off
setlocal EnableDelayedExpansion

REM =========================================================
REM Defina a aula aqui
REM =========================================================
set "AULA=04-aula04\04-2026-03-18_Tipos_De_Variaveis"

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
set ALUNOS_T1=ABNER_BARBOSA_SANTOS_VALENTIM-R355080 BRENO_NASCIMENTO_DE_B_SILVA-H963028 CAIANE_ALENCAR_DA_SILVA-R3498C2 DALTON_AUGUSTO_NEVES_PEREIRA-R2676I0 DANILO_ANTUNES_SOFIA-H805IB4 DAVID_CESAR_DOS_SANTOS_SANTANA-H935IB5 EDUARDO_NEGRAO_SIEBIGER-R306HJ9 GEORGE_SILVA_SANTOS-R213676 GERSON_DE_OLIVEIRA_BENTO_VIEIR-T363FH5 GUILHERME_MEDEIROS_OLIVEIRA-H944120 GUILHERME_OLIVEIRA_SILVA-H936977 GUILHERME_TRINDADE_BARROS-H97DEC7 GUSTAVO_BARROS_SIEGEL-H736102 IGOR_NASCIMENTO_DE_OLIVEIRA-H8416I6 IOHANNY_ELIAS_CAVALCANTE-H971071 ISAQUE_DIAS-R279GG0 JOÃO_VITOR_LIMA_ASSIS_DOS_SANT-H978750 KAYK_DANTAS_DA_SILVA-R780805 LEONARDO_NUNES_DOS_SANTOS-R325GG1 MATHEUS_MACIEL_DA_SILVA-H8843B8 MIGUEL_ARAUJO_DOS_SANTOS_TAVAR-R311872 PAULO_HENRIQUE_RAMIREZ_CAHIM-R2358F1 SAMUEL_HENRIQUE_DE_A_LOPES-R268IC0 SANER_LEANDRO_PAULO_JUNIOR-R272FC5 SOFIA_RIBEIRO_CARVALHO-H9143B4 TIAGO_ESTRELA_DANTAS-R334112 VITOR_DE_JESUS_OLIVEIRA-H85CBH4 YASMIN_GIOLLI_MARQUES_FERREIRA-G942388 YASMIN_VITORIA_DA_SILVA_RUFINO-H866251
set ALUNOS_T2=GABRIEL_DE_ALMEIDA_MALAGODI-H974GI3 HENRIQUE_CERTO_LUTTENSCHLAGER-H9523F6 HENRIQUE_OLIVEIRA_DA_SILVA-R305CD7 HIGOR_GABRIEL_BATISTA_MARTINS-H976340 IGOR_FERRAZ_VIEIRA-R340EA7 JEQUISON_CRUZ_SILVA-R3460F0 KAUE_SANCHES_LIMA_FELIX-H800DB6 KAUE_TORELI_CORTEZ-R293CE7 LARISSA_SPIR_DOS_REIS-R333AE4 LEONARDO_KLOCK_MARQUES-H841682 LUCAS_DE_SA_SIQUEIRA-H95CAG3 LUCAS_EDUARDO_AMARAL-H973HI4 LUCAS_NOJIRI_PEREGRINI_RIBEIRO-H88CGI5 LUCAS_RIBEIRO_ROCHA-R264882 LUCAS_SOUZA_PEREIRA_SILVA-R2674G0 LUCCA_MORAES_BERTOLOTTI-H978IF9 LUIS_HENRIQUE_A_DE_ALMEIDA-H960789 MALCOLM_SANTANA-R348350 MARCOS_VINICIUS_DA_SILVA_SOUZA-H745888 MARIANE_RODRIGUES_DOS_REIS-H96FAH6 MARIANY_DE_LIMA_MOTA-H9385G6 MATHEUS_ANTÔNIO_SANTOS-R333BG8 MATHEUS_CARDOSO_PRADELLA-H9355G7 MATHEUS_FELIPE_MATOS_DE_SOUZA-H8764I0 MATHEUS_PAULINO_V_DA_SILVA-H9494F2 MATTEO_MATARAZZO_PEDRO-R352HE0 MICHAEL_GARBIM_MARTINS-H870DA6 MURILO_GUELERE_QUEIROZ-H83JAI9 MURILO_OLIVEIRA_DE_SOUZA-H9423B8 NICOLAS_MACHADO_FERREIRA-R230287 NIKOLLAS_RAMON_GARCIA-H980HB3 PABLO_HENRIQUE_SILVA_SOUZA-R2660H2 PATRICK_FILIPPOS_DADAMOS-H978DI7 PAULO_HENRIQUE_LOPES_AMORIM-R304BD3 PEDRO_H_DE_M_BITTENCOURT-H93CAE6 PEDRO_HENRIQUE_F_DOS_SANTOS-H946JF7 PEDRO_HENRIQUE_MARTINS_NUNES-R3070B1 PEDRO_ROCHA_LEITE-H856DG2 RAFAEL_ZAMPRONIO_FILHO-H966IJ3 RAISSA_S_FERNANDES_DA_SILVA-R303FI7 RAYANE_RIBEIRO_NOGUEIRA_SANTOS-R287IG7 RENAN_DE_OLIVEIRA_BISPO-R2134H5 RICHARD_FERNANDES_KOBS-H895BC0 RICHARD_SILVA_REIS-H973155 SAMUEL_SIMELI_DO_NASCIMENTO-H95GHF1 SOPHIA_CARVALHO_DOS_ANJOS-R289443 SOPHIA_DOS_SANTOS_ALVES-H9557E6 VICTOR_G_DA_S_VASCONCELOS-H954541 VICTOR_GABRIEL_RODRIGUES_BONFI-H9810D8 VICTOR_HENRIQUE_SANTOS_ROSSATI-R308AB5 VINICIUS_AUGUSTO_DE_MENEZES-H9804A6 VINICIUS_SANTINHO_CORCINO-H936918 VINICIUS_VERISSIMO_DE_C_SILVA-R581403 VITOR_CARVALHO_DE_BRITO-R311GJ5 VITOR_COPPI_DE_OLIVEIRA-H92HHJ4 VITOR_SANTOS-R2513F0 WILLIAM_SOUZA_CRUZ-H9764I4 YASMIN_ROCHA_CARVALHO-H839890 YURI_SOUSA_GOMES-H978696 GABRIELA_HECKMANN_DE_L_MOLLO-H971JC7 MARIANA_ZANELLA_P_DA_CRUZ-R140911

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