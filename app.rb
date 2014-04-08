require_relative 'lib/band.rb'

band = Band.new('Gorillaz', 'Billy Connelly', '2000-03-23')

band.addRelease('Gorillaz', 2001, 1000001 )
band.addRelease('Demon Days', 2005, 930430 )
band.addRelease('Plastic Beach', 2010, 783211 )
band.addRelease('The Fall', 2011, 8761232 )

emailTitle = "Hi Fan! #{band} has a new release called #{band.latestRelease.name}"

puts "#{band.name} has cumulative sales of of #{band.total_sales} units"

puts "#{band.name} is managed by #{band.agent} and signed with us on #{band.date_signed}"

puts "Currently we have #{Band.band_count} bands signed to our label"
