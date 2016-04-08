
module SnakeCamel
  module Methods
    extend self

    def snakecase(string)
      string.to_s.gsub(/([a-z\d])([A-Z])/, '\1_\2').downcase
    end

    def camelcase(string)
      string.to_s.split('_').each { |e| e.capitalize! }.join
    end

  end
end
