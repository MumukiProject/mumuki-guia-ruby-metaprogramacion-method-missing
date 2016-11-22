¿Tiene sentido tener una clase `Hodor`, de la que habrá una sóla instancia?

Si recordamos el concepto de _autoclases_, las cuales nos permiten agregarle comportamiento a una instancia particular, podríamos reescribir el código de la siguiente forma: 

```ruby
hodor = Object.new
def hodor.method_missing(selector, *args, &block)
  #etc...
end
```



