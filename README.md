# TechChallenge EKS Terraform Infrastructure

## Descrição
Este repositório contém o código **Terraform** responsável por provisionar a infraestrutura de um cluster **EKS** (Amazon Elastic Kubernetes Service) na **AWS**. Ele também inclui a criação automática de:

- Repositório **ECR** (Elastic Container Registry) para armazenar imagens Docker.
- **ELB** (Elastic Load Balancer) para balanceamento de carga.
- **API Gateway** para exposição de endpoints da aplicação.

Essa configuração facilita a automação do provisionamento de infraestrutura seguindo boas práticas de **Infraestrutura como Código (IaC)**.

---

## Estrutura do Projeto
A organização do diretório é a seguinte:

```bash
techchalenge-eks-terraform-infrastructure/
├── main.tf              # Configuração principal do Terraform
├── variables.tf          # Definição de variáveis
├── outputs.tf            # Saídas do Terraform
├── ecr/                  # Configurações do repositório ECR
├── eks/                  # Configurações do cluster EKS
├── elb/                  # Configurações do Load Balancer
├── api-gateway/          # Configuração do API Gateway
└── README.md             # Documentação
```

---

## Requisitos
Para utilizar este projeto, é necessário ter as seguintes ferramentas instaladas:

1. **Terraform** (>= 1.0)
2. **AWS CLI** configurado com credenciais válidas.
3. **kubectl** (para interagir com o cluster EKS).

Para instalação das ferramentas:
```bash
# Instale o Terraform
https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli

# Instale o AWS CLI
https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

# Instale o kubectl
https://kubernetes.io/docs/tasks/tools/install-kubectl/
```

---

## Configuração Inicial
### 1. Configurar credenciais da AWS
Certifique-se de que as credenciais da AWS estão configuradas corretamente:
```bash
aws configure
```
- **AWS Access Key ID**
- **AWS Secret Access Key**
- **Region** (ex: `us-east-1`)

### 2. Inicializar o Terraform
Execute os seguintes comandos para inicializar o projeto:
```bash
terraform init
```

### 3. Planejar a infraestrutura
Para verificar o que será criado:
```bash
terraform plan
```

### 4. Aplicar as mudanças
Execute o comando abaixo para provisionar a infraestrutura na AWS:
```bash
terraform apply
```

Confirme com **yes**.

---

## Outputs
Após a execução bem-sucedida do `terraform apply`, os seguintes **outputs** serão exibidos:
- **Cluster EKS Endpoint**: URL do cluster EKS para uso com o `kubectl`.
- **ECR Repository URL**: URL do repositório ECR criado.
- **ELB DNS**: Endereço DNS do Load Balancer.
- **API Gateway URL**: Endpoint da API Gateway.

Exemplo:
```bash
Outputs:
cluster_endpoint = "https://ABCDEF123456.gr7.us-east-1.eks.amazonaws.com"
ecr_repository_url = "123456789.dkr.ecr.us-east-1.amazonaws.com/my-app-repo"
elb_dns = "my-loadbalancer-123456789.us-east-1.elb.amazonaws.com"
api_gateway_url = "https://api-id.execute-api.us-east-1.amazonaws.com/prod"
```

---

## Acessando o Cluster EKS
Para acessar o cluster **EKS** criado, configure o **kubectl**:
```bash
aws eks update-kubeconfig --region <AWS_REGION> --name <CLUSTER_NAME>
```

Teste a conexão:
```bash
kubectl get nodes
```

---

## Limpeza de Recursos
Para destruir todos os recursos provisionados pelo Terraform, utilize o comando:
```bash
terraform destroy
```

Confirme com **yes**.

---

## Boas Práticas
- Utilize **backends remotos** como S3 para armazenar o **estado do Terraform**.
- Ative **versionamento** no bucket do S3 para evitar perda de dados.
- Implemente **políticas IAM** com privilégios mínimos necessários para o Terraform.

---

## Contribuição
Contribuições são bem-vindas! Para contribuir:
1. Fork o repositório.
2. Crie uma nova branch: `git checkout -b minha-feature`.
3. Faça suas alterações e commit: `git commit -m "Minha nova feature"`.
4. Submeta um Pull Request.

---

## Licença
Este projeto está licenciado sob a [MIT License](LICENSE).

---

## Contato
Para dúvidas ou sugestões:
- **Email**: [seuemail@exemplo.com](mailto:seuemail@exemplo.com)
- **LinkedIn**: [Seu Nome](https://linkedin.com/in/seunome)

---
**Desenvolvido com ❤️ e Terraform.**