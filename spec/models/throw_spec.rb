describe Throw do
  let(:_throw) { Throw.new('rock') }

  describe "initialize" do
    subject { _throw }

    its(:sign) { should eq 'rock' }
  end

  describe "result" do
    subject { _throw.result }

    context "when tie" do
      before { _throw.stub random: 'rock' }

      it { should eq :tie }
    end

    context "when lose" do
      before { _throw.stub random: 'paper' }

      it { should eq :lose }
    end

    context "when win" do
      before { _throw.stub random: 'scissors' }

      it { should eq :win }
    end
  end

  describe "random" do
    subject { _throw.random }

    it { should match /rock|paper|scissors/ }
  end

  describe "#signs" do
    subject { Throw.signs }

    it { should be_an Array }
    it { should include 'rock' }
    it { should include 'paper' }
    it { should include 'scissors' }
  end

  describe "#winners" do
    subject { Throw.winners }

    it { should be_an Array }
    it { should include(['rock', 'scissors']) }
    it { should include(['scissors', 'paper']) }
    it { should include(['paper', 'rock']) }
  end
end