require 'terminal-table'

module Draw

  class Table
  
    def initialize(args = {})
      @size = args[:size]
      @table = Terminal::Table.new
      @table.title = args[:title] || "Primes Multiplication Table to #{args[:size]}"
      #table.style = {:width => 40}
    end

    def self.build_table(options={})
      @table.rows = args[:rows]

      #Add in headings...
      build_headings
    end

    def self.draw

    end

    protected 
    def build_headings
      #header = 
      @table.header = []
      @table.rows
    end

end