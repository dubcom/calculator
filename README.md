Calculator
---

`git clone https://github.com/dubcom/calculator.git`

`cd calculator`
`npm run build`

isso criará uma nova pasta chamada "calculator" com os arquivos do repositório. Depois disso, você pode entrar na pasta do projeto e rodar o comando npm run build para compilar o projeto.

Depois de compilar o projeto, você pode usar um dos dois métodos mencionados (Ansible ou Terraform) para configurar a infraestrutura no provedor de nuvem escolhido. O Ansible é um gerenciador de configuração de sistema e o Terraform é uma ferramenta de gerenciamento de infraestrutura como código. Ambos permitem que você defina e gerencie recursos na nuvem de maneira automatizada.

Uma vez que a infraestrutura esteja configurada, você pode fazer upload dos arquivos do projeto na pasta "build" para um storage na nuvem, como o Google Cloud Storage. Isso permitirá que o projeto esteja disponível online para acesso pelos usuários.


Try It
---

[ahfarmer.github.io/calculator](https://ahfarmer.github.io/calculator/)



Install
---

`npm install`



Usage
---

`npm start`


##EXTRAS ##

Aqui está um exemplo de como o fluxo de CI/CD (Integração e Entrega Contínua) do projeto da calculadora poderia ser desenhado:

O desenvolvedor faz uma alteração no código do projeto e faz um commit e push para o repositório do GitHub.
O serviço de CI (Continuous Integration) detecta o commit e inicia um processo de build para verificar se o código está funcionando corretamente.
Se o build for bem-sucedido, o serviço de CD (Continuous Deployment) inicia o processo de implantação do projeto atualizado.
O serviço de CD usa o Terraform ou o Ansible para provisionar a infraestrutura necessária (como um bucket de armazenamento no Google Cloud Storage) e fazer o upload dos arquivos do projeto para o storage.
O projeto atualizado é então disponibilizado online para acesso pelos usuários.
Para configurar o fluxo de CI/CD com o fluxo de criação do sistema de storage usando Infra as Code, você pode usar o Terraform para definir os recursos de storage e integrá-los ao processo de CI/CD. Isso permitirá que você gerencie a criação do storage de maneira automatizada e reproduzível.

Para aproveitar o código do Infra as Code com o uso de módulos, você pode dividir o seu código em módulos reutilizáveis que podem ser usados em vários projetos diferentes. Isso permitirá que você mantenha um código limpo e fácil de manter, além de torná-lo mais fácil de compartilhar e reutilizar em outros projetos. Para criar módulos no Terraform, basta criar um novo diretório com arquivos de configuração do Terraform e usar a diretiva "module" para importá-los em seus arquivos de configuração principal.

## Run projetc ##

1 Execute o comando terraform init para inicializar o Terraform e baixar os plugins necessários.
2 Execute o comando terraform apply para provisionar a infraestrutura e fazer o upload dos arquivos do projeto.
2 Verifique o bucket de armazenamento no console do Google Cloud para obter a URL de acesso ao projeto online. A URL será algo do tipo "https://storage.googleapis.com/my-project-bucket/index.html", onde "my-project-bucket" é o nome do seu bucket de armazenamento e "index.html" é o arquivo principal do projeto.