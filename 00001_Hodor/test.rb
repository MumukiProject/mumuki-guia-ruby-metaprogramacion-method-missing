describe Hodor do
  let(:hodor) { Hodor.new }

  it("hodor.foo! == \"Hodor!\"") { expect(hodor.foo!).to eq "Hodor!" }
  it("hodor.foo! :bar == \"Hodor! Hodor!\"") { expect(hodor.foo! :bar).to eq "Hodor! Hodor!" }
  it("hodor.foo!(:baz) { } == \"Hodor! Hodor!\"") { expect(hodor.foo!(:baz) { }).to eq "Hodor! Hodor!" }
  it("hodor.foo! :bar, :baz == \"Hodor! Hodor! Hodor!\"") { expect(hodor.foo! :bar, :baz).to eq "Hodor! Hodor! Hodor!" }
end