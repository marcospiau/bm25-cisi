# bm25-cisi

# O que tem nesse repo?
Implementação de um sistema de busca utilizando BM25, usando o dataset [CISI collection](https://ir.dcs.gla.ac.uk/resources/test_collections/cisi/).

# Arquivos
```bash
.
├── Makefile  # Makefile usado para download e preparação do dataset CISI
├── README.md
├── data # pasta com dados
│   ├── processed # dados CISI processados
│   │   └── cisi
│   │       ├── metrics.txt # metricas dos experimentos
│   │       ├── qrels.txt  # qrels formato trec
│   │       ├── results.txt # results formato trec, usado em testes iniciais
│   │       ├── results_abstract_keep_stopwords.txt # results usando abstract dos documentos e mantendo stopwords
│   │       ├── results_abstract_remove_stopwords.txt # results usando abstract dos documentos e removendo stopwords
│   │       ├── results_title_abstract_keep_stopwords.txt # results usando títulos dos documentos e mantendo stopwords
│   │       ├── results_title_abstract_remove_stopwords.txt # results usando títulos e abstracts dos documentos e mantendo stopwords
│   │       ├── results_title_keep_stopwords.txt # results usando títulos dos documentos e mantendo stopwords
│   │       └── results_title_remove_stopwords.txt  # results usando títulos dos documentos e removendo stopwords
│   └── raw # Dados brutos CISI (apenas .gitkeep)
├── notebooks # pasta com notebooks
│   ├── OLD # notebooks iniciais, mantidos para registro de histórico
│   └── notebook_entrega.ipynb # versão final de notebook de entrega
└── relatorio.pdf # relatorio do projeto
```