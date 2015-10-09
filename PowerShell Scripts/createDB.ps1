
[CmdletBinding()] 


Param( 


  [Parameter(Mandatory=$True)] 


  [string]$database, 


 [Parameter(Mandatory=$True)] 


  [string]$datasource, 


 [Parameter(Mandatory=$True)] 


  [string]$dbusername, 


  [Parameter(Mandatory=$True)] 


 [string]$dbpassword, 


   [string]$dbname = "quiz"  


 ) 


 


[void][system.reflection.Assembly]::LoadWithPartialName("MySql.Data")  


$connStr ="Database=$database ;Data Source=$datasource;userid=" + $dbusername + ";pwd=" + $dbpassword + ";"  


$conn = New-Object MySql.Data.MySqlClient.MySqlConnection($connStr) 


$conn.Open() 


$cmd = New-Object MySql.Data.MySqlClient.MySqlCommand $cmd.Connection  = $conn  


#$cmd.CommandText = "DROP DATABASE IF EXISTS " + $dbname $cmd.ExecuteNonQuery()   


$cmd.CommandText = 'CREATE SCHEMA `' + $dbname + '`' $cmd.ExecuteNonQuery() 


$conn.Close() 


$sqlfile = "c:\teamlee\dbschema.sql" 


mysql $dbname -u $dbusername –p $dbpassword -e "source $sqlfile" 
