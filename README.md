
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
