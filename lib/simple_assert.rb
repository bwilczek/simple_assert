# frozen_string_literal: true

require 'colorize'
require 'sourcify'

module SimpleAssert
  def assert(msg, &_blk)
    res = yield
    if res
      puts "OK  #{msg}".colorize(:green)
    else
      puts "ERR #{msg}".colorize(:red)
      # puts _blk.to_source
    end
  end
end
