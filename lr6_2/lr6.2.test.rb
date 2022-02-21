# frozen_string_literal: true

require './lr6.2.main.rb'
require 'minitest/autorun'

class TestTree < MiniTest::Unit::TestCase
  def setup; end

  def test_1
    assert_in_delta(Math.exp(1), lr6_test(0.0001), 0.0001)
  end

  def test_2
    assert_in_delta(Math.exp(1), lr6_test(0.00001), 0.00001)
  end

  def teardown; end
end
