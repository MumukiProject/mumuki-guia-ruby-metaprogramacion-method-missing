Otros dos patrones orientados a objetos que muchas veces nos llevan a repetir lógica son el [_decorator_](https://sourcemaking.com/design_patterns/decorator) y el [_adapter_](https://sourcemaking.com/design_patterns/adapter). 

Cuando programamos estos patrones, es común que lleguemos a escribir clases que delegan varios mensajes en sus atributos: 

```ruby
class X
  # la clase X declara los métodos `y` y `z`, 
  # pero estos lo único que hacen es delegar en `@c`:  
  def y
    @c.y
  end

  def z
    @c.z
  end

  #..etc..
end
```

> Esto es bastante engorroso :pensive:, así que queremos poder reescribirlo de la siguiente forma: 
> 
> ```ruby
> class X < Forwarder
>   # con esto estamos diciendo que todo mensaje que sea 
>   # recibido por X y no sea entendido, será delegado a @c 
>   def forward_to
>     @c
>   end
> end
>```
> 
> Codificá la clase `Forwader`