Supongamos que queremos modelar a [Hodor](https://es.wikipedia.org/wiki/Anexo:Personajes_de_Canci%C3%B3n_de_hielo_y_fuego#Hodor), personaje que es conocido porque sólo sabe decir "Hodor!".

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

> En realidad Hoder dice tantas veces "Hodor!" como argumentos tenga el mensaje, más uno.
>
> ```ruby
> hodor.estas_ahi?
> #=> Hodor!
> hodor.rescatar_a! bran
> #=> Hodor! Hodor!
> ```
> Modificar la clase `Hodor` para que refleje esto.

