En programación orientada a objetos, se conoce como [_null object_](https://en.wikipedia.org/wiki/Null_Object_pattern) a un objeto que no hace nada. 

Normalmente escribir estos objetos es tedioso, así que nos gustaría contar con un objeto llamado `null` que resuelva este problema de forma genérica:

```ruby
> null.foo
=> null
> null.do_something! 4
=> null
```

> Creá un objeto llamado `null`, que siempre que reciba un mensaje que no entienda, se devuelva a si mismo.


