$Manifest = @{
    Path                    = 'MarsEnums.psd1'
    RootModule              = 'MarsEnums.psm1'
    Author                  = 'Douglas Chen <dougpuob@gmail.com>'
    Copyright               = 'MIT'
    CompatiblePSEditions    = 'Desktop'
    ModuleVersion           = '0.0.10'
    Description             = 'Enumerations of Mars project.'
    PowerShellVersion       = '5.1'
    GUID                    = '96ce4539-db25-456d-9b3a-50495b672a48'
}

New-ModuleManifest  @Manifest
Test-ModuleManifest -Path "MarsEnums.psd1"
Publish-Module      -Path "." -NuGetApiKey $Env:NuGetApiKey
