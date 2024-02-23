# Introdução ao R
# PNAD Contínua em R. 
# Experiências Extensionistas - Turma 2023
# Projeto de Extensão em Conjuntura Econômica e Social
# Fevereiro, 2024

setwd("C:\\CES_Livro2023")

## install.packages("PNADcIBGE")

library(PNADcIBGE)

pnadc2023T02 <- read_pnadc("PNADC_022023.txt", "input_PNADC_trimestral.txt")
pnadc2023T02 <- pnadc_labeller(data_pnadc=pnadc2023T02, "dicionario_PNADC_microdados_trimestral.xls")

saveRDS(pnadc2023T02,"pnadc2023T02")

## install.packages(c("dplyr","survey","readr"))

#leitura dos pacotes
library(dplyr)
library(survey)
library(readr)

pnadc <- as_tibble(readRDS(file = "pnadc2023T02"))

# Dummy para residentes da área urbana
pnadc$urbana = pnadc$V1022

# Sexo
pnadc$sexo = pnadc$V2007
# Idade
pnadc$idade = pnadc$V2009
# Raça
pnadc$raca = pnadc$V2010
# Renda média habitual de todos os trabalhos (VD4019)
pnadc$rendatrabtotal = pnadc$VD4019
# Pessoas na força de trabalho
pnadc$forca = pnadc$VD4001
# Pessoas ocupadas e não ocupadas
pnadc$ocupadas = pnadc$VD4002

# Jovens (entre 15 e 29 anos, de acordo com o estatuto da juventude)
pnadc$jovens = ifelse(pnadc$V2009 >= 15 & pnadc$V2009 <=29, 1, 0)

table(pnadc$V2009, pnadc$jovens)

# Chefe de domicílio
pnadc$chefe = factor(ifelse(as.numeric(pnadc$VD2002) == 1, 1, 0),
                     labels = c("Outros", "Chefe"))

# Faixas de horas trabalhadas
pnadc$horas = cut(pnadc$V4039, breaks=c(0,20,40,60,120))

table(pnadc$V4039, pnadc$horas)

# Grandes regiões
pnadc$regioes = factor(
  substr(pnadc$UPA, 1, 1),
  labels = c("Norte", "Nordeste", "Sudeste", "Sul", "Centro-Oeste")
)

# Nível de instrução mais elevado, incluindo mestrado e doutorado
pnadc$educ = factor(
  case_when(
    as.numeric(pnadc$VD3004) == 7 &
      as.numeric(pnadc$V3009A) == 14 ~ 8,
    as.numeric(pnadc$VD3004) == 7 &
      as.numeric(pnadc$V3009A) == 15 ~  9,
    TRUE ~ as.numeric(pnadc$VD3004),
  ),
  labels = c(
    "Sem instrução",
    "Fundamental incompleto",
    "Fundamental completo",
    "Médio incompleto",
    "Médio completo",
    "Superior incompleto",
    "Superior Completo",
    "Mestrado",
    "Doutorado"
  )
)

table(pnadc$educ) 

table(as.numeric(pnadc$educ))

#Experiencia
pnadc = mutate(pnadc, 
                exp = case_when(V40401 <= 11 ~ 0, V40402 <= 11 ~ 1, TRUE ~ V40403))

# Tempo de desemprego
pnadc = mutate (pnadc,
                tempo_desemp = case_when(V40761 <= 11 ~ 0, V40762 <= 11 ~ 1, TRUE ~ V40763))

# Filhos e enteados no domicílio
pnadc$filhos = as.numeric(ifelse(as.numeric(pnadc$VD2002) == 3, 1, ifelse(as.numeric(pnadc$VD2002) == 4, 1, 0)))

# Número de filhos no domicílio
pnadc = pnadc %>%
  group_by(ID_DOMICILIO) %>%
  mutate(nfilhos_d = sum(filhos, na.rm = FALSE))

# Filhos de 0 a 5 anos
pnadc$filhos05 = as.numeric(ifelse(
  as.numeric(pnadc$VD2002) == 3 & as.numeric(pnadc$V2009) <= 5,
  1,
  ifelse(as.numeric(pnadc$VD2002) == 4 &
           as.numeric(pnadc$V2009) <= 5, 1, 0)
))
# Número de filhos no domicílio de 0-5anos
pnadc = pnadc %>%
  group_by(ID_DOMICILIO) %>%
  mutate(nfilhos05_d = sum(filhos05, na.rm = FALSE))

# Número de filhos no domicílio
pnadc$nfilhos = case_when(as.numeric(pnadc$VD2002) != 1 &
                            as.numeric(pnadc$VD2002) != 2 ~ 0,
                          TRUE ~ pnadc$nfilhos_d)
pnadc$nfilhos05 = case_when(as.numeric(pnadc$VD2002) != 1 &
                            as.numeric(pnadc$VD2002) != 2 ~ 0,
                          TRUE ~ pnadc$nfilhos05_d)

