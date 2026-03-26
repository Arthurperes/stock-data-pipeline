# 🚀 Real-Time Stock Data Pipeline

Projeto completo de Engenharia de Dados simulando um pipeline de mercado financeiro em tempo real, com arquitetura moderna baseada em streaming, Data Lake em camadas, processamento distribuído e infraestrutura como código.

---

## 🧠 Visão Geral

Este projeto simula um ambiente real de engenharia de dados, onde eventos de mercado financeiro são gerados, processados e transformados em insights analíticos.

---

## 🏗️ Arquitetura

```text
Producers (Python)
        ↓
Kafka (Streaming)
        ↓
Consumer (Python)
        ↓
MinIO (Data Lake - raw)
        ↓
Processor (Python)
        ↓
MinIO (processed)
        ↓
Spark (PySpark)
        ↓
Analytics (aggregations)
        ↓
Streamlit Dashboard

Infraestrutura adicional provisionada com Terraform (Docker).

⚙️ Tecnologias
Python
Apache Kafka
PostgreSQL
MinIO (Data Lake)
PySpark (Big Data)
Streamlit
Docker
Terraform
📊 Camadas do Data Lake
🔴 Raw
Dados brutos do streaming
Sem tratamento
Particionados por data
raw/prices/YYYY/MM/DD/*.json
raw/orders/YYYY/MM/DD/*.json
🟡 Processed
Dados tratados e padronizados
Tipagem aplicada
Prontos para consumo analítico
🟢 Analytics
Dados agregados
Métricas de negócio
Base para dashboards
🔄 Pipeline
Simulação de eventos com Python
Ingestão em tempo real via Kafka
Persistência no PostgreSQL
Armazenamento no Data Lake (MinIO)
Transformação com Python
Processamento distribuído com Spark
Visualização com Streamlit
📈 Exemplos de Métricas
Preço médio por ticker
Volume total negociado
Quantidade de ordens
🧱 Infraestrutura como Código

Parte da infraestrutura foi provisionada utilizando Terraform com provider Docker:

Containers
Volumes
Network
🚀 Como Executar
Subir infraestrutura
docker compose up -d
Rodar consumer
python3 -m app.consumer
Rodar producers
python3 -m app.producer_prices
python3 -m app.producer_orders
Processamento (processed)
python3 -m app.processor
Spark (analytics)
python3 -m app.spark_processor
Dashboard
python3 -m streamlit run dashboard/streamlit_app.py
☁️ Terraform
cd terraform
terraform init
terraform apply
🧠 Aprendizados

Este projeto demonstra:

Arquitetura de dados em tempo real
Uso de Data Lake em múltiplas camadas
Processamento distribuído com Spark
Integração entre múltiplas ferramentas
Infraestrutura como código
Boas práticas de engenharia de dados
🎯 Próximos passos
Integração com AWS (S3, Glue, Kinesis)
Deploy do dashboard
Monitoramento e observabilidade
Qualidade de dados
👨‍💻 Autor

Arthur Peres


---

# 🚀 COMO ATUALIZAR

No terminal:

```bash
nano README.md
