- list rabbit queues
```
rabbitmqctl list_queues
```

- enable web ui
```
rabbitmq-plugins enable rabbitmq_management
```

- create test user, give him administrative access and set his permissions
```
rabbitmqctl add_user test test
rabbitmqctl set_user_tags test administrator
rabbitmqctl set_permissions -p / test ".*" ".*" ".*"
```
