# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../core_ext/array'

class ArrayTest < Minitest::Test
  def test_duplicate
    array = [
      [1, 2],
      [3, 4]
    ]

    assert_equal [[1, 2], [3, 4]], array.duplicate
  end
end
