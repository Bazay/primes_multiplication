class PrimesEngine
  def initialize
    @primes = []
  end

  def calculate(size)
    unless size == 0

      if size >= 1
        @primes << 2
      end
      if size >= 2
        @primes << 3
      end

      i = 4
      state = 1
      while @primes.length < size
        (2..(Math.sqrt(i).ceil)).each do |calc|
          state = 1
          if (i.divmod(calc)[1] == 0)
             state = 0
             break
          end
        end
        @primes << i unless state == 0
        i = i+1
      end
    end

    return @primes
  end
end