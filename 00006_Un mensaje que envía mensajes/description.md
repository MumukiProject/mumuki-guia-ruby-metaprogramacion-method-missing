Como sabemos, para enviar un mensaje simplemente hacemos, por ejemplo, `perro.ladrar!`. Pero Ruby nos ofrece otra posibilidad: el mensaje `send`, que es un mensaje cuya función es la de **enviar mensajes** :scream:. 

```ruby
perro.send :ladrar_a!, un_intruso
# equivalente a perro.ladrar_a! un_intruso
```

`send` toma los parámetros de la siguiente forma:

* el primero  es el selector del mensaje
* luego vienen todos los parámetros del mensaje

¿Y por qué querríamos hacer esto? ¡Cuando no sabemos el nombre del mensaje que queremos enviar! Por ejemplo:

```ruby
# un_mensaje podria ser una varible con valores "ladrar!" o "morder!"
perro.send un_mensaje

# volumen podria ser otra variable, con valores posible "fuerte" o "bajo"
perro.send "ladrar_#{volumen}!"
```

> Probá el mensaje `send` en la consola. Nos será útil en el próximo ejercicio :wink:
