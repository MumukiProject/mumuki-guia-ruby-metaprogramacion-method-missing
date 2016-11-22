class Ditto 
  def sonreir
    ":)"
  end
  def method_missing(nombre, *args)
    nombre.to_s # el nombre es un símbolo; podemos convertirlo a string usando to_s
  end
end

ditto = Ditto.new