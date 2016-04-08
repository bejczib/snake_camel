require 'snake_camel/methods'

module SnakeCamel
module InstanceMethods

  def to_snake
    SnakeCamel::Methods.to_snake(self)
  end
end
end