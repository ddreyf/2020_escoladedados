
# PRA QUE SERVE ESSE C�DIGO?
# Nesse exerc�cio, ele serve para criar uma vers�o reduzida dos microdados do Enem 2019.
# A base na �ntegra tem mais de 5 milh�es de linhas, mas s� queremos uma parte delas:
# N�s queremos apenas quem se inscreveu no Enem, fez todas as provas e estava no terceiro ano do ensino m�dio.
# Esse universo representa pouco mais de 1 milh�o das mais de 5 milh�es de linhas da planilha.
# Com esse filtro, n�s vamos reduzir o arquivo de 3Gb para menos de 1Gb, e us�-lo com mais facilidade.

# COMO RODAR ESSE C�DIGO?
# - Selecionar com o mouse as linhas necess�rias em cada trecho
# - Clicar em "CTRL+ENTER"
# Esperar at� o programa terminar de rodar (alguns computadores levam mais tempo que outros)


# PASSO 1: Instalar os pacotes necess�rios (selecione as DUAS linhas abaixo e clique em CTRL+ENTER)

install.packages("data.table")
install.packages("tidyverse")


# PASSO 2: Carregar os pacotes rec�m instalados (selecione as DUAS linhas abaixo e clique em CTRL+ENTER)

library(data.table)
library(tidyverse)


# PASSO 3: Rodar o c�digo que abrir s� as linhas da tabela que queremos 
# (selecione as SETE linhas abaixo e clique em CTRL+ENTER)
# AGUARDE!!! Dependendo do seu computador, pode demorar poucos ou muitos minutos

enem2019_comfiltro <- 'MICRODADOS_ENEM_2019.csv' %>% 
  fread() %>% 
  filter(TP_PRESENCA_CN == 1,
         TP_PRESENCA_CH == 1,
         TP_PRESENCA_LC == 1,
         TP_PRESENCA_MT == 1,
         TP_ST_CONCLUSAO == 2)


# PASSO 4: Veja como na janela "Environment" um novo objeto foi criado, chamado "enem2019_comfiltro".


# PASSO 5: Grave esse novo objeto em um arquivo .CSV
# selecione a linha abaixo e clique em CTRL+ENTER
# AGUARDE NOVAMENTE!!! A planilha 

write.csv(com_filtro, "enem2019_comfiltro.csv")


# PASSO 6: Abra a pasta onde voc� salvou o projeto e veja se a planilha "enem2019_comfiltro.csv" est� l�.
# Ela deve ter por volta de 900Mb.

# PRONTO! MISS�O CUMPRIDA! :)
# PS: Esse c�digo serve para reduzir outras bases grandes, o que vai mudar � o nome do arquivo e os filtros.