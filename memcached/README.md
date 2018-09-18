## Common memcached commands
### Basic usage with telnet
- connect to memcached on localhost port 11211
```
telnet localhost 11211
```
- list slabs with stats
```
stats slabs
```
- show 10 items from slab 5
```
stats cachedump 5 10
```
- show content of the item named my_cached_data_1
```
get my_cached_data_1
```
- delete item named my_cached_data_1
```
delete my_cached_data_1
```
- set/override value of item my_cached_data_2 to some_value (which is 10 bytes) for 100 seconds (new line before and after setting value)
```
set my_cached_data_2 0 100 10
some_value
```
- set value of my_cached_data_2 only if it does not exist yet to some_value2 (11 bytes) for 200 seconds
```
add my_cached_data_2 0 100 11
some_value2
```
- remove all stored key value pairs
```
flush_all
```
- exit telnet connection to memcached
```
quit
```
