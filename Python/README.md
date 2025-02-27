
# Projetos de Python





Análise 1 - Análise Histórica do S&P 500 e Indicadores Econômicos

Este projeto explora a relação entre o índice S&P 500 e diversos indicadores econômicos ao longo dos últimos 20 anos, utilizando uma base de dados extensa que contém quase 30 variáveis adicionais.

Principais Etapas:
Importação e limpeza da base de dados, incluindo normalização dos valores.
Seleção e visualização de algumas features para análise gráfica.
Redução do período de análise para destacar padrões recentes.
Comparação entre o Sentimento do Consumidor (Con-Sentim) e o S&P 500, com destaque para os impactos da pandemia.
Identificação das datas com menor índice de confiança do consumidor e análise estatística das features.
Observação de lacunas nos dados históricos, especialmente em registros mais antigos.






Análise 2 - Análise e Tratamento de Dados Financeiros de Clientes

Este projeto realiza a limpeza, tratamento e análise exploratória de um banco de dados contendo informações financeiras e demográficas de clientes.

Principais Etapas:

- Tratamento de Dados: remoção de duplicatas, preenchimento de valores vazios e ajuste de outliers nas features Idade e Estado.
- Normalização do Patrimônio: valores escalados de 0 a 10, onde 10 representa os clientes com maior patrimônio.
- Criação de nova feature para Salário, facilitando a visualização nos gráficos.
- Análise gráfica:
	- Boxplot para identificar valores discrepantes no Salário.
	- Gráficos de dispersão e barras para entender a distribuição dos dados.
	- Correlação entre Idade e Salário, sem relação significativa observada.
	- Identificação de faixas salariais predominantes (entre R$15.000 e R$70.000 anuais).
	- Destaque para os clientes de 22 e 55 anos, que apresentam o maior e menor salário dentro do conjunto analisado.







Análise 3 - Análise e Tratamento de Dados Financeiros de Clientes

Este projeto realiza uma análise estatística detalhada em diversas features, explorando medidas como variância, assimetria, curtose, correlação e testes de normalidade.

🔍 Principais Etapas:

Limpeza de dados:
- Renomeação e normalização de colunas.
- Remoção de valores inconsistentes e outliers nas features Idade, Salário e Estado.
- Exclusão de possíveis duplicatas.
Análises Estatísticas:
- Variância: alta dispersão nos valores de Salário, indicando grande variação.
- Assimetria: distribuição da feature "saiu" levemente inclinada para a direita, enquanto as demais estão próximas de zero.
- Curtose: a feature "Ativo" apresenta menos valores extremos em comparação com outras.
- Intervalo de Confiança (95%) para Salário, delimitando a faixa onde se concentram a maioria dos valores.
- Z-Score: identificação de possíveis outliers com base no desvio padrão.
Testes e Visualizações:
- QQ Plot: análise de normalidade para a feature Idade, indicando que segue uma distribuição normal.
- Histograma: predominância de valores baixos na distribuição de Salário.
- Correlação e Covariância:
    - Correlação fraca entre as features analisadas.
    - Covariância: algumas relações indicam tendência inversa entre variáveis.
- Boxplot: distribuição dentro do esperado, com exceção de valores mais altos para indivíduos acima de 59 anos.