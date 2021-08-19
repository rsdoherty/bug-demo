$ModuleName = "Pester5Bug"
Remove-Module $ModuleName -Force -ErrorAction SilentlyContinue
Import-Module $PSScriptRoot\..\$ModuleName.psd1 -Force

InModuleScope $ModuleName {

    Describe "Pester5Bug" {

        BeforeAll {
            Mock Import-Module
        }

        It 'Does not mock out Import-Module correctly - BeforeEach' {
            Get-Bug | Should -Be "I am NOT being mocked!"
        }

        It 'Does not mock out Import-Module correctly - It' {
            Mock Import-Module
            Get-Bug | Should -Be "I am NOT being mocked!"
        }
    }
}
