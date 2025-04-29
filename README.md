# Gera Senha - Gerador de Senhas em PowerShell

Script PowerShell para Windows que gera múltiplas senhas aleatórias e as salva em um arquivo de texto.

## 📋 Pré-requisitos

- Windows 7 ou superior
- PowerShell 5.1 ou superior (pré-instalado no Windows 10/11)

## 🛠 Como usar

1. Baixe o script `gera_senha.ps1`
2. Edite as configurações diretamente no script conforme necessário:
   ```powershell
   # Configurações editáveis
   $quantidadeSenhas = 20  # Quantidade de senhas a serem geradas
   $tamanhoSenha = 8       # Tamanho de cada senha
   $arquivoSaida = "passwordslist.txt"  # Nome do arquivo de saída


3. Execute o script

⚙️ Execução
Método 1 - Execução direta:

PowerShell
.\gera_senha.ps1

Método 2 - Execução com parâmetros temporários (opcional):

.\gera_senha.ps1 -QuantidadeSenhas 15 -TamanhoSenha 10 -ArquivoSaida "minhas_senhas.txt"

Permissão de execução:
Se encontrar erros, você pode precisar alterar a política de execução:

Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

📁 Saída
O script gera um arquivo chamado passwordslist.txt (ou o nome que você definiu) contendo as senhas geradas, uma por linha.

Exemplo de conteúdo:

xQm9!kL2
pV7s$yR4
nB3#tY8q
... (e mais 17 senhas)


🔧 Personalização
Edite estas variáveis no script para configurar:

Variável	Descrição	Valor Padrão
$quantidadeSenhas	Número de senhas a gerar	20
$tamanhoSenha	Comprimento de cada senha	8
$arquivoSaida	Nome do arquivo de saída	"passwordslist.txt"
📝 Licença
Este projeto está licenciado sob a licença MIT.

⚠️ Aviso de Segurança
Este arquivo contém senhas sensíveis

Proteja o arquivo gerado adequadamente

Recomenda-se excluir o arquivo após o uso

Não compartilhe o arquivo de senhas

