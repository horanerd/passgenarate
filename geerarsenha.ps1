function Gerar-SenhasAleatorias {
    param (
        [int]$Quantidade = 1,
        [int]$TamanhoMaximo = 8
    )

    $maiusculas = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    $minusculas = "abcdefghijklmnopqrstuvwxyz"
    $especiais = "@!#$"
    $numeros = "0123456789"
    $todosCaracteres = $maiusculas + $minusculas + $especiais + $numeros

    $senhas = @()

    for ($j = 1; $j -le $Quantidade; $j++) {
        $senha = @()
        $senha += $maiusculas[(Get-Random -Maximum $maiusculas.Length)]
        $senha += $minusculas[(Get-Random -Maximum $minusculas.Length)]
        $senha += $especiais[(Get-Random -Maximum $especiais.Length)]
        $senha += $numeros[(Get-Random -Maximum $numeros.Length)]

        $restante = $TamanhoMaximo - $senha.Length
        for ($i = 0; $i -lt $restante; $i++) {
            $senha += $todosCaracteres[(Get-Random -Maximum $todosCaracteres.Length)]
        }

        $senhaEmbaralhada = ($senha | Get-Random -Count $senha.Length) -join ''
        $senhas += $senhaEmbaralhada
    }

    return $senhas
}

# Configurações
$quantidadeSenhas = 20  # Altere para a quantidade desejada
$tamanhoSenha = 8      # Altere para o tamanho desejado
$arquivoSaida = "passwordslist.txt"

# Gerar senhas
$senhasGeradas = Gerar-SenhasAleatorias -Quantidade $quantidadeSenhas -TamanhoMaximo $tamanhoSenha

# Exportar para arquivo
$senhasGeradas | Out-File -FilePath $arquivoSaida -Force

Write-Host "Senhas geradas com sucesso e salvas em $arquivoSaida"
