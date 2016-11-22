Queremos definir una clase `DynamicStruct` que, a partir de un diccionario (`Hash`), pueda construir objetos que tengan un accessor para cada entrada. Por ejemplo:

```ruby
un_diccionario = {x: 4, z: "foo"}
un_struct = DynamicStruct.new(un_diccionario)

un_struct.x # 4
un_struct.y = "bar"
un_struct.m # nil
un_struct.y # "bar"
#etc
```

Además tenemos que garantizar que si los valores de las entradas de `un_diccionario` cambian, o nuevas entradas son añadidas o quitadas, estos cambios también tienen que verse reflejados en un_struct, y viceversa. Ejemplo:

```ruby
un_diccionario.z = 5

un_struct.z #5
#etc
```


> Desarrollar `DynamicStruct` utilizando las herramientas vistas hasta ahora.