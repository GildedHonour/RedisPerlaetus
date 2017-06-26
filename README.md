RedisPerlaetus
================================================
Redis PERLaetus is a Redis client written in Perl 6.
Perlaetus means "very joyful" in Latin.


## Under development

The work is in progress...


## Example

```perl6
use RedisPerlaetus;
constant Redis = RedisPerlaetus;

use Redis::Client;

my Redis::Client $client .= new(.....);
# ....
```

## Installation

```shell
$ zef update
$ zef install RedisPerlaetus
```

## Tests

```shell
PERL6LIB=lib prove -e perl6 t
```


## Author

Alex Maslakov | me@gildedhonour.com


## License

Apache 2.0