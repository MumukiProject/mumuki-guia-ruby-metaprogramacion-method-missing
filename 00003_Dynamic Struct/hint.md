* Para convertir un string en símbolo, existe el mensaje `to_sym`
* Para convertir un objeto en string, existe `to_s`
* Cuando se le envía un mensaje de tipo setter a un objeto como ejemplo `pepita.energia = 49`,  el selector de dicho mensaje es el símbolo `:energia=`.
* Para definir un constructor, podemos definir un método de instancia `initialize`. Ejemplo:

```ruby
class Pepita
  def initialize(energia)
    @energia = energia
  end
end
```
