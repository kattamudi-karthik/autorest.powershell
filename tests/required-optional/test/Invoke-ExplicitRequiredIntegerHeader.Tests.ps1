$TestRecordingFile = Join-Path $PSScriptRoot 'Invoke-ExplicitRequiredIntegerHeader.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Invoke-ExplicitRequiredIntegerHeader' {
    It 'Post' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }
}
