# frozen_string_literal: true

require './lr6.3.main.rb'
require 'minitest/autorun'

CHECK = 1e-4

class Task2_test < Minitest::Test
  attr_reader :start_block, :start_lambda,
              :stop_block, :stop_lambda
  def setup
    # Start and stop for lambda function
    @start_lambda = -0.5
    @stop_lambda = 55.0

    # Start and stop for block function
    @start_block = 0.0
    @stop_block = 2.0
  end

  def test_lambda_function
    assert_in_delta 0, root(start_lambda, stop_lambda, &proc { |x| x * x + Math.sin(x / 2) }), CHECK
  end

  def test_block_fun
    assert_in_delta root(start_block, stop_block) { |x| Math.atan(x) + x - 1 }, 0.5203, CHECK
  end
end
