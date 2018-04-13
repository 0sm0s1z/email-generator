function Generate-Emails {
  <#
    .SYNOPSIS
    This module will generate a list of email addresses based on a specified format.
    Function: Generate-Emails
    Author: Matthew Toussain (@0sm0s1z)
    License: MIT
    Required Dependencies: None
    Optional Dependencies: None
    .DESCRIPTION
      This module will generate a list of email addresses based on a specified format.
    .EXAMPLE
    C:\PS> Generate-Emails -Format "first/./last/domain.com"
  #>
  Param
  (
    [Parameter(Position = 0, Mandatory = $True)]
    [string]
    $Format = "",
  )

  Write-Host -ForegroundColor "yellow" "[*] Generating email list. This could take a while."
  
  # First and Last
  if ($Format.split("/").count -eq "3") {
    Get-Content .\firstnames.txt | % {
      
      $fname = $_; Get-Content .\lastnames.txt | % {
          $format2 = $format
          $format2.replace("first", $fname)
          $format2.replace("last", $f_)
          $format2.replace("/", "")
          $format2
        }
      }
    
  
  # First only
  } elseif ($Format.split("/").count -eq "3") {
     Get-Content .\firstnames.txt | % {$format2 = $format; $format2.replace("first", $_); $format2.replace("/", ""); format2}
  
  } else {
    Write-Host -ForegroundColor "red" "[-] Incorrect parameters."
  }





}
Get-Content .\firstnames.txt | % { $fname = $_; Get-Content .\lastnames.txt | % {"$fname.$_blackhillsinfosec.com" | Add-Content .\emails.txt}}
