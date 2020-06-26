Powershell AD Kullanıcı Şifresini Üretlien Random Şifre ile Sıfırlamak

Merhaba,

Bu script ile ad kullanıcılarınızın şifresini, üretilen random şifreyle kolaylıkla sıfırlayabilirsiniz.

Write-Host komutuyla kullanıcı adı ve şifresini girdikten sonra eğer domaininizde böyle bir kullanıcı varsa ister scriptin kendi ürettiği random bir şifreyle isterseniz de ad password policynize göre kendiniz bir şifre vererek hızlıca sıfırlayabilirsiniz.

Fonksyionu kullanmak için indirdiğiniz dosyayı C:\Windows\System32\WindowsPowerShell\v1.0 altına atmanız gerekiyor. Eğer mevcutta profile dosyanız varsa kodları direk içine yapıştırabilirsiniz.

Sonrasında powershell yada powershell ise ile PwdChange komutuyla fonksiyonu kullanabilirsiniz.



