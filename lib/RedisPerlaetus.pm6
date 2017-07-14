unit package RedisPerlaetus;

# todo
class RedisPerlaetus::Client {
    has Str $.url = %*ENV<REDIS_URL>;
    has Str $.host = "127.0.0.1";
    has Int $.port = 6379;
    has Str $.path;
    has Socket::INET $.connection is rw;
    # timeout
    # connect_timeout
    # password
    # db
    # id


    # todo
    multi method new {
    }


    multi method new(Str :$url) {
    }

    multi method new(Str :$password) {
    }


    multi method new(Str :$sock_file) {
    }


    method new(Str :$host, Int :$port?, Int :$db?) {
        $.connection = IO::Socket::INET.new(:$host = $host, :$port = $port);
    }

    method !call-command($cmd, *$arg) {
        $.connection.write($cmd, )
    }

    method bitcount(%key, $start? = 0, $end?)
    method bitfield(%key, $start? = 0, $end?)
    method bitop($op, $destkey, $key)
    method bitpos(%key, $start? = 0, $end?)





    method append()
    method auth(--> Either)
    method bgrewriteaof()
    method bgsave()
    method bitcount()
    method bitfield()
    method bitop()
    method bitpos()
    method blpop()
    method brpop()
    method brpoplpush()


    enum ClientCommand<Kill List Getname Pause Reply Setname>;
    method client(ClientCommand $cmd)

    enum ClusterCommand<Addslots CountFailureReports CountKeysinSlot Delslots Failover Forget
                        GetKeysInSlot Info Keyslot Meet Nodes Replicate Reset SaveConfig
                        SetConfigEpoch SetSlot Slaves Slots>;

    method cluster(ClusterCommand $cmd)

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

    enum InfoSection <Server Clients Memory Persistance Stats Replication CPU CommandStats Cluster
                      KeySpace All Default>;

    method info(InfoSection $infSect = InfoSection::Default --> Hash[Str Str]) {
        call-command("info")
    }

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
    method quit(--> Either)
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

    enum ScriptCommand<Debug Exists Flush Kill Load>;
    method script(ScriptCommand $cmd)

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

class Either {
    has $.error-message;
    has $.value = enum <Success Error>;

    submethod success {
        self.bless(value => Enum::Success)
    }

    submethod failure(Str $error-msg) {
        self.bless(value => Enum::Success, :$error-message)
    }

    sub success?(--> Bool) {

    }

    sub failure?(--> Bool) {

    }
}
