Repasemos lo que ocurre cuando enviamos un mensaje a un objeto: Ruby intentará buscar un método apropiado, en orden, en los siguientes lugares: 

1. en la autoclase del objeto
2. en la clase del objeto
3. en alguna de las superclases del objeto

¿Y si el método no está allí? 

Anteriormente dijimos que Ruby lanzará una excepción `NoMethodError`. Pero la cosa es un poco más compleja: en ese momento Ruby enviará al objeto en cuestión un mensaje llamado `method_missing`, que... adiviná... ¡dice **qué hacer cuando el método buscado no se encuentra**!

Y es la [implementación por defecto](https://ruby-doc.org/core-2.2.0/BasicObject.html#method-i-method_missing) quien lanza `NoMethodError` :sunglasses:: 

```ruby
class Object
  def method_missing(nombre, argumentos)
    raise NoMethodError
  end
end
```

> Como todo método se puede redefinir en las subclases. Mirá el código de la biblioteca y
> probá en la consola qué pasa si enviás los siguientes mensajes: 
> 
> * `ム ditto.to_s`
> * `ム ditto.sonreir`
> * `ム ditto.impactrueno`
> * `ム ditto.impactrueno 20`
>



