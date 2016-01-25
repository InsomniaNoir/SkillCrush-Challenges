require 'yahoo_weatherman'

# Find location
def get_location
  puts "Where are you? Please provide your ZIP code."
  location = gets.chomp
end

# Use location to get weather info
def lookup_location(curr_loc)
  client = Weatherman::Client.new
  client.lookup_by_location(curr_loc)
end

def current_conditions(location, curr_loc)
  tempInF = location.condition['temp']
  forecast = location.condition['text']

  puts "It is currently #{tempInF} degrees Fahrenheit and #{forecast} in #{curr_loc}"
end

get_location
current_conditions(location, curr_loc)
