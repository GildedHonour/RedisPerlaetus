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


    sub str_result_ok?(Str x --> Bool) {
        x eq "ok"
    }

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

    method !call-command($cmd, *$args --> Any) {
        $.connection.write($cmd, |$args)
    }
    
    method bitcount(%key, $start? = 0, $end?) { die "not implemented yet" }

    method bitfield(%key, $start? = 0, $end?) { die "not implemented yet" }

    method bitop($op, $destkey, $key) { die "not implemented yet" }

    method bitpos(%key, $start? = 0, $end?) { die "not implemented yet" }

    method append(--> Int) {
        die "not implemented yet"
    }

    method auth(--> Bool) {
        my Str %res = call-command("auth");
        str_result_ok?(%res)
    }

    method bgrewriteaof() { die "not implemented yet" }
    method bgsave() { die "not implemented yet" }
    method bitcount() { die "not implemented yet" }
    method bitfield() { die "not implemented yet" }
    method bitop() { die "not implemented yet" }
    method bitpos() { die "not implemented yet" }
    method blpop() { die "not implemented yet" }
    method brpop() { die "not implemented yet" }
    method brpoplpush() { die "not implemented yet" }


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

    method dbsize() { die "not implemented yet" }
    method debug() { die "not implemented yet" } object
    method debug() { die "not implemented yet" } segfault
    method decr() { die "not implemented yet" }
    method decrby() { die "not implemented yet" }
    method del(*$keys --> Int) { 
        call-command("del", keys) 
    }

    method discard() { die "not implemented yet" }
    method dump() { die "not implemented yet" }
    method echo() { die "not implemented yet" }
    method eval() { die "not implemented yet" }
    method evalsha() { die "not implemented yet" }
    method exec() { die "not implemented yet" }
    method exists() { die "not implemented yet" }
    method expire() { die "not implemented yet" }
    method expireat() { die "not implemented yet" }
    method flushall() { die "not implemented yet" }
    method flushdb() { die "not implemented yet" }
    method geoadd() { die "not implemented yet" }
    method geohash() { die "not implemented yet" }
    method geopos() { die "not implemented yet" }
    method geodist() { die "not implemented yet" }
    method georadius() { die "not implemented yet" }
    method georadiusbymember() { die "not implemented yet" }
    method get() { die "not implemented yet" }
    method getbit() { die "not implemented yet" }
    method getrange() { die "not implemented yet" }
    method getset() { die "not implemented yet" }
    method hdel() { die "not implemented yet" }
    method hexists() { die "not implemented yet" }
    method hget() { die "not implemented yet" }
    method hgetall() { die "not implemented yet" }
    method hincrby() { die "not implemented yet" }
    method hincrbyfloat() { die "not implemented yet" }
    method hkeys() { die "not implemented yet" }
    method hlen() { die "not implemented yet" }
    method hmget() { die "not implemented yet" }
    method hmset() { die "not implemented yet" }
    method hset() { die "not implemented yet" }
    method hsetnx() { die "not implemented yet" }
    method hstrlen() { die "not implemented yet" }
    method hvals() { die "not implemented yet" }
    method incr() { die "not implemented yet" }
    method incrby() { die "not implemented yet" }
    method incrbyfloat() { die "not implemented yet" }

    enum InfoSection <Server Clients Memory Persistance Stats Replication CPU CommandStats 
                        Cluster KeySpace All Default>;

    #todo
    method info(InfoSection $infSect = InfoSection::Default --> Hash[Str Str]) {
        my $res = call-command("info", $infSect);
    }

    method keys() { die "not implemented yet" }
    method lastsave() { die "not implemented yet" }
    method lindex() { die "not implemented yet" }
    method linsert() { die "not implemented yet" }
    method llen() { die "not implemented yet" }
    method lpop() { die "not implemented yet" }
    method lpush() { die "not implemented yet" }
    method lpushx() { die "not implemented yet" }
    method lrange() { die "not implemented yet" }
    method lrem() { die "not implemented yet" }
    method lset() { die "not implemented yet" }
    method ltrim() { die "not implemented yet" }
    method mget() { die "not implemented yet" }
    method migrate() { die "not implemented yet" }
    method monitor() { die "not implemented yet" }
    method move() { die "not implemented yet" }
    method mset() { die "not implemented yet" }
    method msetnx() { die "not implemented yet" }
    method multi() { die "not implemented yet" }
    method object() { die "not implemented yet" }
    method persist() { die "not implemented yet" }
    method pexpire() { die "not implemented yet" }
    method pexpireat() { die "not implemented yet" }
    method pfadd() { die "not implemented yet" }
    method pfcount() { die "not implemented yet" }
    method pfmerge() { die "not implemented yet" }
    method ping() { die "not implemented yet" }
    method psetex() { die "not implemented yet" }
    method psubscribe() { die "not implemented yet" }
    method pubsub() { die "not implemented yet" }
    method pttl() { die "not implemented yet" }
    method publish() { die "not implemented yet" }
    method punsubscribe() { die "not implemented yet" }

    method quit(--> Str) {
        call-command("info")
    }

    method randomkey() { die "not implemented yet" }
    method readonly() { die "not implemented yet" }
    method readwrite() { die "not implemented yet" }
    method rename() { die "not implemented yet" }
    method renamenx() { die "not implemented yet" }
    method restore() { die "not implemented yet" }
    method role() { die "not implemented yet" }
    method rpop() { die "not implemented yet" }
    method rpoplpush() { die "not implemented yet" }
    method rpush() { die "not implemented yet" }
    method rpushx() { die "not implemented yet" }
    method sadd() { die "not implemented yet" }
    method save() { die "not implemented yet" }
    method scard() { die "not implemented yet" }

    enum ScriptCommand<Debug Exists Flush Kill Load>;
    method script(ScriptCommand $cmd) { die "not implemented yet" }

    method sdiff() { die "not implemented yet" }
    method sdiffstore() { die "not implemented yet" }
    method select() { die "not implemented yet" }
    method set() { die "not implemented yet" }
    method setbit() { die "not implemented yet" }
    method setex() { die "not implemented yet" }
    method setnx() { die "not implemented yet" }
    method setrange() { die "not implemented yet" }
    method shutdown() { die "not implemented yet" }
    method sinter() { die "not implemented yet" }
    method sinterstore() { die "not implemented yet" }
    method sismember() { die "not implemented yet" }
    method slaveof() { die "not implemented yet" }
    method slowlog() { die "not implemented yet" }
    method smembers() { die "not implemented yet" }
    method smove() { die "not implemented yet" }
    method sort() { die "not implemented yet" }
    method spop() { die "not implemented yet" }
    method srandmember() { die "not implemented yet" }
    method srem() { die "not implemented yet" }
    method strlen() { die "not implemented yet" }
    method subscribe() { die "not implemented yet" }
    method sunion() { die "not implemented yet" }
    method sunionstore() { die "not implemented yet" }
    method swapdb() { die "not implemented yet" }
    method sync() { die "not implemented yet" }
    method time() { die "not implemented yet" }
    method touch() { die "not implemented yet" }
    method ttl() { die "not implemented yet" }
    method type() { die "not implemented yet" }
    method unsubscribe() { die "not implemented yet" }
    method unlink() { die "not implemented yet" }

    method unwatch() { die "not implemented yet" }

    method wait() { die "not implemented yet" }

    method watch() { die "not implemented yet" }

    method zadd() { die "not implemented yet" }

    method zcard() { die "not implemented yet" }

    method zcount() { die "not implemented yet" }

    method zincrby() { die "not implemented yet" }

    method zinterstore() { die "not implemented yet" }

    method zlexcount() { die "not implemented yet" }

    method zrange() { die "not implemented yet" }

    method zrangebylex() { die "not implemented yet" }

    method zrevrangebylex() { die "not implemented yet" }

    method zrank() { die "not implemented yet" }

    method zrem() { die "not implemented yet" }

    method zremrangebylex() { die "not implemented yet" }

    method zremrangebyrank() { die "not implemented yet" }

    method zremrangebyscore() { die "not implemented yet" }

    method zrevrange() { die "not implemented yet" }

    method zrevrangebyscore() { die "not implemented yet" }

    method zrevrank() { die "not implemented yet" }

    method zscore() { die "not implemented yet" }

    method zunionstore() { die "not implemented yet" }

    method scan() { die "not implemented yet" }
    method sscan() { die "not implemented yet" }
    method hscan() { die "not implemented yet" }
    method zscan() { die "not implemented yet" }
}

# todo
role Result[::T, $value] {
    has $.error-message;

    enum Status <Success Failure>;
    has Status $.status;
    has T $.value;

    submethod success {
        self.bless(status => Enum::Success)
    }

    submethod success($value) {
        self.bless(status => Enum::Success, $value)
    }


    submethod failure(Str $err-msg) {
        self.bless(status => Enum::Failure, :$error-message)
    }

    sub is-success(--> Bool) {
        $.status == Status::Success
    }

    sub is-failure(--> Bool) {
        $.status == Status::Failure 
    }
}

=being RESP typpes
    For Simple Strings the first byte of the reply is "+"
    For Errors the first byte of the reply is "-"
    For Integers the first byte of the reply is ":"
    For Bulk Strings the first byte of the reply is "$"
    For Arrays the first byte of the reply is "*"
=end

class Response {
    has $.value
}
