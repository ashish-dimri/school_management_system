require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/schools", type: :request do
  let(:user) { create(:user) }
  
  before(:each){
    sign_in_user user
  }
  
  describe "GET /index" do
    it "renders a successful response" do
      create_list(:school, 3)
      get schools_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      school = create(:school)
      get school_url(school)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_school_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      school = create(:school)
      get edit_school_url(school)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new School" do
        school_params = attributes_for(:school)
        expect {
          post schools_url, params: { school: school_params }
        }.to change(School, :count).by(1)
      end

      it "redirects to the created school" do
        school_params = attributes_for(:school)
        post schools_url, params: { school: school_params }
        expect(response).to redirect_to(school_url(School.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new School" do
        school_params = attributes_for(:school, :invalid)
        expect {
          post schools_url, params: { school: school_params }
        }.to change(School, :count).by(0)
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        {name: "School 1"}
      }

      it "updates the requested school" do
        school = create(:school)
        patch school_url(school), params: { school: new_attributes }
        school.reload
        expect(school.name).to eql("School 1")
      end

      it "redirects to the school" do
        school = create(:school)
        patch school_url(school), params: { school: new_attributes }
        school.reload
        expect(response).to redirect_to(school_url(school))
      end
    end

    context "with invalid parameters" do
      it "does not update school" do
        school = create(:school)
        school_params = attributes_for(:school, :invalid)
        patch school_url(school), params: { school: school_params }
        expect(response).to have_http_status(:unprocessable_entity)
        school.reload
        expect(school.name).not_to be_empty
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested school" do
      school = create(:school)
      expect {
        delete school_url(school)
      }.to change(School, :count).by(-1)
    end

    it "redirects to the schools list" do
      school = create(:school)
      delete school_url(school)
      expect(response).to redirect_to(schools_url)
    end
  end
end
