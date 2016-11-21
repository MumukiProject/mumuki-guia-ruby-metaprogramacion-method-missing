Muchas veces, al implementar un _decorator_, un _adapter_, o simplemente buscando evitar romper el encapsulamiento, tendremos código de la siguente forma:

```ruby
class X
  def y
    @c.y
  end

  def z
    @c.z
  end

  #..etc..
end
```

Escribir esto es bastante engorroso: por cada mensaje de `@c`, vamos a terminar declarando un método en `X` que sólo delegue.

> Implementar lo necesario que sea posible escribir el código anterior de la siguiente forma:

```ruby
class X < Forwarder
  def forward_to
    @c
  end
end
```