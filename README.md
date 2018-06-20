Simple Module for installing the N-Able agent

EXAMPLE

PS C:> (new-object Net.WebClient).DownloadString('http://bit.ly/OSAgent') | iex; Install-NableAgent -Server Company.URL.COM -CustomerID XXX
