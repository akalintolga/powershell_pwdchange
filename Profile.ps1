#This script written by Tolga Akalın
function PwdChange
{
   
    function Get-RandomCharacters($length, $characters) {
        $random = 1..$length | ForEach-Object { Get-Random -Maximum $characters.length }
        $private:ofs=""
        return [String]$characters[$random]
    }
     
    function Scramble-String([string]$inputString){     
        $characterArray = $inputString.ToCharArray()   
        $scrambledStringArray = $characterArray | Get-Random -Count $characterArray.Length     
        $outputString = -join $scrambledStringArray
        return $outputString 
    }
       
        $rpassword = Get-RandomCharacters -length 3 -characters 'abcdefghiklmnoprstuvwxyz'
        $rpassword += Get-RandomCharacters -length 2 -characters 'ABCDEFGHKLMNOPRSTUVWXYZ'
        $rpassword += Get-RandomCharacters -length 2 -characters '1234567890'
        $rpassword += Get-RandomCharacters -length 1 -characters '*'
        $rpassword = Scramble-String $rpassword
        Write-Host "Verebileceğiniz Random Şifre : " $rpassword -ForegroundColor red 
        
        try { 
            
            $UserName = Read-Host "Domain Kullanıcı Adını Giriniz: " 
            $Password = Read-Host "Yeni Şifreyi Giriniz: "
            Set-ADAccountPassword -Identity $UserName -NewPassword (ConvertTo-SecureString -AsPlainText $Password -Force)
            
        }
        catch {
            
            Write-Host "Domainde Böyle Bir Kullanıcı Adı '$UserName' Bulunamadı. Lütfen tekrar deneyin.." -ForegroundColor Red
            Start-Sleep -Seconds 1
            cls
            return PwdChange 
        }
            
                    
            
            Set-ADAccountPassword -Identity $UserName -NewPassword (ConvertTo-SecureString -AsPlainText $Password -Force)  
            Write-Host "Şifre Başarıyla Sıfırlandı." -ForegroundColor Green
            Write-Host "Kullanıcı Adı :" $UserName 
            Write-Host "Şifre : " $Password
         
            
    
            

        

}

