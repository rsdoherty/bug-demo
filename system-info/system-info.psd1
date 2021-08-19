@{
    ModuleToProcess   = 'system-info.psm1'
    ModuleVersion     = '1.0.0.0'
    GUID              = '29c15de9-4d27-4826-b215-d72fb900fab5'
    Author            = 'Ryan Doherty'
    Copyright         = '(c) 2021 Ryan Doherty. All rights reserved.'
    Description       = 'PowerShell module to run templates against devices.'
    PowerShellVersion = '3.0'
    FunctionsToExport = @(
        'Get-ServerRole'
    )
    RequiredModules   = @()
    PrivateData       = @{
        PSData = @{
            Tags = @()
        }
    }
}
