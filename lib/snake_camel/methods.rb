
module SnakeCamel
  module Methods
    extend self

    def to_snake(string)
      string.to_s.gsub(/([a-z\d])([A-Z])/, '\1_\2').downcase
    end

    def to_camel(string)
      string.to_s.split('_').each { |e| e.capitalize! }.join
    end

  end
end
