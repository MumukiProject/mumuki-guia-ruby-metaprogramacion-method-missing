class Symbol
  # convierte un símbolo de la forma :foo= en :foo
  def writer_attribute_name
    self.to_s[0..-2].to_sym
  end
end