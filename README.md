🚀 Provisionamento de PostgreSQL Flexible Server no Azure com Terraform

Este repositório contém um exemplo prático de Infrastructure as Code (IaC) utilizando Terraform para provisionar um Azure PostgreSQL Flexible Server com configuração mínima para testes, incluindo uma regra de firewall que permite acesso de qualquer serviço do Azure (0.0.0.0).


📋 Objetivo

Demonstrar como o Terraform pode ser usado para:


Criar recursos de forma rápida e reprodutível no Azure.
Configurar regras de firewall de forma automatizada.
Controlar recursos por variáveis, facilitando habilitar/desabilitar funcionalidades.
Servir como base para estudos e testes de IaC.

🛠 Recursos Criados

Resource Group no Azure.
PostgreSQL Flexible Server no SKU mais econômico para testes.
Regra de firewall para permitir acesso de qualquer serviço do Azure (0.0.0.0).

📂 Estrutura do Repositório

.
├── main.tf         # Definição dos recursos Azure
├── variables.tf    # Variáveis de configuração
├── outputs.tf      # Saídas úteis após provisionamento
└── README.md       # Documentação do projeto

⚡ Pré-requisitos

Conta no Azure.
Terraform instalado localmente ou uso do Azure Cloud Shell (recomendado para testes rápidos).

▶️ Como usar

No Azure Cloud Shell ou terminal com Terraform configurado:

# 1. Clonar o repositório
git clone https://github.com/<seu-usuario>/<seu-repo>.git
cd <seu-repo>

# 2. Inicializar o Terraform
terraform init

# 3. Visualizar o plano de execução
terraform plan

# 4. Aplicar as mudanças (provisionar recursos)
terraform apply -auto-approve

# 5. Ver as saídas
terraform output


🧹 Remover recursos

Para evitar custos após os testes:
terraform destroy -auto-approve


💡 Aprendizado

Este projeto reforça como o IaC com Terraform:


Acelera o provisionamento de ambientes.
Garante consistência entre diferentes execuções.
Facilita testes e experimentos em cloud providers.
Integra conhecimentos técnicos e soft skills para entregar soluções mais ágeis e seguras.