class Ditto 
  def sonreir
    ":)"
  end
  def method_missing(nombre, *args)
    nombre.to_s
  end
end

ditto = Ditto.new