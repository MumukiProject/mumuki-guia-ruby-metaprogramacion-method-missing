Acá te puede ayudar el mensaje [times](https://ruby-doc.org/core-2.2.2/Integer.html#method-i-times):

```ruby
5.times do
  puts "hola"
end # imprime 5 veces "hola"
```

```ruby
5.times.map { |it| it * 2} # [0, 2, 4, 6, 8]
```