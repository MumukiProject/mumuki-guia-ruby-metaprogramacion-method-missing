describe 'null object' do

    it("null.foo devuelve null"){ expect(null.foo).to be null  }
    it("null.bar devuelve null") { expect(null.bar).to be null  }
    it("null.baz(3) devuelve null") { expect(null.baz(3)).to be null  }
    it("null.to_s no devuelve null") { expect(null.to_s).to_not be null  }
end