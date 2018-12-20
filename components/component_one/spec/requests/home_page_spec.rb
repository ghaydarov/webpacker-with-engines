# frozen_string_literal: true

require "rails_helper"

RSpec.describe "component one check", type: :request do
  it "loads root url successfully" do
    get root_url
    expect(response.status).to eq 200
  end

end
