# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/print_matrix'

ONE = [
  [1, 2],
  [3, 4],
  [5, 6],
  [7, 8]
].freeze

TWO = [
  [1, 2, 3, 4, 5, 6, 7, 8],
  [9, 10, 11, 12, 13, 14, 15, 16],
  [17, 18, 19, 20, 21, 22, 23, 24]
].freeze

THREE = [
  [1, 2, 3, 4, 5],
  [6, 7, 8, 9, 10],
  [11, 12, 13, 14, 15],
  [16, 17, 18, 19, 20],
  [21, 22, 23, 24, 25]
].freeze

class PrintMatrixTest < Minitest::Test
  def test_input
    matrix = PrintMatrix.new(ONE)

    input = "+---+---+\n" \
            "| 1 | 2 |\n" \
            "| 3 | 4 |\n" \
            "| 5 | 6 |\n" \
            "| 7 | 8 |\n" \
            '+---+---+'

    assert_equal input, matrix.input
  end

  def test_print
    matrix = PrintMatrix.new(ONE)

    expected = "+---+---+\n" \
               "| 1 | 2 |\n" \
               "| 3 | 4 |\n" \
               "| 5 | 6 |\n" \
               "| 7 | 8 |\n" \
               "+---+---+\n" \
               "\n" \
               '1 2 4 6 8 7 5 3'

    assert_equal expected, matrix.print
  end

  def test_output_one
    matrix = PrintMatrix.new(ONE)

    assert_equal '1 2 4 6 8 7 5 3', matrix.output
  end

  def test_output_two
    matrix = PrintMatrix.new(TWO)

    assert_equal '1 2 3 4 5 6 7 8 16 24 23 22 21 20 19 18 17 9 10 11 12 13 14 15', matrix.output
  end

  def test_output_three
    matrix = PrintMatrix.new(THREE)

    assert_equal '1 2 3 4 5 10 15 20 25 24 23 22 21 16 11 6 7 8 9 14 19 18 17 12 13', matrix.output
  end
end
