require 'ostruct'

describe Forwarder do
  class Foo < Forwarder
    def initialize(x)
      @x = x
    end
    def forward_to
      @x
    end

    def bar
      "bar"
    end
  end
  let(:baz) { OpenStruct.new(foo: 2, bar: 4, baz:5) }

  it("si el delegador tiene el método, no delega") do
    expect(Foo.new(baz).bar).to eq "bar"
  end

  it("si el delegador no tiene el método, y el delegado entiende el mensaje, delega") do
   expect(Foo.new(baz).baz).to eq 5
  end

  it("si el delagador no tiene el método y el delegado no entiende el mensaje, lanza NoMethodError") do
   expect { Foo.new(nil).baz }.to raise_error NoMethodError
  end
end