Hace poco dijimos que en Ruby contamos con un mensaje `respond_to?` que nos dice si un objeto entiende un mensaje, por ejemplo:

```ruby
[4, 5].respond_to? :map
#=> true
102.respond_to? :map
#=> false
```

Si nos guiamos por la teórica básica de objetos, suena bastante razonable suponer que si `x.respond_to? :y`, entonces, `x.methods.include? :y`. :thought_balloon:

Bueno, no. Existe otra forma de hacer que un objeto entienda un mensaje: ¡diciéndole que hacer cuando no lo entiende! Suena raro, ¿no? Pero es bastante simple:

```ruby
class Hodor
  def method_missing(selector, *args, &block)
    "Hodor!"
  end
end
```

```ruby
hodor = Hodor.new
hodor.estas_ahi?
#=> Hodor!
hodor.rescatar_a! bran
#=> Hodor!
```

> En realidad [Hodor](https://es.wikipedia.org/wiki/Anexo:Personajes_de_Canci%C3%B3n_de_hielo_y_fuego#Hodor) dice tantas veces "Hodor!" como argumentos tenga el mensaje, más uno.
>
> ```ruby
> hodor.estas_ahi?
> #=> Hodor!
> hodor.rescatar_a! bran
> #=> Hodor! Hodor!
> ```
> Modificar la clase `Hodor` para que refleje esto.

