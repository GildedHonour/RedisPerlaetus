unit package RedisPerlaetus;

class RedisPerlaetus::Client {
  has Str $.url;
  has Str $.host;
  has Int $.port;
  has Str $.path;
  # timeout
  # connect_timeout
  # password
  # db
  # id

  method new(%options) {

  }

  method !call-command($cmd, ) {

  }

  method bitcount(%key, $start? = 0, $end?)
  method bitfield(%key, $start? = 0, $end?)
  method bitop($op, $destkey, $key)
  method bitpos(%key, $start? = 0, $end?)





  method append()
  method auth()
  method bgrewriteaof()
  method bgsave()
  method bitcount()
  method bitfield()
  method bitop()
  method bitpos()
  method blpop()
  method brpop()
  method brpoplpush()

  method client() kill
  method client() list
  method client() getname
  method client() pause
  method client() reply
  method client() setname


  method cluster() addslots
  method cluster() count-failure-reports
  method cluster() countkeysinslot
  method cluster() delslots
  method cluster() failover
  method cluster() forget
  method cluster() getkeysinslot
  method cluster() info
  method cluster() keyslot
  method cluster() meet
  method cluster() nodes
  method cluster() replicate
  method cluster() reset
  method cluster() saveconfig
  method cluster() set-config-epoch
  method cluster() setslot
  method cluster() slaves
  method cluster() slots


  enum Command<Count Getkeys Info>;
  method command(Command $cmd)

  enum ConfigCommand<Get Set Rewrite Resetstat>;
  method config(ConfigCommand $cmd, Str $val)

  method dbsize()
  method debug() object
  method debug() segfault
  method decr()
  method decrby()
  method del()
  method discard()
  method dump()
  method echo()
  method eval()
  method evalsha()
  method exec()
  method exists()
  method expire()
  method expireat()
  method flushall()
  method flushdb()
  method geoadd()
  method geohash()
  method geopos()
  method geodist()
  method georadius()
  method georadiusbymember()
  method get()
  method getbit()
  method getrange()
  method getset()
  method hdel()
  method hexists()
  method hget()
  method hgetall()
  method hincrby()
  method hincrbyfloat()
  method hkeys()
  method hlen()
  method hmget()
  method hmset()
  method hset()
  method hsetnx()
  method hstrlen()
  method hvals()
  method incr()
  method incrby()
  method incrbyfloat()
  method info()
  method keys()
  method lastsave()
  method lindex()
  method linsert()
  method llen()
  method lpop()
  method lpush()
  method lpushx()
  method lrange()
  method lrem()
  method lset()
  method ltrim()
  method mget()
  method migrate()
  method monitor()
  method move()
  method mset()
  method msetnx()
  method multi()
  method object()
  method persist()
  method pexpire()
  method pexpireat()
  method pfadd()
  method pfcount()
  method pfmerge()
  method ping()
  method psetex()
  method psubscribe()
  method pubsub()
  method pttl()
  method publish()
  method punsubscribe()
  method quit()
  method randomkey()
  method readonly()
  method readwrite()
  method rename()
  method renamenx()
  method restore()
  method role()
  method rpop()
  method rpoplpush()
  method rpush()
  method rpushx()
  method sadd()
  method save()
  method scard()

  method script() debug
  method script() exists
  method script() flush
  method script() kill
  method script() load

  method sdiff()
  method sdiffstore()
  method select()
  method set()
  method setbit()
  method setex()
  method setnx()
  method setrange()
  method shutdown()
  method sinter()
  method sinterstore()
  method sismember()
  method slaveof()
  method slowlog()
  method smembers()
  method smove()
  method sort()
  method spop()
  method srandmember()
  method srem()
  method strlen()
  method subscribe()
  method sunion()
  method sunionstore()
  method swapdb()
  method sync()
  method time()
  method touch()
  method ttl()
  method type()
  method unsubscribe()
  method unlink()
  method unwatch()
  method wait()
  method watch()
  method zadd()
  method zcard()
  method zcount()
  method zincrby()
  method zinterstore()
  method zlexcount()
  method zrange()
  method zrangebylex()
  method zrevrangebylex()
  method zrangebyscore()
  method zrank()
  method zrem()
  method zremrangebylex()
  method zremrangebyrank()
  method zremrangebyscore()
  method zrevrange()
  method zrevrangebyscore()
  method zrevrank()
  method zscore()
  method zunionstore()
  method scan()
  method sscan()
  method hscan()
  method zscan()
}
# todo
