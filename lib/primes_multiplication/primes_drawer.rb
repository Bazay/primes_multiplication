require 'terminal-table'
require_relative 'prime'

class PrimesDrawer
  def initialize
    @table = Terminal::Table.new title: "Primes Multiplication\nTable"
  end

  def draw_table(primes_array)
    @table.headings = [""] + primes_array
    
    # 1. Build table rows
    primes_array.each do |current_prime|
      temp_array = [ current_prime ]
      primes_array.each do |prime|
        temp_array << (current_prime * prime)
      end
      @table << temp_array
    end

    # 2. Format table
    (1..primes_array.length).each do |col|
      @table.align_column(col, :right)
    end
    
    # 3. Print table
    puts @table
  end
end