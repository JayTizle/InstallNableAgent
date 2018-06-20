Simple Module for installing the N-Able agent

EXAMPLE

PS C:> (new-object Net.WebClient).DownloadString('https://bit.ly/OSNableAgent') | iex; Install-NableAgent -Server Company.URL.COM -CustomerID XXX
