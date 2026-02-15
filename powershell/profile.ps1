$env:XDG_CONFIG_HOME = Join-Path $HOME ".config"

oh-my-posh init pwsh --config "$HOME\.config\ohmyposh\config.json" | Invoke-Expression
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

# Load environment variables from $HOME/.config/.env
$envFile = Join-Path $HOME ".config/.env"

if (Test-Path $envFile) {
    Get-Content $envFile | ForEach-Object {
        $line = $_.Trim()

        # Skip empty lines and comments
        if ($line -and -not $line.StartsWith("#")) {
            if ($line -match "^\s*([^=]+?)\s*=\s*(.*)\s*$") {
                $name = $matches[1]
                $value = $matches[2]

                # Remove surrounding quotes if present
                if ($value -match '^"(.*)"$') {
                    $value = $matches[1]
                }

                Set-Item -Path "Env:$name" -Value $value
            }
        }
    }
}
