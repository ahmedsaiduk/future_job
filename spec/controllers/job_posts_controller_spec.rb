require 'rails_helper'
RSpec.describe JobPostsController, type: :controller do

  before :each do
    request.env["HTTP_ACCEPT"] = 'application/json'
  end

  let(:valid_attributes) {
    {
      title: "job_test",
      description:"Job description_test" ,
      company_name: "company_test",
      company_url: "http://company.com",
      job_type: 'software development'
    }

  }

  let(:invalid_attributes) {
    {
      title: "job_test",
      description:"Job description_test" ,
      company_name: "company_test",
      company_url: "http://company_test.com",
      job_type: 'software' # invalid because of model validation
    }
  }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      JobPost.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      job_post = JobPost.create! valid_attributes
      get :show, params: {id: job_post.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new JobPost" do
        expect {
          post :create, params: {job_post: valid_attributes}, session: valid_session
        }.to change(JobPost, :count).by(1)
      end

      it "renders a JSON response with the new job_post" do

        post :create, params: {job_post: valid_attributes}, session: valid_session
        expect(response).to have_http_status(:created)
        expect(response.content_type).to eq('application/json')
        expect(response.location).to eq(job_post_url(JobPost.last))
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the new job_post" do

        post :create, params: {job_post: invalid_attributes}, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end
end
