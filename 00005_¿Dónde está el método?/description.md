Repasemos lo que ocurre cuando enviamos un mensaje a un objeto: Ruby intentará buscarlo, en orden, en los siguientes lugares: 

1. en la autoclase del objeto
2. en la clase del objeto
3. en alguna de las superclases del objeto

¿Y si el método no está allí? Anteriormente dijimos que en ese caso, Ruby lanzará un `NoMethodError`. 

Pero la cosa, en realidad, es un poco más compleja: en ese momento Ruby enviará al objeto en cuestión un mensaje llamado `method_missing`, que... adiviná... ¡dice **qué hacer cuando el método buscado no se encuentra**!