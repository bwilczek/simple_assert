# frozen_string_literal: true

require_relative 'lib/simple_assert'

include SimpleAssert # rubocop:disable Style/MixinUsage

def valid_day?(day)
  (1..31).cover? day.to_i
end

assert('Inside lower limit') { valid_day? 1 }
assert('Outside lower limit') { !valid_day? 0 }
assert('Inside upper limit') { valid_day? 31 }
assert('Outside upper limit') { !valid_day? 32 }
assert('Deliberate failure') { valid_day? 66 }
assert('Deliberate failure 2') { false }
