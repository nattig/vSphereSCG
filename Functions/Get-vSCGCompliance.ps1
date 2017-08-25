function Get-vSCGCompliance {
    <#
        .SYNOPSIS
            Gets the compliance status the specified guidelines from a set of objects.

        .DESCRIPTION
            Gets the compliance status the specified guidelines from a set of objects.

        .PARAMETER InputObject
            The object(s) to check for compliance.

        .PARAMETER Guideline
            The guideline(s) to check compliance against.

        .PARAMETER Plugin
            The plugin(s) to retrieve compliance guidelines from.

        .NOTES
            Author(s):     : 2017 VMworld US Hackathon Team 1
            Date Created   : 08/25/2017
            Date Modified  : 08/25/2017
    #>

    # Loop through input objects (VMs/hosts/etc.)
      # Loop through guidelines in XML
      
        # Read the Get function from XML

        # if get function exists
          # Call get function against object
          # Create custom object with output from get function + guideline name and description
        # else (if get function does not exist)
          # throw warning that compliance cannot be checked
        # end if

    # End loop
}

# Output
  Entity (from child functions)
  Compliant (from child functions)
  Guideline name
  Guideline description