require 'terminal-table'
require_relative 'prime'

class PrimesDrawer
  def initialize
    @table = Terminal::Table.new title: "Primes Multiplication\nTable"
  end

  def draw_table(primes_array)
    if primes_array.length < Prime::MIN_SIZE || primes_array.length > Prime::MAX_SIZE
      puts "Please set the size within the following range: #{Prime::MIN_SIZE} >= X <= #{Prime::MAX_SIZE}"
      exit
    end

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