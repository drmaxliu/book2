require 'spec_helper'

describe UserController do

  describe "GET 'resume_reading'" do
    it "returns http success" do
      get 'resume_reading'
      response.should be_success
    end
  end

end
