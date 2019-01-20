### Redis 最核心的内容 -- 数据类型。
SET foo 1    设定键            OK
KEYS *       所有符合规则的键名

EXISTS foo   判断键是否存在     0/1

DEL foo bar  删除多个键        返回删除键的个数
DEL baz      删除一个键

删除所有符合规则键的两种方式：
redis-cli KEYS "user:*" | xargs redis-cli DEL
redis-cli DEL  `redis-cli KEYS "user:*"`

TYPE bar

### 5 中主要的数据类型
redis 不支持数据类型嵌套

#### string
SET key value
GET key

INCR key
INCRBY key increment

DECR key
DECRBY key decrement

INCRBYFLOAT key increment

APPEND key value

STRLEN key

MSET key value [key, value...]
eg: MSET key1 v1 key2 v2 key3 v3

GETBIT key offset
SETBIT key offset value
BITCOUNT key [start] [end]
BITOP operation destkey key [key...]

#### hash 散列
键，字段，字段值

HSET key field value
HGET key field
HMSET key field value [field, value...]
HMGET key field [field...]
HGETALL key

HEXISTS key

HSETNX key field value

HINCRBY key field increment

HDEL key field [field...]

HKEYS key
HVALS key

#### list 列表
LPUSH key value [value...]
RPUSH key value [value...]

LPOP key
RPOP key

LLEN key

LRANGE key start stop

LREM key count value

LINDEX key index
LSET key index value

LTRIM key start end

LINSERT key BEFORE|AFTER pivot value

RPOPLPUSH source destination

#### set  集合

#### zset 有序集合

#### 概念
- 竟态条件（race condition）：指一个系统或进程的输出，依赖于不受控制的事件的出现顺序或者
出现时机。
- 原子操作（atomic operation)：取原子的不可拆分的意思，原子操作是最小的执行单位，不会在执行的
过程中被其它命令插入打断。
