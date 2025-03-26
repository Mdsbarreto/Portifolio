
# Projetos de Python



Análise 3 - Análise Estatística de Dados Financeiros de Clientes

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