# Selecionar uma parte da base de dados (útil para liberar memória)
# Dica: usar colnames(pnadc) para lista de variáveis
{
  sel_var <-
    c(
      "Ano",
      "Trimestre",
      "UF",
      "Capital",
      "RM_RIDE",
      "UPA",
      "Estrato",
      "V1008",
      "V1014",
      "V1016",
      "V1022",
      "V1023",
      "V1027",
      "V1028",
      "V1029",
      "V1033",
      "posest",
      "posest_sxi",
      "ID_DOMICILIO",
      "urbana",
      "sexo",
      "idade" ,
      "raca" ,
      "educ"  ,
      "jovens"  ,
      "rendatrabtotal",
      "forca",
      "ocupadas",
      "horas"     ,
      "regioes"    ,
      "exp"       ,
      "tempo_desemp",
      "chefe"  ,
      "filhos",
      "nfilhos_d",
      "nfilhos",
      "filhos05",
      "nfilhos05_d",
      "nfilhos05"
    )
}

# Salvando variáveis selecionadas
pnadc <-
  subset(pnadc, select = sel_var)
saveRDS(pnadc, "pnadc2023T02r")


## install.packages(c("survey", "tidyverse", "dplyr", "srvyr"))

library(survey)

library(tidyverse)

#library(dplyr)
library(srvyr)

#library(dplyr)
library(PNADcIBGE)

pnadc <- readRDS(file = "pnadc2023T02r")

options(scipen = 999)


spnadc <- pnadc_design(data_pnadc = pnadc)

# Renda média habitual de todos os trabalhos (criada a partir da VD4019)
svymean( ~ rendatrabtotal, design = spnadc, na.rm = TRUE)

# Renda média habitual (VD4019) por sexo (V2007)
svyby(~ rendatrabtotal,
        ~ sexo,
        design = spnadc,
        svymean ,
        na.rm = TRUE)

# Renda média habitual (VD4019) por UF
svyby(~ rendatrabtotal,
        ~ UF,
        design = spnadc,
        svymean ,
        na.rm = TRUE)

# Renda média por sexo e UF
svyby(
  ~ rendatrabtotal,
  ~ UF + sexo,
  design = spnadc,
  svymean ,
  na.rm = TRUE,
  keep.names =  FALSE
)

# Renda média por sexo e UF	- SALVANDO COMO OBJETO!
rendaUFsexo = svyby(
  ~ rendatrabtotal,
  ~ UF + sexo,
  design = spnadc,
  svymean ,
  na.rm = TRUE,
  keep.names =  FALSE
)

 # Numero de pessoas ocupadas (VD4002)
svytable( ~ ocupadas,
    design = subset(spnadc, forca == "Pessoas na força de trabalho")
  )

# número de pessoas ocupadas (VD4002) por UF (apenas para pessoas na força de trabalho)
ocupadoUF = data.frame(svytable(
    ~ UF + ocupadas,
    design = subset(spnadc, forca == "Pessoas na força de trabalho")
  ))


# número de trabalhadores ocupados (VD4002) por UF e sexo (apenas para pessoas na força de trabalho)
ocupadoUFsexo = data.frame(svytable(
  ~ UF + sexo + ocupadas,
  design = subset(spnadc, forca == "Pessoas na força de trabalho")
))

ocupadoUF_w = pivot_wider(
    ocupadoUF,
    id_cols = "UF",
    names_from = c("ocupadas"),
    values_from = "Freq"
  )

ocupadoUFsexo_w = pivot_wider(
  ocupadoUFsexo,
  id_cols = "UF",
  names_from = c("sexo", "ocupadas"),
  values_from = "Freq"
)

rendaUFsexo_w = pivot_wider(
  rendaUFsexo,
  id_cols = "UF",
  names_prefix = "Renda_",
  names_from = c("sexo"),
  values_from = "rendatrabtotal"
)

UF = merge(ocupadoUF_w, ocupadoUFsexo_w, by = "UF") %>%  merge(rendaUFsexo_w,  by = "UF")


## install.packages("ggplot2")

library(ggplot2)

# Grafico de salario medio por UF e sexo
ggplot(data = rendaUFsexo, aes(x = UF, y = rendatrabtotal)) +
  geom_bar(aes(fill = sexo), stat = "identity", position = "dodge") +
  scale_fill_manual(values=c("lightskyblue2", "steelblue3")) + 
  xlab("Unidades da Federação") +
  ylab("Renda de todos os trabalhos") +
  scale_x_discrete(guide = guide_axis(angle = 90)) +
  ggtitle("PNAD Contínua") +
  labs(subtitle = "Segundo trimestre de 2023") +
  theme(plot.title = element_text(hjust = 0.5)) +
  theme(plot.subtitle = element_text(hjust = 0.5))

ocupadoUF_w$desemprego = 100 * ocupadoUF_w$`Pessoas desocupadas` / (ocupadoUF_w$`Pessoas desocupadas` + ocupadoUF_w$`Pessoas ocupadas`)

# Gráfico
ggplot(data = ocupadoUF_w, aes(x = UF, y = desemprego)) +
  geom_col (fill = "lightskyblue2") +
  xlab("Unidades da Federação") +
  scale_x_discrete(guide = guide_axis(angle = 90)) +
  ylab("taxa % de desemprego") +
  ggtitle("PNAD Contínua - Taxa de desemprego") +
  labs(subtitle = "Segundo trimestre de 2023") +
  theme(plot.title = element_text(hjust = 0.5)) +
  theme(plot.subtitle = element_text(hjust = 0.5))
