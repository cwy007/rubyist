redis-server
redis-server --port 6380

redis-cli SHUTDOWN

redis-cli -h 127.0.0.1 -p 6379

redis-cli
PING
ECHO hi

CONFIG GET databases   一个 Redis 实例，默认可以创建 16 个字典 dictionary
SELECT 1    切换字典
KEYS *      符合指定规则的键名

SELECT 0
KEYS *
