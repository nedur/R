# Introdução ao R
# Núcleo de Estudos em Desenvolvimento Urbano e Regional - NEDUR
# Prof. Vinicius A. Vale, Tania M. Alberti & Davi W. Catelan
# Julho, 2022

{
  # 1. Introdução
  # O curso Introdução ao R tem como objetivo apresentar os elementos básicos
  # do software R e do RStudio, incluindo linguagem, operações básicas,
  # criação de objetos, importação e exportação de dados, manipulação de
  # dados e visualização.
  
  # Mais detalhes em http://nedur.ufpr.br/cursos/

} # 1. Introdução
{
  # 2. R e RStudio
  # Links:
  # https://cloud.r-project.org/
  # https://rstudio.com/products/rstudio/download/
  
} # 2. R e RStudio
{
  # 3. Links úteis
  # Acesse o material em http://nedur.ufpr.br/cursos/
  
} # 3. Links úteis
{
  # 4. Passos iniciais
  
  # Novo R Script
  # File > New File > R Script
  # Ou Ctrl + Shift + N
  
  # Definição do diretório de trabalho 
  # ATENÇÃO: mude para o seu diretório
  
  # Opção com /:
  setwd("C:/Users/vinic/Desktop/INTRO-R")
  
  # Opção com \\:
  setwd("C:\\Users\\vinic\\Desktop\\INTRO-R")
  
  # Verificação do diretório de trabalho "setado"
  getwd()
  
  # Limpar o Environment
  rm(list = ls())
  
} # 4. Passos iniciais
{
  # 5. Packages
  
  # Instalação pacotes
  install.packages()
  
  install.packages("ggplot2")
  
  #install.packages("dplyr")
  #install.packages("tidyverse")
  
  # Leitura pacotes
  library()
  
  library(ggplot2)
  library(dplyr)
  library(tidyverse)
  
  {
    ## EXTRA ##
    # A função require geralmente é usada dentro de funções
    require(ggplot2)
    
    # "Unload"
    detach(package:ggplot2)
    
  } ## EXTRA ##

} # 5. Packages
{
  # 6. Ajuda
  # Ajuda (help R) e exemplos
  ?sum
  ?dplyr
  example(sum)
  
  {
    ## EXTRA ##
    # Argumentos de uma função
    # Argument list of a function
    args(sum)
    args(filter)
    ?filter
    args(ggplot)
    library(dplyr)
    args(ggplot)
    ?ggplot
    
  } ## EXTRA ##

} # 6. Ajuda
{
  # 7. Operações básicas
  
  {
    # 7.1 Operadores aritméticos
    ?Arithmetic
    2 + 2
    4 - 2
    3 * 2
    4 / 2
    4 ^ 2
    4 ** 2
    5 %/% 2
    
    {
      ## EXTRA ##
      10 %/% 3
      5 %% 2
      13 %% 12
      12 %% 12
      
    } ## EXTRA ##

    
  } # 7.1. Operadores aritméticos
  {
    # 7.2. Operadores lógicos
    ?Logic
    5 == 5
    5 == 4
    5 > 4
    5 > 6
    5 > 5
    5 >= 5
    6 < 10
    6 < 5
    6 < 6
    5 <= 5
    
    {
      ## EXTRA ##
      
      # Lógica
      isTRUE(FALSE)
      isTRUE(5>5)
      isTRUE(5==5)
      isFALSE(FALSE)
      TRUE == TRUE
      TRUE == FALSE
      TRUE != TRUE
      TRUE != FALSE
      
      # Ordem alfabética
      "Aline" > "Caio"
      "Aline" < "Caio"
      
    } ## EXTRA ##
    
  } # 7.2. Operadores lógicos
  {
    # Exercícios
    
    #E1.
    #a
    5 + 2 ** 2
    
    #b
    10 * 2 ** 4
    10 * 2 ^ 4
    
    #c
    10 * 2 ^ 0.5
    10 * 2 ^ (1/2)
    20 ^ 0.5 #Extra
    
    #d
    40 / 2 ** 2
    (40 / 2) ** 2 #Extra
    
    #e
    2 / 0
    ?Syntax
    #( ), ^, / and *, + and -
    
    #E2.
    #a
    10 %/% 3 %% 2
    
    #b
    10 %/% (3 %% 2)
    
    #E3.
    #a
    !(3==3)
    (3==3) #Extra
    
    #b
    (3==3) | (4==7)
    (4==7) | (3==3)
    
    #c
    (3==3) & (4==7)
    
    #d
    isFALSE((3==3) & (4==7))
    
    isfalse((3==3) & (4==7)) #Error in isfalse: could not find function "isfalse"
  
  } # Exercícios
  
  rm(list = ls())
  
} # 7. Operações básicas
{
  # 8. Objetos e classes
  # Acesse o material em http://nedur.ufpr.br/cursos/
  
} # 8. Objetos e classes
{
  # 9. Variáveis
  x <- 5
  x
  y <- x + 1
  y
  z <- 2 * x
  z
  x = 5
  y = x + 1
  y
  
  {
    ## EXTRA ##
    w <- 7
    x <- 6
    y <- 8
  
  } ## EXTRA ##
  
  # Remover variáveis do Environment
  rm(y)
  rm(list = ls())
  
  {
    ## EXTRA ##
    x <- 5
    y <- x + 1
    w <- 10
    n <- 6
    b <- 7
    
    # List Objects
    ls()
    
    rm(list = ls()[!ls() %in% c("x")])
    
    y <- x + 1
    rm(list = ls()[!ls() %in% c("x","w")])
  
    y <- x + 1
    w <- 3
    rm(list = ls()[!ls() %in% c("x","w")])
    
    rm(list = ls())
    
    # Outros testes
    x <- 5
    y <- x + 1
    z <- 2 * x
    w <- 7
    rm(list = ls()[!ls() %in% c("x", "v")])
    
    } ## EXTRA ##

  rm(list = ls())
  
  {
    # Exercícios
    
    #E4.
    #a
    x <- 5
    x <- x + 1
    x
    
    #b
    x <- 5
    y <- 10
    x <- x + 1 * y
    x
    
    #c
    x <- 5
    y <- 10
    x <- (x + 1) * y
    x
    
    rm(list = ls())
    
  } # Exercícios
  
  rm(list = ls())
  
} # 9. Variáveis
{
  # 10. Vetores
  
  {
    # 10.1 Criação de vetores
    x <- c(1, 5, 6)
    x
    View(x)
    class(x)

    {
      ## EXTRA ##
      is.numeric(x)
      is.character(x)
      x <- as.character(x)
      class(x)
      x
      sum(x) # "Error in sum" porque x é "character"
      x <- as.numeric(x)
      class(x)
      sum(x)
      
      soma_x <- sum(x)
      
      z <- c(1, 5)
      class(z)
        
      w <- c(1, 5, "Vinicius")
      class(w)
      View(w)
      
    } ## EXTRA ##

    y <- c("NEDUR", "UFPR", "Regional", "Urbana")
    View(y)
    class(y)
    
    v <- c(TRUE, FALSE, TRUE)
    v
    class(v)
    
    {
      ## EXTRA ##
      q <- c(T, F, T)
      q
      
      as.numeric(q)
      
      g <- c(TRUE, 3, 6)
      class(g)
      
    } ## EXTRA ##
    
    g <- c("NEDUR", TRUE, 10)
    g
    class(g)
    
    r <- c(1:5)
    r
    
    {
      ## EXTRA ##
      j <- c(1, 2, 3, 4, 5)
      j
        
    } ## EXTRA ##
    
    q <- seq(2, 4, by = 0.5)
    q

    {
      ## EXTRA ##
      m <- seq(from = 2, to = 4, by = 0.5)
      
      z <- seq(4, 2, by = 0.5) # "Error in seq.default" dos argumentos
      
      u <- seq(to = 4, from = 2, by = 0.5)
      u
      
      h <- seq(to = 4, by = 0.5, from = 2)
      h
      
    } ## EXTRA ##
    
    seq(1, 9, by = 2)
    seq(1, 10, by = 1)
    seq(1, 9, by = pi)
    pi
    
    seq(0, 1, length = 1)
    seq(0, 1, length = 2)
    seq(0, 1, length = 3)
    seq(0, 1, length = 4)
    seq(0, 1, length = 5)
    
    seq(to = 1, from = 0, length = 4)
    seq(length = 4, to = 1, from = 0)
    
    w <- rep(5, times = 3)
    w
    replicate(5, 3)
    ?rep
    ?replicate
    e <- rep("NEDUR", times = 3)
    e
    
    rep(1:2, times = 3)
    rep(1:2, each = 3)
    rep(1:3, each = 4)
    
    # Limpar o Environment
    rm(list = ls())
    
  } # 10.1. Criação de vetores
  {
    # 10.2. Indexação de vetores
    g <- c(1, 5, "NEDUR", 2, 6)
    g
    
    g[3]
    
    g[4]
    
    g[2:4]
    
    g[-3]
    
    g[-(2:4)]
    
    g[c(1, 5)]
    
    n <- g[c(1, 5)]
    n
    
    {
      ## EXTRA ##
      n <- as.numeric(g[c(1, 5)])
      n
      class(n)
    
    } ## EXTRA ##
    
    
    v <- c(1, 2, 2, 4, 5)
    v
    v[v == 2]
    
    h <- v[v == 2]
    h
    
    v[v < 4]
    v[v %in% c(1, 2)]
    
    # Limpar o Environment
    rm(list = ls())
    
  } # 10.2. Indexação de vetores
  {
    # 10.3. Operações com vetores
    k <- c(2, 4, 6, 8, 10)
    k
    class(k)
    is.numeric(k)
    k * 2
    k / 2
    k + 1
    k - 1
    s <- c(1, 2, 3, 4, 5)
    b <- k + s
    b
    
    j <- c(1,2)
    
    l <- k + j # # longer object length is not a multiple of shorter object length
    
    length(k) 
    
    b >= 9
    b[b >= 9]
    which(b >= 9)
    
    {
      ## EXTRA ##
      g <- b >= 9
      g <- b[b >= 9]
      g
      
    } ## EXTRA ##
    
    # Limpar o Environment
    rm(list = ls())
    
  } # 10.3. Operações com vetores
  {
    # 10.4. Funções com vetores
   
    # Limpar o Environment
    rm(list = ls())
    
    x <- c(2, 4, 6, 8, 10)
        sum(x)
    mean(x)
    range(x)
    summary(x)
    
    z <- c(2, 4, 6, 10, 8)
    range(z)
    
  } # 10.4. Funções com vetores
  {
    # 10.5 Outras funções
    g <- c(5, 2, 2, 1, 10)
    sort(g)
    sort(g, decreasing = TRUE)
    sort(g, decreasing = T)
    sort(g, decreasing = F)
    ?sort
    table(g)
    
    {
      ## EXTRA ##
      v <- c(5, 5, 2, 2, 2, 1, 10)
      table(v)
      
    } ## EXTRA ##
    
    unique(g)
    w <- unique(g)
    w
    
    {
      ## EXTRA ##
      g
      duplicated(g)
      
    } ## EXTRA ##

    order(g)
    length(g)
    cumsum(g)
    is.na(g)
    
    {
      ## EXTRA ##
      t <- c(5, 2, 2, 1, NA)
      t
      is.na(t)
      
    } ## EXTRA ##
    
    dia <- c(01, 14, 30)
    mes <- c("jan", "mai", "dez")
    ano <- c(1980, 1990, 2020)
    paste(dia)
    as.character(dia)
    data <- paste(dia, mes, ano)
    data
   
    {
      ## EXTRA ##
      data <- paste(dia, mes, ano, sep = "-")
      data
      data <- paste(dia, mes, ano, sep = "/")
      data
      data <- paste0(dia, mes, ano)
      data    
      data <- paste(dia, mes, ano, sep = " ")
      data
      
    } ## EXTRA ##
    
    # Limpar o Environment
    rm(list = ls())
    
  } # 10.5 Outras funções
  {
    # Exercícios
    
    #E5.
    #a
    v <- c(1, "5", 6)
    class(v)
    v
    
    #b
    k <- c(False, True, False) # "Error: object 'False' not found"
    class(k) # "Error: object 'k' not found"
    k # "Error: object 'k' not found"
    
    k <- c("False", "True", "False")
    k
    class(k)
    
    #c
    p <- c(FALSE, TRUE, FALSE)
    class(p)
    p
    
    #d
    w <- c(F, TRUE, F)
    class(w)
    w
    
    #e
    z <- c(FALSE, TRUE, FALSE)
    class(z)
    z <- as.numeric(z)
    z
    
    #E6.
    #a
    x <- c("NEDUR", "NEDURcode", "UFPR", "Extensão")
    x[2]
    
    #b
    x <- c("NEDUR", "NEDURcode", "UFPR", "Extensão")
    x[-3]
    
    #c
    x <- c("NEDUR", "NEDURcode", "UFPR", "Extensão")
    x[c(1,3)]
    
    #d
    x <- c("NEDUR", "NEDURcode", "UFPR", "Extensão")
    x[x %in% c("NEDUR", "Pesquisa", "Extensão")]
    
    
  } # Exercícios
  
} # 10. Vetores
{
  # 11. Matrizes
  
  {
    # 11.1. Criação de matrizes
    ?matrix
    V <- matrix(1, ncol = 10, nrow = 10)
    V
    View(V)
    
    { 
      ## EXTRA ##
      D <- matrix(1, nrow = 10)
      D
    
      Z <- matrix(ncol = 10, nrow = 10)
      View(Z)
    
    } ## EXTRA ##
    
    C <- matrix(data = seq(1, 100),
               ncol = 10,
               nrow = 10)
    C
    
    C <- matrix(seq(1, 100), ncol = 10, nrow = 10)
    C
    
    { 
      ## EXTRA ##
      N <- matrix(seq(1, 100), ncol = 10, nrow = 5)
      N
      
    } ## EXTRA ##

    L <- matrix(seq(1, 100),
                ncol = 10,
                nrow = 10,
                byrow = TRUE)
    L
    
    c1 <- c(-1, 4)
    c2 <- c(3, 2)
    c1
    c2
    X <- cbind(c1, c2)
    X
    
    X <- cbind(c(-1, 4), c(3, 2))
    
    X <- matrix(c(-1, 4, 3, 2), nrow = 2, ncol = 2)
    X
    X <- rbind(c1, c2)

    N <- matrix(sample(c("NEDUR", "UFPR"), 25, replace = TRUE),
               ncol = 5,
               nrow = 5)
    N
    ?sample
    
    { 
      ## EXTRA ##
      matriz_notas <- matrix(
        c(10, 9, 7, 6),
        nrow = 2,
        ncol = 2,
        dimnames = list(c("Ana", "Caio"),
                        c("Micro", "Macro"))
      )
      
      matriz_notas <- matrix(
        c(10, 9, 7, 6),
        nrow = 2,
        ncol = 2)
      
      matriz_notas
      
    } ## EXTRA ##
    
  } # 11.1. Criação de matrizes
  {
    # 11.2. Indexação de matrizes
    C
    C[1, 2]
    
    { 
      ## EXTRA ##
      C[1, 2] <- 0
      C
      
      C[1, 2] <- 11
      C
      
    } ## EXTRA ##
    
    C[3, ]
    C[2:4, ]
    C[, 1]
    C[, 1:3]
    C[-1, -1]
    C[, -c(2:10)]
    
    
  } # 11.2. Indexação de matrizes
  {
    # 11.3. Operação de matrizes
    C
    C * 10
    C / 10
    C + 10
    C - 10
    C >= 50
    C[C >= 50]
    
  } # 11.3. Operação de matrizes
  {
    # 11.4. Outras funções
    sum(C)
    mean(C)
    sd(C)
    range(C)
    t(C)
    rowSums(C)
    rowMeans(C)
    colSums(C)
    colMeans(C)
    summary(C)
    
    # Limpar o Environment
    rm(list = ls())
    
    X <- cbind(c(-1, 4), c(3, 2))
    X
    Y <- cbind(c(1, 3), c(2, 4))
    Y
    X + Y
    X - Y
    X / Y
    X %*% Y
    X * Y
    I = diag(2)
    I = diag(24) # Extra
    I
    solve(Y)
    
    # Limpar o Environment
    rm(list = ls())
    
  } # 11.4. Outras funções
  {
    # Exercícios
    #E7.
    A <- matrix(data = seq(1, 25), ncol = 5, nrow = 5)
    A
    A[1, 3]
    
    #E8.
    B <- matrix(data = seq(1, 25), ncol = 5, nrow = 5, byrow = TRUE)
    B
    B[1, 3]
    
    #E9.
    c1 <- c(1, 2)
    c2 <- c(4, 2)
    C <- cbind(c1, c2)
    C
    C[1,2]
    
    #E10.
    c1 <- c(1, 2)
    c2 <- c(4, 2)
    D <- rbind(c1, c2)
    D
    D[1,2]
    
    #E11.
    A
    A[3, 2] 
    A[2, 3]
    
    #E12. 
    A
    Amod <- A * 10
    Amod
    Amod[1, 4]
    
    #E13.
    S <- C + D
    S
    S[1, 2]
    
    #E14
    Dinv <- solve(D)
    Dinv
    Dinv[2, 1]
    
  } # Exercícios
  
  rm(list = ls())
  
} # 11. Matrizes
{
  # 12. Data frames e tibbles
  
  {
    # 12.1. Definição
    install.packages("wooldridge")
    library(wooldridge)
    data("wage1")
    str(wage1)
    class(wage1)
    ?wage1
    View(wage1)
    ?data
    ?str
    wage1
    install.packages("tibble")
    library(tibble)
    wage1tib <- as_tibble(wage1)
    class(wage1tib)
    View(wage1tib)
    wage1tib
    
    {
      ## EXTRA ##
      wage1$wage
      wage1tib$wage
      
      data.frame(a = c(1, 2), b = c(2, 3), c = a + b) # "Error in data.frame..."
      tibble(a = c(1, 2), b = c(2, 3), c = a + b)
      ?data.frame
      
    } ## EXTRA ##
    
    
  } # 12.1. Definição
  {
    # 12.2. Manipulando data frames
    wage1[2, 3]
    wage1[, c("wage", "educ")]
    
    {
      ## EXTRA ##
      wage2 <- wage1[, c("wage", "educ")]
      
      wage1[, 2]
      
      wage1$educ
      
      educ <- wage1$educ
      
      subset(wage1, wage > 10)
      
      Dados2 <- subset(wage1, female==1)
      Dados3 <- subset(wage1, female==1 & nonwhite==1)
      
      wage1_10 <- subset(wage1, wage > 10)
      
    } ## EXTRA ##
    
    summary(wage1$wage)
    
    summary(wage1)
    
    head(wage1)
    tail(wage1)
    ?subset
    ?head
    ?tail
    
  } # 12.2. Manipulando data frames
  {
    # 12.3. Transformando variáveis
    wage1$wage2x <- wage1$wage * 2
    
    names(wage1)
    
    {
      ## EXTRA ##
      wage1$exp2 <- wage1$exper ^ 2
    
      regressao1 <- lm(lwage ~ educ, data = wage1)
      regressao1
      summary(regressao1)
    
      regressao2 <- lm(lwage ~ educ+exper+exp2+female, data = wage1)
      regressao2
      summary(regressao2)
      
      #genero <- c("Masculino", "Feminino", "Feminino")
      #idade <- c(40, 37, 17)
      #estado <- c("casado", "casado", "solteiro")
      #b <- data.frame(gênero, idade, estado)
      #b
    
    } ## EXTRA ##
    
    # Limpar o Environment
    rm(list = ls())
    
  } # 12.3. Transformando variáveis
  {
    # Exercícios
    
    #E15.
    #install.packages("wooldridge")
    library(wooldridge)
    data("wage2")
    
    #E16.
    str(wage2)
    #Observações: 935
    #Variáveis: 17
    
    #E17.
    class(wage2)
    
    #E18.
    wage2[3, 2]
    #40 (horas)
    
    #E19.
    subwage2 <- wage2[, c("wage", "hours")]
    str(subwage2)
    #Observações: 935
    #Variáveis: 2
    
    #E20.
    swage2<- subset(wage2, hours > 40)
    str(swage2)
    #Observações: 386
    #Variáveis: 17
    
    library(tibble)
    swagetib <- as_tibble(swage2)
    
  } # Exercícios
  
  rm(list = ls())
  
} # 12. Data frames e tibbles
{
  # 13. Importação de dados
  
  {
    # 13.1. Arquivos CSV
    # Dados: https://nedur.github.io/r/EXP_2019.rar
    install.packages("readr")
    library(readr)
    dexp <- read_csv2("EXP_2019.csv")
    
    {
      ## EXTRA ##
      dexp2 <- read_delim("EXP_2019.csv", delim = ";", col_names = FALSE) # ERROR
      dexp3 <- read_delim("EXP_2019.csv", delim = ";", col_names = TRUE)

    } ## EXTRA ##
    
    
  } # 13.1. Arquivos CSV
  {
    # 13.2. Arquivos XLS E XLSX
    # Dados: http://nedur.github.io/r/EXP2019_ComexStat.xlsx
    
    install.packages("readxl")
    library(readxl)
    dados <- read_excel("EXP2019_ComexStat.xlsx")
    
    install.packages("xlsx")
    library(xlsx)
    dados2 <- read.xlsx(file = "EXP2019_ComexStat.xlsx", sheetName = "2019")
    
    install.packages("openxlsx")
    library(openxlsx)
    dados3 <- read.xlsx(xlsxFile = "EXP2019_ComexStat.xlsx", sheet = "2019")
    
    {
      ## EXTRA ##
      #ERROR: Unused arguments
      dados <- read.xlsx(file = "EXP2019_ComexStat.xlsx", sheetName = "2019")
      
      #Solução
      dados4 <- xlsx::read.xlsx(file = "EXP2019_ComexStat.xlsx", sheetName = "2019")
      dados6 <- openxlsx::read.xlsx(xlsxFile = "EXP2019_ComexStat.xlsx", sheet = "2019")
      
    } ## EXTRA ##
    
    # Limpar o Environment
    rm(list = ls()[!ls() %in% c("dexp")])
    
    
  } # 13.2. Arquivos XLS E XLSX
  
} # 13. Importação de dados
{
  # 14. Manipulação de dados
  install.packages("tidyverse")
  #install.packages("dplyr")
  #install.packages("tidyr")
  
  library(tidyverse)
  
  #library(dplyr)
  #library(tidyr)
  
  {
    ## EXTRA ##
    class(dexp)
    
    glimpse(dexp)
    names(dexp)
  
  } ## EXTRA ##
  
  dexp_mod <- select(dexp, c("CO_ANO", "CO_MES", "SG_UF_NCM", "VL_FOB"))
  
  {
    ## EXTRA ##
    dexp_mod <- select(dexp, c("CO_NCM" : "VL_FOB"))
    dexp_mod <- select(dexp, -("CO_NCM" :"VL_FOB"))
    dexp_mod <- select(dexp, contains("U"))
    dexp_mod <- select(dexp, starts_with("CO"))
    dexp_mod <- select_all(dexp)
    
  } ## EXTRA ##
  
  dexp_mod <- rename(dexp_mod, ano = CO_ANO, mes = CO_MES, uf = SG_UF_NCM, exp = VL_FOB)
  
  {
    ## EXTRA ##
    
    dexp_mod <- select_all(dexp) 
    
    dexp_mod <- rename(
      dexp_mod,
      ano = CO_ANO,
      mes = CO_MES,
      uf  = SG_UF_NCM,
      exp = VL_FOB
    )
    
    # ou
    
    dexp_mod <- select_all(dexp)
    
    dexp_mod <- dplyr::rename(
      dexp_mod,
      ano = CO_ANO,
      mes = CO_MES,
      uf  = SG_UF_NCM,
      exp = VL_FOB
    )
    
  } ## EXTRA ##
  
  dexp_mod <- mutate(dexp_mod, log_exp = log(exp))
  
  dexp_mod <- mutate(dexp_mod, exp = exp / 1000000000)
  
  {
    ## EXTRA ##
    dexp_mod2 <- transmute(dexp_mod, log = log(exp))
    
  } ## EXTRA ##
  
  dexp_mod <- group_by(dexp_mod, ano, uf)
  
  dexp_mod <- summarise(dexp_mod, exp = sum(exp))
  
  {
    ## EXTRA ##
    dexp_mod <- filter(dexp_mod, uf != "ND")
    
    ?ungroup
    
    dexp_mod <- ungroup(dexp_mod)
    
  } ## EXTRA ##

  dexp_pr <- filter(dexp_mod, uf == "PR")
  
  
  dexp_mod2 <- dexp %>% select("CO_ANO", "CO_MES", "SG_UF_NCM", "VL_FOB") %>%
    rename(
      ano = CO_ANO,
      mes = CO_MES,
      uf  = SG_UF_NCM,
      exp = VL_FOB
    ) %>%
    mutate(log_exp = log(exp)) %>%
    mutate(exp = exp / 1000000000) %>%
    group_by(ano, uf) %>%
    summarise(exp = sum(exp))
  
  dexp_pr2 <- dexp %>% select("CO_ANO", "CO_MES", "SG_UF_NCM", "VL_FOB") %>%
    rename(
      ano = CO_ANO,
      mes = CO_MES,
      uf  = SG_UF_NCM,
      exp = VL_FOB
    ) %>%
    mutate(exp = exp / 1000000000) %>%
    group_by(ano, uf) %>%
    summarise(exp = sum(exp)) %>%
    filter(uf == "PR")
  
  {
    ## EXTRA ##
    dexp_mod <- arrange(dexp_mod, exp)
  
    dexp_mod <- dexp_mod %>% 
      arrange(exp)
  
    View(dexp_mod)
  
    dexp_mod <- dexp_mod %>% 
       arrange(desc(exp))
  
    dexp_mod <- dexp_mod |> 
      arrange(desc(exp))
  
    View(dexp_mod)
  
    top_10_export <- top_n(dexp_mod, n = 10)
    View(top_10_export)
  
    top_5_export <- top_n(dexp_mod, n = 5)
    View(top_5_export)
  
    } ## EXTRA ##
  
  {
    # Exercícios
    
    #E21.
    dexp_mod_E21 <- select(dexp, c(1:5))
    View(dexp_mod_E21)
    
    #ou:
    dexp_mod_E21 <- select(dexp, c("CO_ANO" : "CO_PAIS"))
    View(dexp_mod_E21)
    
    names(dexp_mod_E21)
    glimpse(dexp_mod_E21)
    
    #E22.
    dexp_mod_E22 <- select(dexp, contains("E"))
    View(dexp_mod_E22)
    names(dexp_mod_E22)
    
    #E23.
    dexp_mod_E23 <- rename(dexp, pais = CO_PAIS, ncm = CO_NCM)
    View(dexp_mod_E23)
    
    n_distinct(dexp_mod_E23$ncm)
    
    #E24.
    dexp_mod_E24 <- mutate(dexp, valor = KG_LIQUIDO / 1000)
    View(dexp_mod_E24)
    glimpse(dexp_mod_E24)
    dexp_mod_E24
    
    #E25.
    dexp_mod_E25 <- transmute(dexp, valor = KG_LIQUIDO / 1000)
    View(dexp_mod_E25)
    glimpse(dexp_mod_E25)
    dexp_mod_E25
    
    #E26.
    dexp_mod_E26 <- dexp %>%
      rename(ano = CO_ANO, mes = CO_MES, uf = SG_UF_NCM, exp = VL_FOB) %>%
      group_by(mes)
    
    glimpse(dexp_mod_E26)
    
    #ou:
    dexp_mod_E26 <- rename(dexp, ano = CO_ANO, mes = CO_MES, uf = SG_UF_NCM, exp = VL_FOB)
    dexp_mod_E26 <- group_by(dexp_mod_E26, mes)
    
    #E27.
    #dexp_mod_E27 <- ...(dexp_mod_E6, exp = ...(exp))
    dexp_mod_E27 <- summarise(dexp_mod_E26, exp = sum (exp))
    View(dexp_mod_E27)
    glimpse(dexp_mod_E27)
    dexp_mod_E27
    
    #E28.
    dexp_mod_E28 <- filter(dexp, SG_UF_NCM %in% c("MG", "SP"))
    
    #ou
    dexp_mod_E28  <- filter(dexp, SG_UF_NCM == "MG" | SG_UF_NCM == "SP")
    
    View(dexp_mod_E28)
    
    top_n(dexp_mod_E28, n = 5, wt = VL_FOB)
    
    #E29.
    #dexp_mod_29 <- dexp %>% ...("CO_ANO", "CO_MES", "SG_UF_NCM", "VL_FOB") %>%
    #  ...(
    #    ano = CO_ANO,
    #    mes = CO_MES,
    #    uf  = SG_UF_NCM,
    #    exp = VL_FOB
    #  ) %>%
    #  ...(exp = exp / 1000000000) %>%
    #  ...(ano, uf) %>%
    #  ...(exp = sum(exp)) %>%
    #  ...(uf == "PR")
    
    #Resposta:  
    dexp_mod_E29 <- dexp %>% select("CO_ANO", "CO_MES", "SG_UF_NCM", "VL_FOB") %>%
      rename(
        ano = CO_ANO,
        mes = CO_MES,
        uf  = SG_UF_NCM,
        exp = VL_FOB
      ) %>%
      mutate(exp = exp / 1000000000) %>%
      group_by(ano, uf) %>%
      summarise(exp = sum(exp)) %>%
      filter(uf == "PR")
    

  } # Exercícios 
  
  rm(list = ls()[!ls() %in% c("dexp", "dexp_mod")])
  
} # 14. Manipulação de dados
{
  # 15. Exportação de dados
  
  {
    # 15.1. Dados em CSV
    library(readr)
    write_csv(dexp_mod, "Exp_UF_2019v.csv")
    write_csv2(dexp_mod, "Exp_UF_2019pv.csv")
    write_delim(dexp_mod, "Exp_UF_2019delim.csv", delim = ",")
    
    ?write_csv
    ?write_csv2
    ?write_delim
    
  } # 15.1. Dados em CSV
  {
    # 15.2. Dados em XLS e XLSX
    library(openxlsx)
    write.xlsx(dexp_mod, file = "Exp_UF_2019_27.xlsx", sheetName = "2019_27")
    
    library(xlsx)
    write.xlsx(dexp_mod, file = "Exp_UF_2019.xlsx", sheetName = "2019")
    
  } # 15.2. Dados em XLS e XLSX
  {
    # 15.3. Salvar objetos do R
    
    saveRDS(dexp_mod, file = "Exp_UF_2019_NEW.rds")
    
    teste <- readRDS(file = "Exp_UF_2019_NEW.rds")
    
    save(dexp, dexp_mod, teste, file = "Exp.RData")
    
    rm(list = ls())
    
    load("Exp.RData")
    
    {
      ## EXTRA ##
      save.image("objetos_curso.RData")
      rm(list = ls())
      load("objetos_curso.RData")
    
    } ## EXTRA ##

  } # 15.3. Salvar objetos do R
  
} # 15. Exportação de dados
{
  # 16. Gráficos
  install.packages("ggplot2")
  library(ggplot2)
  load("Exp.RData")
  
  ggplot(data = dexp_mod)
  
  ggplot(data = dexp_mod, aes(x = uf, y = exp))
  
  ggplot(data = dexp_mod, aes(x = uf, y = exp)) +
    geom_col()
  
  ggplot(data = dexp_mod, aes(x = uf, y = exp)) +
    geom_col(fill = "red")
  
  ggplot(data = dexp_mod, aes(uf, exp)) +
    geom_col(fill = "blue")
  
  ggplot(data = dexp_mod, aes(uf, exp)) +
    geom_col(fill = "blue") +
    xlab("Unidades da Federação") +
    ylab("Valor FOB em bilhões US$") +
    ggtitle("Exportações") +
    labs(subtitle = "2019") +
    theme(plot.title = element_text(hjust = 0.5)) +
    theme(plot.subtitle = element_text(hjust = 0.5))
  
  ggplot(data = dexp_mod, aes(uf, exp)) +
    geom_col(fill = "blue") +
    theme_minimal() +
    xlab("Unidades da Federação") +
    ylab("Valor FOB em bilhões US$") +
    ggtitle("Exportações") +
    labs(subtitle = "2019") +
    theme(plot.title = element_text(hjust = 0.5)) +
    theme(plot.subtitle = element_text(hjust = 0.5))
  
  
  {
    ## EXTRA ## 
   
    ggplot(data = dexp_mod, aes(uf, exp)) +
      geom_col(fill = "blue") +
      theme_bw() +
      xlab("Unidades da Federação") +
      ylab("Valor FOB em bilhões US$") +
      ggtitle("Exportações") +
      labs(subtitle = "2019") +
      theme(plot.title = element_text(hjust = 0.5)) +
      theme(plot.subtitle = element_text(hjust = 0.5))
    
    ggplot(data = dexp_mod, aes(uf, exp)) +
      geom_col(fill = "blue") +
      theme_bw() +
      xlab("Unidades da Federação") +
      ylab("Valor FOB em bilhões US$") +
      ggtitle("Exportações") +
      labs(subtitle = "2019") +
      theme(plot.title = element_text(hjust = 0.5)) +
      theme(plot.subtitle = element_text(hjust = 0.5))
    
    ggplot(data = dexp_mod, aes(uf, exp)) +
      geom_col(fill = "blue") +
      theme_classic() +
      xlab("Unidades da Federação") +
      ylab("Valor FOB em bilhões US$") +
      ggtitle("Exportações") +
      labs(subtitle = "2019") +
      theme(plot.title = element_text(hjust = 0.5)) +
      theme(plot.subtitle = element_text(hjust = 0.5))
    
    ggplot(data = dexp_mod, aes(uf, exp)) +
      geom_col(fill = "blue") +
      theme_dark() +
      xlab("Unidades da Federação") +
      ylab("Valor FOB em bilhões US$") +
      ggtitle("Exportações") +
      labs(subtitle = "2019") +
      theme(plot.title = element_text(hjust = 0.5)) +
      theme(plot.subtitle = element_text(hjust = 0.5))
    
    install.packages("ggthemes")
    library(ggthemes)
    
    #The Economist Theme
    ggplot(data = dexp_mod, aes(uf, exp)) +
      geom_col(fill = "blue") +
      theme_economist() +
      xlab("Unidades da Federação") +
      ylab("Valor FOB em bilhões US$") +
      ggtitle("Exportações") +
      labs(subtitle = "2019") +
      theme(plot.title = element_text(hjust = 0.5)) +
      theme(plot.subtitle = element_text(hjust = 0.5))
    
    #Wall Street Journal Theme
    ggplot(data = dexp_mod, aes(uf, exp)) +
      geom_col(fill = "blue") +
      theme_wsj() +
      xlab("Unidades da Federação") +
      ylab("Valor FOB em bilhões US$") +
      ggtitle("Exportações") +
      labs(subtitle = "2019") +
      theme(plot.title = element_text(hjust = 0.5)) +
      theme(plot.subtitle = element_text(hjust = 0.5))
    
    
    ## Exportação do gráfico
    
    g1 <- ggplot(data = dexp_mod, aes(uf, exp)) +
      geom_col(fill = "blue") +
      xlab("Unidades da Federação") +
      ylab("Valor FOB em bilhões US$") +
      ggtitle("Exportações") +
      labs(subtitle = "2019") +
      theme(plot.title = element_text(hjust = 0.5)) +
      theme(plot.subtitle = element_text(hjust = 0.5))
    
    class(g1)
    
    ggsave("Exportação.png", plot = g1)
    
    ggsave("Exportação.png", plot = g1, width = 12, height = 8)
    
    g1
    
    # Package esquisse
    install.packages("esquisse")
    library(esquisse)
    esquisser(dexp_mod)
    
    ggplot(dexp_mod) +
      aes(x = uf, weight = exp) +
      geom_bar(fill = "#FF8C00") +
      labs(
        x = "UFS",
        y = "EXP",
        title = "Gráfico 1",
        subtitle = "BBBBB",
        caption = "Fonte: Autor"
      ) +
      theme_minimal() +
      theme(plot.title = element_text(size = 16L, face = "bold"))
    
    library(ggplot2)
    
    ggplot(dexp_mod) +
      aes(x = uf, weight = exp) +
      geom_bar(fill = "#AF640A") +
      labs(x = "UF", y = "EXP", 
           title = "TESTE", subtitle = "teste", caption = "Fonte: EU") +
      theme_minimal()
    
    library(ggplot2)
    
    ggplot(dexp_mod) +
      aes(x = uf, weight = exp) +
      geom_bar(fill = "#874D56") +
      labs(x = "UF", y = "EXP", 
           title = "Teste", subtitle = "Teste2", caption = "EU") +
      theme_minimal()
  
  } ## EXTRA ##
  

} # 16. Gráficos
{
  # 17. Mapas
  
  ## ERROR ##
  # install.packages("geobr")
  # Warning in install.packages :
  # package ‘geobr’ is not available for this version of R
  # Package ‘geobr’ was removed from the CRAN repository.
  
  # devtools: Tools to Make Developing R Packages Easier
  install.packages("devtools")
  
  devtools::install_github("ipeaGIT/geobr", subdir = "r-package")
  
  library(geobr)
  install.packages("sf")
  library(sf)
  
  #install.packages("crul")
  
  library(ggplot2)
  library(dplyr)
  
  load("Exp.RData")
  
  shapeUF <- read_state()
  
  class(shapeUF)
  
  View(shapeUF)
  
  expuf <- left_join(shapeUF, dexp_mod, by = c("abbrev_state" = "uf"))
  
  ggplot() +
    geom_sf(data = expuf,
            aes(fill = exp),
            color = "white",
            size = .15) +
    theme_minimal() +
    labs(title = "Exportações",
         subtitle = "2019",
         caption = "Fonte: Elaboração própria.") +
    scale_fill_distiller(palette = "Reds", name = "Valor FOB Bilhões US$")
  
    
  ggplot() +
    geom_sf(data = expuf,
            aes(fill = exp),
            color = "white",
            size = .15) +
    theme_minimal() +
    labs(title = "Exportações",
         subtitle = "2019",
         caption = "Fonte: Elaboração própria.") +
    scale_fill_distiller(palette = "Reds",
                         trans = "reverse",
                         name = "Valor FOB Bilhões US$")
    
  
  ggplot() +
    geom_sf(data = expuf,
            aes(fill = exp),
            color = "white",
            size = .15) +
    theme_minimal() +
    labs(title = "Exportações",
         subtitle = "2019",
         caption = "Fonte: Elaboração própria.") +
    scale_fill_distiller(palette = "Reds",
                         trans = "reverse",
                         name = "Valor FOB Bilhões US$") +
   theme(
      axis.text.x = element_blank(),
      axis.text.y = element_blank(),
      panel.grid = element_blank()
    )

  
  {
    ## EXTRA ##
    
    ggplot() +
      geom_sf(data = expuf,
              aes(fill = exp),
              color = "white",
              size = .15) +
      theme_minimal() +
      labs(title = "Exportações",
           subtitle = "2019",
           caption = "Fonte: Elaboração própria.") +
      scale_fill_distiller(palette = "Reds",
                           trans = "reverse",
                           name = "Valor FOB Bilhões US$") +
      theme(plot.title = element_text(hjust = 0.5)) +
      theme(plot.subtitle = element_text(hjust = 0.5))
    
    ggplot() +
      geom_sf(data = expuf,
              aes(fill = exp),
              color = "white",
              size = .15) +
      labs(title = "Exportações",
           subtitle = "2019",
           caption = "Fonte: Elaboração própria.") +
      scale_fill_distiller(palette = "Reds",
                           trans = "reverse",
                           name = "Valor FOB Bilhões US$") +
      theme(plot.title = element_text(hjust = 0.5)) +
      theme(plot.subtitle = element_text(hjust = 0.5)) 
    
    f1 <-  ggplot() +
      geom_sf(data = expuf,
              aes(fill = exp),
              color = "white",
              size = .15) +
      theme_minimal() +
      labs(title = "Exportações",
           subtitle = "2019",
           caption = "Fonte: Elaboração própria.") +
      scale_fill_distiller(palette = "Reds",
                           trans = "reverse",
                           name = "Valor FOB Bilhões US$") +
      theme(plot.title = element_text(hjust = 0.5)) +
      theme(plot.subtitle = element_text(hjust = 0.5))
    
    class(f1)
    
    ggsave("Mapa_EXP.png", plot = f1)
    
    ## EXTRA ##
    install.packages("patchwork")
    library(patchwork)
    (g1 | f1)
    
  } ## EXTRA ##
  
} # 17. Mapas

# Comentários ou Sugestões
# vinicius.a.vale@gmail.com | viniciusvale@ufpr.br
# taniamoreiraalberti@gmail.com
# daviwindercatelan.ecae@gmail.com