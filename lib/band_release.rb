class BandRelease
  attr_accessor :name, :year, :sales
  def initialize(name,year,sales)
    @name = name
    @year = year
    @sales = sales
  end
end
