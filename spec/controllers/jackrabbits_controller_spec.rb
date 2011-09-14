require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe JackrabbitsController do

  # This should return the minimal set of attributes required to create a valid
  # Jackrabbit. As you add validations to Jackrabbit, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all jackrabbits as @jackrabbits" do
      jackrabbit = Jackrabbit.create! valid_attributes
      get :index
      assigns(:jackrabbits).should eq([jackrabbit])
    end
  end

  describe "GET show" do
    it "assigns the requested jackrabbit as @jackrabbit" do
      jackrabbit = Jackrabbit.create! valid_attributes
      get :show, :id => jackrabbit.id.to_s
      assigns(:jackrabbit).should eq(jackrabbit)
    end
  end

  describe "GET new" do
    it "assigns a new jackrabbit as @jackrabbit" do
      get :new
      assigns(:jackrabbit).should be_a_new(Jackrabbit)
    end
  end

  describe "GET edit" do
    it "assigns the requested jackrabbit as @jackrabbit" do
      jackrabbit = Jackrabbit.create! valid_attributes
      get :edit, :id => jackrabbit.id.to_s
      assigns(:jackrabbit).should eq(jackrabbit)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Jackrabbit" do
        expect {
          post :create, :jackrabbit => valid_attributes
        }.to change(Jackrabbit, :count).by(1)
      end

      it "assigns a newly created jackrabbit as @jackrabbit" do
        post :create, :jackrabbit => valid_attributes
        assigns(:jackrabbit).should be_a(Jackrabbit)
        assigns(:jackrabbit).should be_persisted
      end

      it "redirects to the created jackrabbit" do
        post :create, :jackrabbit => valid_attributes
        response.should redirect_to(Jackrabbit.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved jackrabbit as @jackrabbit" do
        # Trigger the behavior that occurs when invalid params are submitted
        Jackrabbit.any_instance.stub(:save).and_return(false)
        post :create, :jackrabbit => {}
        assigns(:jackrabbit).should be_a_new(Jackrabbit)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Jackrabbit.any_instance.stub(:save).and_return(false)
        post :create, :jackrabbit => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested jackrabbit" do
        jackrabbit = Jackrabbit.create! valid_attributes
        # Assuming there are no other jackrabbits in the database, this
        # specifies that the Jackrabbit created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Jackrabbit.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => jackrabbit.id, :jackrabbit => {'these' => 'params'}
      end

      it "assigns the requested jackrabbit as @jackrabbit" do
        jackrabbit = Jackrabbit.create! valid_attributes
        put :update, :id => jackrabbit.id, :jackrabbit => valid_attributes
        assigns(:jackrabbit).should eq(jackrabbit)
      end

      it "redirects to the jackrabbit" do
        jackrabbit = Jackrabbit.create! valid_attributes
        put :update, :id => jackrabbit.id, :jackrabbit => valid_attributes
        response.should redirect_to(jackrabbit)
      end
    end

    describe "with invalid params" do
      it "assigns the jackrabbit as @jackrabbit" do
        jackrabbit = Jackrabbit.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Jackrabbit.any_instance.stub(:save).and_return(false)
        put :update, :id => jackrabbit.id.to_s, :jackrabbit => {}
        assigns(:jackrabbit).should eq(jackrabbit)
      end

      it "re-renders the 'edit' template" do
        jackrabbit = Jackrabbit.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Jackrabbit.any_instance.stub(:save).and_return(false)
        put :update, :id => jackrabbit.id.to_s, :jackrabbit => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested jackrabbit" do
      jackrabbit = Jackrabbit.create! valid_attributes
      expect {
        delete :destroy, :id => jackrabbit.id.to_s
      }.to change(Jackrabbit, :count).by(-1)
    end

    it "redirects to the jackrabbits list" do
      jackrabbit = Jackrabbit.create! valid_attributes
      delete :destroy, :id => jackrabbit.id.to_s
      response.should redirect_to(jackrabbits_url)
    end
  end

end