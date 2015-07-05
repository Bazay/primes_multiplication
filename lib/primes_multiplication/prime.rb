require_relative 'primes_engine'
require_relative 'primes_drawer'
require 'optparse'

class Prime

  MIN_SIZE = 5
  MAX_SIZE = 30

  def initialize
    @options = {}

    OptionParser.new do |opts|
      opts.banner = "Primes Multiplication Table by Baron Bloomer"

      opts.on("--table X", "-t X", "Draw 'X' number of primes multiplication table") do |v|
        @options[:table] = v.to_i
      end
      opts.on("--help", "-h", "Usage: Must fall in the range #{Prime::MIN_SIZE} >= X <= #{Prime::MAX_SIZE}") do 
        puts opts
        exit
      end
    end.parse!
  end

  def run
    valid?
    primes_array = PrimesEngine.new.calculate(@options[:table])
    PrimesDrawer.new.draw_table(primes_array)
  end

  private
  def valid?
    if @options[:table].nil?
      puts "Not a valid option. --help or -h for usage information."
      exit!
    end
  end

end