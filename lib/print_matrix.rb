# frozen_string_literal: true

require 'terminal-table'
require_relative '../core_ext/array'

class PrintMatrix
  def initialize(data)
    @matrix = data
  end

  def print
    [input, output].join("\n\n")
  end

  def input
    Terminal::Table.new(rows: @matrix).to_s
  end

  def output
    matrix = @matrix.duplicate
    entries = []

    sides = {
      top: -> { matrix.shift },
      right: -> { matrix.map(&:pop) },
      bottom: -> { matrix.pop.reverse },
      left: -> { matrix.map(&:shift).reverse }
    }

    steps = sides.keys.cycle
    entries.concat(sides[steps.next].call) until matrix.empty?
    
    entries.compact.join(' ')
  end
end
