# frozen_string_literal: true

require './lr6.3.main.rb'

p 'Write start and stop of interval'
start = gets.to_f
stop = gets.to_f

p root(start, stop, &proc { |x| (x * x) + Math.sin(x / 2) })
p root(start, stop, &proc { |x| Math.atan(x) + x - 1 })

p root(start, stop) { |x| (x * x) + Math.sin(x / 2) }
p root(start, stop) { |x| Math.atan(x) + x - 1 }
