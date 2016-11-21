En ruby, para enviar un mensaje dinámicamente, tenemos el mensaje send:

```ruby
perro.send :ladrar_a, un_intruso
# equivalente a perro.ladrar_a un_intruso
```

Send toma los parámetros de la siguiente forma:

* el primero  es el selector del mensaje
* luego vienen todos los parámetros del mensaje
* por último, el bloque