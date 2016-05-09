require 'snake_camel/methods'

module SnakeCamel
  module InstanceMethods

    def snakecase
      SnakeCamel::Methods.snakecase(self)
    end

    def snakecase!
      SnakeCamel::Methods.snakecase!(self)
    end

    def camelcase
      SnakeCamel::Methods.camelcase(self)
    end

    def camelcase!
      SnakeCamel::Methods.camelcase!(self)
    end

    def constant_name
      SnakeCamel::Methods.constant_name(self)
    end

  end
end