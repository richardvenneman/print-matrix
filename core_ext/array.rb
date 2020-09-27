# frozen_string_literal: true

class Array
  def duplicate
    Marshal.load(Marshal.dump(self))
  end
end
