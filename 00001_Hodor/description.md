Como acabamos de ver, si redefinimos `method_missing`, podemos hacer que un objeto entienda mensajes para los que no tiene un método. 

Supongamos ahora que queremos modelar a [Hodor](https://es.wikipedia.org/wiki/Anexo:Personajes_de_Canci%C3%B3n_de_hielo_y_fuego#Hodor), personaje que es conocido porque sólo sabe repetir `"Hodor!"`, sin importar lo que se le pida:

```ruby
hodor = Hodor.new
hodor.estas_ahi?
# => Hodor!
hodor.sostener! puerta, bran
# => Hodor! Hodor! Hodor!
hodor.rescatar_a! bran
# => Hodor! Hodor!
```

> Como se ve, Hodor dice tantas veces `"Hodor!"` como argumentos tenga el mensaje, más uno.
> 
> Partiendo del código que dejamos en el editor, modificá la clase `Hodor` para que refleje esto.

