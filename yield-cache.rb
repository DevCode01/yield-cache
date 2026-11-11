#!/usr/bin/env ruby
# Word frequency analyzer.
text = ARGV.empty? ? $stdin.read : File.read(ARGV[0])

words = text.split
lines = text.lines.count
chars = text.length

freq = words
       .map { |w| w.downcase.gsub(/[^a-z0-9]/, "") }
       .reject(&:empty?)
       .tally

puts "Lines:      #{lines}"
puts "Words:      #{words.size}"
puts "Characters: #{chars}"
puts "Unique:     #{freq.size}"
puts ""
puts "Top 10 words:"
freq.sort_by { |_w, c| -c }.first(10).each do |w, c|
  puts "  #{w.ljust(15)} #{c}"
end
