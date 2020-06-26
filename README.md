Powershell AD Kullanıcı Şifresini Üretilen Random Şifre ile Sıfırlamak

Merhaba,

Bu script ile ad kullanıcılarınızın şifresini, üretilen random şifreyle kolaylıkla sıfırlayabilirsiniz.

Write-Host komutuyla sıfırlamak istediğiniz kullanıcı adı ve şifreyi girdikten sonra eğer domaininizde böyle bir kullanıcı varsa ister scriptin kendi ürettiği random bir şifreyle isterseniz de ad password policynize göre kendiniz bir şifre vererek hızlıca sıfırlayabilirsiniz.

Eğer domainde girdiğiniz kullanıcı adı yoksa hata verecek ve fonksiyon tekrar çalışacaktır.

Fonksiyonu kullanmak için indirdiğiniz dosyayı C:\Windows\System32\WindowsPowerShell\v1.0 altına atmanız gerekiyor. Eğer mevcutta profile dosyanız varsa kodları direkt içine yapıştırabilirsiniz.

Sonrasında 'PowerShell' yada 'PowerShell ISE' ile PwdChange komutuyla fonksiyonu kullanabilirsiniz.



