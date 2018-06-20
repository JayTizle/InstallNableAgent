Function Install-NableAgent {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory=$True,Position=1)]
        [String]$Server,
        [Parameter(Mandatory=$True,Position=2)]
        [int]$CustomerID
    )
    $Path = "c:\Install\Nable"
    $FileName = "$CustomerID"+"WindowsAgentSetup.exe"
    $DownloadURL = "https://$SERVER/dms/FileDownload?customerID=$CustomerID&softwareID=101"
    If (!(Test-Path "$Path")){
        New-Item -Path "$Path" -ItemType Directory
        (New-Object System.Net.WebClient).DownloadFile($DownloadURL, "$Path\$FileName")
    }ELSE{
        If (!(Test-Path "$Path\$FileName")){
        (New-Object System.Net.WebClient).DownloadFile($DownloadURL, "$Path\$FileName")
        }
    }
    & $path\$filename -AI
}
