¿Tiene sentido tener una clase `Hodor`, de la que habrá una sóla instancia?

En un lenguaje basado en clases, la respuesta es: no, pero es necesario. Sin embargo, Ruby nos agregar métodos directamente a una instancia, con lo que podemos escribir:

```ruby
hodor = Object.new
def hodor.method_missing(selector, *args, &block)
  "Hodor!"
end
```

¡Y todo sigue funcionando! ¡Ya no hay que instanciar a `hodor` a partir de `Hodor`!

En breve veremos que esto es posible gracias a las **autoclases**.

