describe ThrowsController do
  let(:params) { {} }

  describe "exposures" do
    describe "_throw" do
      subject { controller._throw }

      it { should be_a Throw }
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