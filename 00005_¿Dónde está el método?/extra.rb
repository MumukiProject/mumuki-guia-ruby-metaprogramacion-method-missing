class Ditto 
  def sonrerir
    ":)"
  end
  def method_missing(nombre, *args)
    nombre
  end
end

ditto = Ditto.new