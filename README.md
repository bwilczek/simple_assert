## Usage

```ruby
require 'simple_assert'
include SimpleAssert

def valid_day?(day)
  (1..31).include? day.to_i
end

assert('Inside lower limit') { valid_day? 1 }
assert('Outside lower limit') { !valid_day? 0 }
assert('Inside upper limit') { valid_day? 31 }
assert('Outside upper limit') { !valid_day? 32 }
assert('Deliberate failure') { valid_day? 66 }
```

This will produde the output:

```
OK  Inside lower limit
OK  Outside lower limit
OK  Inside upper limit
OK  Outside upper limit
ERR Deliberate failure
```
