¿Como andás? ¡Tanto tiempo! 

Quizás recuerdes que anteriormente te contamos sobre el mensaje `respond_to?`, que nos dice si un objeto entiende un mensaje, por ejemplo:

```ruby
[4, 5].respond_to? :map
#=> true
102.respond_to? :map
#=> false
```

Según el modelo clásico del paradigma de objetos, un objeto entiende un mensaje sí y solo sólo si tiene un método correspondiente. Entonces, suena bastante razonable suponer que siempre que `x.respond_to? :y` sea verdadero, entonces se cumple que `x.methods.include? :y`, ¿no? :thought_balloon:

Bueno, no. Existe otra forma de hacer que un objeto entienda un mensaje: ¡diciéndole qué hacer cuando no lo entiende!

¿Suena raro? :alien: ¡Acompañanos y lo entenderemos!
