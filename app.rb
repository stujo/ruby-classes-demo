require_relative 'lib/band.rb'

band = Band.new('Gorillaz', 'Billy Connelly', '2000-03-23')
	
band.add_release('Gorillaz', 2001, 1000001 )
band.add_release('Demon Days', 2005, 930430 )
band.add_release('Plastic Beach', 2010, 783211 )
band.add_release('The Fall', 2011, 8761232 )

emailTitle = "Hi Fan! #{band} has a new release called #{band.latest_release.name}"
	
puts "#{band.name} has cumulative sales of of #{band.total_sales} units"

puts "#{band.name} is managed by #{band.agent} and signed with us on #{band.date_signed}"

puts "Currently we have #{Band.band_count} bands signed to our label"

