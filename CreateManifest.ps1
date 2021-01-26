$Manifest = @{
    Path                    = 'MarsEnums.psd1'
    RootModule              = 'MarsEnums.psm1'
    Author                  = 'dougpuob'
    CompatiblePSEditions    = 'Desktop'
	ModuleVersion			= '0.0.1'
    Description             = 'Enumerations of Mars project.'
    PowerShellVersion       = '7.1'
	GUID 					= '96ce4539-db25-456d-9b3a-50495b672a48'
}
New-ModuleManifest @Manifest -ErrorAction Stop
