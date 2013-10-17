# siphash-ruby

A Ruby implementation of SipHash[http://131002.net/siphash/siphash.pdf].
Contains an implementation of SipHash-2-4.

## Installation
    gem install siphash

## Usage

```ruby
require 'siphash'

secret_key = "\x00\x01\x02\x03\x04\x05\x06\x07\x08\x09\x0a\x0b\x0c\x0d\x0e\x0f"
secret_msg = "\x00\x01\x02\x03\x04\x05\x06\x07\x08\x09\x0a\x0b\x0c\x0d\x0e"
SipHash.digest(secret_key, secret_msg)

# Generates
# => 11613035633349379557
```

## License

Copyright (c) 2013 Martin Boßlet. Distributed under the MIT License. See LICENSE for
further details.
