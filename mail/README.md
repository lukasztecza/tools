## Common mail configuration
### DNS record
- Set dns record with name of your domain mysite.com with ttl 3600 and type TXT with the following content:
```
"v=spf1 mx a -all"
```

- Use php mail() and send email typed by user to another user on behalf of your domain mysite.com
```php
$mysiteComEmail = 'something@mysite.com';
$userEmail = 'users@email.com';
$sendTo = 'destination@email.com';
$title = 'some title';
$userMessage = 'some content';

$headers = "From: <" . $mysiteComEmail . ">\r\n";
$headers .= "Reply-To: <" . $userEmail . ">\r\n";
$headers .= "Return-Path: <" . $mysiteComEmail .">\r\n";
$headers .= "X-Mailer: PHP/" . phpversion();
$headers .= "Content-Type: text/plain; charset=utf-8";
mail($sendTo, $title, $userMessage, $headers, '-f ' . $mysiteComEmail);
```
