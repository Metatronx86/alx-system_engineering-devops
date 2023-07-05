#!/usr/bin/env ruby

def match_school(argument)
  regex = /School/
  if argument.match?(regex)
    puts "Match found!"
  else
    puts "No match found."
  end
end

# Accept one argument from the command line
argument = ARGV[0]

# Call the matching method
match_school(argument)
