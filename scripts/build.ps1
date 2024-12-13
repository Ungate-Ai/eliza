# Check Node.js version
$REQUIRED_NODE_VERSION = 22
$CURRENT_NODE_VERSION = (node -v).Split('.')[0].TrimStart('v') -as [int]

if ($CURRENT_NODE_VERSION -lt $REQUIRED_NODE_VERSION) {
    Write-Host "Error: Node.js version must be $REQUIRED_NODE_VERSION or higher. Current version is $CURRENT_NODE_VERSION." -ForegroundColor Red
    exit 1
}

# Navigate to the script's parent directory
Set-Location -Path (Join-Path -Path (Split-Path $MyInvocation.MyCommand.Path -Parent) -ChildPath "..")

# Check if the packages directory exists
if (-Not (Test-Path -Path "packages" -PathType Container)) {
    Write-Host "Error: 'packages' directory not found." -ForegroundColor Red
    exit 1
}

# Define packages to build in order
$PACKAGES = @(
    "core"
    "adapter-postgres"
    "adapter-sqlite"
    "adapter-sqljs"
    "adapter-supabase"
    # "plugin-buttplug"
    "plugin-node"
    "plugin-trustdb"
    "plugin-solana"
    "plugin-starknet"
    "plugin-conflux"
    "plugin-0g"
    "plugin-bootstrap"
    "plugin-image-generation"
    "plugin-coinbase"
    "plugin-evm"
    "plugin-tee"
    "client-auto"
    "client-direct"
    "client-discord"
    "client-telegram"
    "client-twitter"
    "client-whatsapp"
    "plugin-web-search"
)

# Build packages in specified order
foreach ($package in $PACKAGES) {
    $package_path = Join-Path -Path "packages" -ChildPath $package

    if (-Not (Test-Path -Path $package_path -PathType Container)) {
        Write-Host "Package directory '$package' not found, skipping..." -ForegroundColor Yellow
        continue
    }

    Write-Host "Building package: $package" -ForegroundColor Cyan
    Push-Location -Path $package_path

    if (Test-Path -Path "package.json") {
        if (npm run build) {
            Write-Host "Successfully built $package" -ForegroundColor Green
        } else {
            Write-Host "Failed to build $package" -ForegroundColor Red
            exit 1
        }
    } else {
        Write-Host "No package.json found in $package, skipping..." -ForegroundColor Yellow
    }

    Pop-Location  # Return to the previous directory (script root)
}

Write-Host "Build process completed.😎" -ForegroundColor Cyan
