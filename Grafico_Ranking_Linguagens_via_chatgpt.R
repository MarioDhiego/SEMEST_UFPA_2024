#------------------------------------------------------------------------------#
# Ranking Geral
# Carregar os pacotes
library(ggplot2)
library(plotly)

# Dados fornecidos
linguagens <- c("Javascript", "HTML/CSS", "PYTHON", "R", "JAVA", "SQL", "TypScript", "C#", "C++", "C", "PHP")
percentual <- c(63.61, 52.97, 49.3, 48.6, 38.87, 35.35, 30.2, 27.62, 22.42, 19.34, 18.58)

# Criando o dataframe
df <- data.frame(Linguagem = linguagens, Percentual = percentual)

# Ordenando os dados
df <- df[order(df$Percentual, decreasing = TRUE), ]

# Criando o gráfico rotacionado com ggplot2
Grafico1 <- ggplot(df, aes(x = Percentual, y = reorder(Linguagem, Percentual))) +
  geom_bar(stat = "identity", fill = "steelblue") +
  geom_text(aes(label = paste0(Percentual, "%")), hjust = -0.2, size = 3.5) +
  labs(x = "%", 
       y = "Linguagens de Programação", 
       title = "Ranking das Linguagens: Geral 2024") +
  theme_minimal()

# Convertendo para um gráfico interativo com plotly
ggplotly(Grafico1)
#------------------------------------------------------------------------------#

#------------------------------------------------------------------------------#
# Ranking p/ Análise de Dados
# Carregar os pacotes
library(ggplot2)
library(plotly)

# Dados fornecidos
linguagens <- c("PYTHON",
                "R", 
                "SQL",
                "JAVA",
                "C/C++",
                "Javascript",
                "Julia")
percentual <- c(75.25, 
                62.73, 
                55.4, 
                52.2, 
                48.87, 
                36.50, 
                30.2)

# Criando o dataframe
df <- data.frame(Linguagem = linguagens, Percentual = percentual)

# Ordenando os dados
df <- df[order(df$Percentual, decreasing = TRUE), ]

# Criando o gráfico rotacionado com ggplot2
Grafico2 <- ggplot(df, aes(x = Percentual, y = reorder(Linguagem, Percentual))) +
  geom_bar(stat = "identity", fill = "steelblue") +
  geom_text(aes(label = paste0(Percentual, "%")), hjust = -0.2, size = 3.5) +
  labs(x = "%", 
       y = "Linguagens de Programação", 
       title = "Ranking das Linguagens: Data Science 2024") +
  theme_minimal()

# Convertendo para um gráfico interativo com plotly
ggplotly(Grafico2)
#------------------------------------------------------------------------------#


#------------------------------------------------------------------------------#
# Chatgpt
# Graficos Lado a Lado

# Carregar os pacotes
library(ggplot2)
library(plotly)

# Primeiro gráfico: Ranking Geral
linguagens1 <- c("Javascript", "HTML/CSS", "PYTHON", "R", "JAVA", "SQL", "TypScript", "C#", "C++", "C", "PHP")
percentual1 <- c(63.61, 52.97, 49.3, 48.6, 38.87, 35.35, 30.2, 27.62, 22.42, 19.34, 18.58)

df1 <- data.frame(Linguagem = linguagens1, Percentual = percentual1)
df1 <- df1[order(df1$Percentual, decreasing = TRUE), ]

Grafico1 <- ggplot(df1, aes(x = Percentual, y = reorder(Linguagem, Percentual))) +
  geom_bar(stat = "identity", fill = "steelblue") +
  geom_text(aes(label = paste0(Percentual, "%")), hjust = -0.2, size = 3.5) +
  labs(x = "Percentual", 
       y = "Linguagens", 
       title = "Ranking das Linguagens: Geral 2024") +
  theme_minimal()

Grafico1 <- ggplotly(Grafico1)

# Segundo gráfico: Ranking para Data Science
linguagens2 <- c("PYTHON", "R", "SQL", "JAVA", "C/C++", "Javascript", "Julia")
percentual2 <- c(75.25, 62.73, 55.4, 52.2, 48.87, 36.50, 30.2)

df2 <- data.frame(Linguagem = linguagens2, Percentual = percentual2)
df2 <- df2[order(df2$Percentual, decreasing = TRUE), ]

Grafico2 <- ggplot(df2, aes(x = Percentual, y = reorder(Linguagem, Percentual))) +
  geom_bar(stat = "identity", fill = "steelblue") +
  geom_text(aes(label = paste0(Percentual, "%")), hjust = -0.2, size = 3.5) +
  labs(x = "Percentual", 
       y = "Linguagens", 
       title = "Ranking das Linguagens: Data Science 2024") +
  theme_minimal()

Grafico2 <- ggplotly(Grafico2)

# Colocando os gráficos lado a lado com plotly
subplot(Grafico1, Grafico2, nrows = 1, titleX = TRUE, titleY = TRUE)











#------------------------------------------------------------------------------#



