## Common crontab commands
- Show crontab for current user
```
crontab -l
```

- Edit crontab file for current user
```
crontab -e
```

- Set file contents of `/path_to_my_file/my_crontab_file` to crontab for current user
```
crontab /path_to_my_file/my_crontab_file
```

- Instruction for crontab to run `/path_to_my_file/command.php` every two minutes
```
*/2 * * * * php /path_to_my_file/command.php
```

- Instruction for crontab to run `/path_to_my_file/command.php` every two hours
```
0 */2 * * * php /path_to_my_file/command.php
```

- Instruction for crontab to run `/path_to_my_file/command.php` every day at 1:30am
```
30 1 * * * php /path_to_my_file/command.php
```

- Instruction for crontab to run `/path_to_my_file/command.php` every friday at 5:00am
```
0 5 * * */5 php /path_to_my_file/command.php
```

- Instruction for crontab to run `/path_to_my_file/command.php` every 1st of the month
```
0 0 1 * * php /path_to_my_file/command.php
```

- You can edit files directly where crontabs are stored
```
/var/spool/cron/crontabs
```
