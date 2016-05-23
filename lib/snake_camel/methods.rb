module SnakeCamel
  module Methods
    extend self

    def snakecase!(string)
      string.replace(string.to_s.gsub(/([a-z\d])([A-Z])/, '\1_\2').downcase)
    end

    def snakecase(string)
      snakecase!(string.dup)
    end

    def camelcase(string)
      string.to_s.split('_').map(&:capitalize).join
    end

    def camelcase!(string)
      string.replace(camelcase(string))
    end

    def constant_name(string)
      string.split(File::Separator).map { |part| camelcase(part) }.join('::')
    end

    def path_name(camelcase_string)
      return snakecase(camelcase_string).insert(0, File::Separator) unless camelcase_string.match(/::/)
      camelcase_string.split("::").map { |part| snakecase(part) }.join(File::Separator)
    end

  end
end