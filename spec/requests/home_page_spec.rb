# frozen_string_literal: true

require "rails_helper"

RSpec.describe "umbrella check", type: :request do
  it "loads root url successfully" do
    get "/"
    expect(response.status).to eq 200
  end

end
