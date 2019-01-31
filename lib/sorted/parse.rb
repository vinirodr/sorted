require 'sorted/set'

module Sorted
  module Parse
    def split(raw, delim, &block)
      return Set.new if raw.nil?
      raw.to_s.split(delim).inject(Set.new, &block)
    end

    def parse_match(m)
      parsed = [(m[2].nil? ? m[1] : m[2]), (m[3].nil? ? 'asc' : m[3].downcase)]
      parsed << m[4].downcase unless m[4].nil?
      parsed
    end
  end
end
