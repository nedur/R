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
  
  # Definição do diretório de trabalho (mude para o seu diretório)
  # Opção com /:
  setwd("C:/Users/vinic/R-VALE/Intro-R")
  
  # Opção com \\:
  setwd("C:\\Users\\vinic\\R-VALE\\Intro-R")
  
  # Verificação do diretório de trabalho "setado"
  getwd()
  
  # Limpar o Environment
  rm(list = ls())
  
} # 4. Passos iniciais
{
  # 5. Packages
  
  # Instalação pacotes
  install.packages("ggplot2")
  install.packages("dplyr")
  install.packages("tidyverse")
  
  # Leitura pacotes
  library(ggplot2)
  library(dplyr)
  library(tidyverse)
  
} # 5. Packages
{
  # 6. Ajuda
  # Ajuda (help R) e exemplos
  ?sum
  ?dplyr
  example(sum)
  
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
    
  } # 7.2. Operadores lógicos
  
} # 7. Operações básicas
{
  # 8. Objetos e classes
  # Acesse o material em http://nedur.ufpr.br/cursos/
  
} # 8. Objetos e classes
{
  # 9. Variáveis
  x <- 5
  y <- x + 1
  y
  z <- 2 * x
  z
  x = 5
  y = x + 1
  y
  
  # Remover variáveis do Environment
  rm(y)
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
    y <- c("NEDUR", "UFPR", "Regional", "Urbana")
    View(y)
    class(y)
    v <- c(TRUE, FALSE, TRUE)
    v
    class(v)
    g <- c("NEDUR", TRUE, 10)
    g
    class(g)
    r <- c(1:5)
    r
    q <- seq(2, 4, by = 0.5)
    q
    seq(1, 9, by = 2)
    seq(1, 10, by = 1)
    seq(1, 9, by = pi)
    pi
    seq(0, 1, length = 1)
    seq(0, 1, length = 2)
    seq(0, 1, length = 3)
    seq(0, 1, length = 4)
    seq(0, 1, length = 5)
    w <- rep(5, times = 3)
    w
    replicate(5, 3)
    ?rep
    ?replicate
    e <- rep("NEDUR", times = 3)
    e
    rep(1:2, times = 3)
    rep(1:2, each = 3)
    
    # Limpar o Environment
    rm(list = ls())
    
  } # 10.1. Criação de vetores
  {
    # 10.2. #Indexação de vetores
    g <- c(1, 5, "NEDUR", 2, 6)
    g[3]
    g[2:4]
    g[-3]
    g[-(2:4)]
    g[c(1, 5)]
    n <- g[c(1, 5)]
    n
    v <- c(1, 2, 2, 4, 5)
    v[v == 2]
    v[v < 4]
    v[v %in% c(1, 2)]
    
    # Limpar o Environment
    rm(list = ls())
    
  } # 10.2. Indexação de vetores
  {
    # 10.3. Operações com vetores
    k <- c(2, 4, 6, 8, 10)
    k
    k * 2
    k / 2
    k + 1
    k - 1
    s <- c(1, 2, 3, 4, 5)
    b <- k + s
    b
    b >= 9
    b[b >= 9]
    which(b >= 9)
    
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
    
  } # 10.4. Funções com vetores
  {
    # 10.5 Outras funções
    g <- c(5, 2, 2, 1, 10)
    sort(g)
    sort(g, decreasing = TRUE)
    ?sort
    table(g)
    unique(g)
    w <- unique(g)
    order(g)
    length(g)
    cumsum(g)
    is.na(g)
    dia <- c(01, 14, 30)
    mes <- c("jan", "mai", "dez")
    ano <- c(1980, 1990, 2020)
    paste(dia)
    as.character(dia)
    data <- paste(dia, mes, ano)
    data
    
    # Limpar o Environment
    rm(list = ls())
    
  } # 10.5 Outras funções
  
} # 10. Vetores
{
  # 11. Matrizes
  
  {
    # 11.1. Criação de matrizes
    ?matrix
    V <- matrix(1, ncol = 10, nrow = 10)
    V
    C <- matrix(data = seq(1, 100),
               ncol = 10,
               nrow = 10)
    C
    C <- matrix(seq(1, 100), ncol = 10, nrow = 10)
    C

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
    X <- rbind(c1, c2)

    N <- matrix(sample(c("NEDUR", "UFPR"), 25, replace = TRUE),
               ncol = 5,
               nrow = 5)
    N
    ?sample
    
  } # 11.1. Criação de matrizes
  {
    # 11.2. Indexação de matrizes
    C
    C[1, 2]
    C[3,]
    C[2:4, ]
    C[, 1]
    C[, 1:3]
    C[-1,-1]
    C[,-c(2:10)]
    
    
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
    I
    solve(Y)
    
    # Limpar o Environment
    rm(list = ls())
    
  } # 11.4. Outras funções
  
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
    
  } # 12.1. Definição
  {
    # 12.2. Manipulando data frames
    wage1[2, 3]
    wage1[, c("wage", "educ")]
    wage1$educ
    subset(wage1, wage > 10)
    summary(wage1$wage)
    head(wage1)
    tail(wage1)
    ?subset
    ?head
    ?tail
    
  } # 12.2. Manipulando data frames
  {
    # 12.3. Transformando variáveis
    wage1$wage2x <- wage1$wage * 2
    
    # Limpar o Environment
    rm(list = ls())
    
  } # 12.3. Transformando variáveis
  
} # 12. Data frames e tibbles
{
  # 13. Importação de dados
  
  {
    # 13.1. Arquivos CSV
    # Dados: https://nedur.github.io/r/EXP_2019.rar
    install.packages("readr")
    library(readr)
    dexp <- read_csv2("EXP_2019.csv")
    
    
  } # 13.1. Arquivos CSV
  {
    # 13.2. Arquivos XLS E XLSX
    # Dados: https://nedur.github.io/r/EXP2019_ComexStat.xlsx
    install.packages("readxl")
    library(readxl)
    dados <- read_excel("EXP2019_ComexStat.xlsx")
    install.packages("xlsx")
    library(xlsx)
    dados <- read.xlsx(file = "EXP2019_ComexStat.xlsx", sheetName = "2019")
    install.packages("openxlsx")
    library(openxlsx)
    dados <- read.xlsx(xlsxFile = "EXP2019_ComexStat.xlsx", sheet = "2019")
    dados <- xlsx::read.xlsx(file = "EXP2019_ComexStat.xlsx", sheetName = "2019")
    dados <- openxlsx::read.xlsx(xlsxFile = "EXP2019_ComexStat.xlsx", sheet = "2019")
    
    # Limpar o Environment
    rm(list = ls()[!ls() %in% c("dexp")])
    
    
  } # 13.2. Arquivos XLS E XLSX
  
} # 13. Importação de dados
{
  # 14. Manipulação de dados
  install.packages("dplyr")
  install.packages("tidyr")
  library(dplyr)
  library(tidyr)
  names(dexp)
  
  dexp_mod <- select(dexp, c("CO_ANO", "CO_MES", "SG_UF_NCM", "VL_FOB"))
  
  dexp_mod <- rename(
    dexp_mod,
    ano = CO_ANO,
    mes = CO_MES,
    uf  = SG_UF_NCM,
    exp = VL_FOB
  )
  
  dexp_mod <- mutate(dexp_mod, log_exp = log(exp))
  
  dexp_mod <- mutate(dexp_mod, exp = exp / 1000000000)
  
  dexp_mod <- group_by(dexp_mod, ano, uf)
  
  dexp_mod <- summarise(dexp_mod, exp = sum(exp))
  
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
  
} # 14. Manipulação de dados
{
  # 15. Exportação de dados
  
  {
    # 15.1. Dados em CSV
    library(readr)
    write_csv(dexp_mod, "Exp_UF_2019v.csv")
    write_csv2(dexp_mod, "Exp_UF_2019pv.csv")
    write_delim(dexp_mod, "Exp_UF_2019.csv", delim = ";")
    
    ?write_csv
    ?write_csv2
    ?write_delim
    
  } # 15.1. Dados em CSV
  {
    # 15.2. Dados em XLS e XLSX
    library(openxlsx)
    write.xlsx(dexp_mod, file = "Exp_UF_2019.xlsx", sheetName = "2019")
    
    library(xlsx)
    write.xlsx(dexp_mod, file = "Exp_UF_2019.xlsx", sheetName = "2019")
    
  } # 15.2. Dados em XLS e XLSX
  {
    # 15.3. Salvar objetos do R
    saveRDS(dexp_mod, file = "Exp_UF_2019.rds")
    dexp_mod2 <- readRDS(file = "Exp_UF_2019.rds")
    save(dexp, dexp_mod, dexp_pr, file = "Exp.RData")
    rm(list = ls())
    load("Exp.RData")
    
  } # 15.3. Salvar objetos do R
  
} # 15. Exportação de dados
{
  # 16. Gráficos
  install.packages("ggplot2")
  library(ggplot2)
  load("Exp.RData")
  
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
  
} # 17. Mapas

# Comentários ou Sugestões
# vinicius.a.vale@gmail.com | viniciusvale@ufpr.br
# taniamoreiraalberti@gmail.com
# daviwindercatelan.ecae@gmail.com