describe ThrowsController do
  let(:params) { {} }

  describe "exposures" do
    describe "signs" do
      subject { controller.signs }

      it { should include 'rock' }
      it { should include 'paper' }
      it { should include 'scissors' }
    end
  end

  describe "actions" do
    describe "new" do
      before { get :new, params }

      it { should respond_with(200) }
      it { should render_template(:new) }
    end

    describe "create" do
      before { post :create, params }

      it { should respond_with(200) }
      it { should render_template(:create) }
    end
  end
end