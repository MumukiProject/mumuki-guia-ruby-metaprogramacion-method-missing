describe "DynamicStruct" do
  let(:empty) { DynamicStruct.new({}) }
  let(:position) { DynamicStruct.new({x: 2, y:3}) }
  let!(:h) { {} }
  let!(:dynamic) { DynamicStruct.new(h)}

  it "DynamicStruct.new({}).foo == nil" do
    expect(empty.foo).to be nil
  end

  it "DynamicStruct.new({}).bar == nil" do
    expect(empty.bar).to be nil
  end

  it "DynamicStruct.new({x: 2, y:3}).foo == nil" do
    expect(position.foo).to be nil
  end

  it "DynamicStruct.new({x: 2, y:3}).x == 2" do
    expect(position.x).to be 2
  end

  it "DynamicStruct.new({x: 2, y:3}).y == 3" do
    expect(position.y).to be 3
  end

  it "Si el diccionario cambia, tambien cambia el dynamic_struct" do
    expect(dynamic.baz).to be nil
    h[:baz] = "ok"
    expect(dynamic.baz).to eq "ok"
  end

  it "Si el dynamic_struct cambia, tambien cambia el diccionario" do
    dynamic.baz = "ack"
    expect(h[:baz]).to eq "ack"
  end

end
