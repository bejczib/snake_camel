require 'snake_camel/instance_methods'

String.__send__(:include, SnakeCamel::InstanceMethods)