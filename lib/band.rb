require_relative 'band_release'

class Band
  attr_accessor :name, :agent, :date_signed

  def initialize(name,agent,signed)
    @name = name
    @agent = agent
    @date_signed = signed

    @releases = []
  end

  def add_release(title, year, sales)
    @releases.push ( BandRelease.new(title, year, sales ))
  end

  def total_sales
    @releases.inject(0) do |total,release|
      total + release.sales
    end
  end

  def latest_release
    @releases.inject(nil) do |newest,release|
      newest.nil? || release.year > newest.year ? release : newest
    end
  end

end


