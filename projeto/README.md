# Projeto - Análise de Clientes

## Objetivo

Construir uma tabela de features por cliente a partir do histórico de transações, permitindo analisar comportamento, recência, frequência de transações e movimentação de pontos. As métricas geradas podem ser utilizadas em análises de comportamento e retenção de clientes.

## Arquivo

- `analise_clientes.sql:`  Query principal responsável pela construção da tabela de features por cliente.

## Tabela utilizada

| Tabela | Descrição |
|---|---|
| `transacoes` | Registro das transações dos clientes, incluindo datas e quantidade de pontos movimentados. |

## Estrutura da query

A query é dividida em três etapas:

### 1. CTE `tdTrDias`

Cria uma base de transações e calcula a quantidade de dias desde cada transação

### 2. CTE `ultimaTr`

Calcula, para cada cliente, quantos dias se passaram desde sua transação mais recente

### 3. SELECT final

Agrupa os dados por cliente e gera as principais features utilizadas na análise:

| Coluna | Descrição |
|---|---|
| `idCliente` | Identificador do cliente |
| `totalTransacao` | Total de transações realizadas |
| `totalTransacaoBy50/25/15/7` | Total de transações nos últimos 50, 25, 15 e 7 dias |
| `lastTr` | Dias desde a última transação |
| `ptTotais` | Saldo total de pontos movimentados |
| `ptTotaisPos` | Total de pontos positivos |
| `ptTotalPosBy50/25/15/7` | Pontos positivos movimentados nos últimos 50, 25, 15 e 7 dias |
| `ptTotaisNeg` | Total de pontos negativos |
| `ptTotalNegBy50/25/15/7` | Pontos negativos movimentados nos últimos 50, 25, 15 e 7 dias |

## Tecnologias

- SQL
- SQLite

## Próximos passos

A tabela gerada pode ser utilizada para explorar padrões de comportamento, identificar clientes mais ou menos ativos e desenvolver análises relacionadas à retenção