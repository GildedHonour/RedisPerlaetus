unit package RedisPerlaetus;

# todo
class RedisPerlaetus::ProtocolError is Exception {
  method message() {
    &?CLASS.name;
  }
}

class RedisPerlaetus::CommandError is Exception {
  method message() {
    &?CLASS.name;
  }
}

class RedisPerlaetus::TimeoutError is Exception {
  method message() {
    &?CLASS.name;
  }
}
