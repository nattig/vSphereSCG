function Resolve-vSCGCompliance {
    <#
        .SYNOPSIS
            Resolves the compliance for the specified guidelines from a set of objects.

        .DESCRIPTION
            Resolves the compliance for the specified guidelines from a set of objects.

        .PARAMETER InputObject
            Output from Get-vSCGCompliance.

        .PARAMETER Plugin
            The plugin(s) to use when remediate compliance guidelines.

        .NOTES
            Author(s):     : 2017 VMworld US Hackathon Team 1
            Date Created   : 08/25/2017
            Date Modified  : 08/25/2017
    #>

    [CmdletBinding()]
    param(
      [Parameter(Position = 0, ValueFromPipeline = $true)]
      $InputObject
    )

    BEGIN {
        $guidelines = Get-vSCGGuideline | Where-Object {$_.Enabled}
    }

    PROCESS {
        foreach ($object in $InputObject) {
            foreach ($guideline in $guidelines) {                
                if ($guideline.FunctionSet -ne "unsupported") {
                    # Call $guideline.FunctionSet
                    Invoke-Expression ('$object | ' + $guideline.FunctionSet)
                } else {
                    Write-Warning "Guideline '$($guideline.Name)' cannot be resolved with this function!"
                }
            }
        }
    }

    END {

    }
}
