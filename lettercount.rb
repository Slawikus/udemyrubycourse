require 'humanize'

no_space_array, total = [], 0
(1..1000).to_a.map(&:humanize)
    .each { |word| no_space_array << word.delete(" ").delete("-")}
    .each { |elements| total += elements.length}

p total

p no_space_array.inject(0) {|sum, n| sum + n.length}
p no_space_array.map(&:length).reduce(:+)

p (1..1000).to_a.map(&:humanize)
      .each { |word| no_space_array << word.delete(" ").delete("-")}
      .inject(0) {|sum, n| sum + n.length}
