require 'spec_helper'

RSpec.describe Surveyor::Response do
  subject { described_class.new(email: "user@email.com") }

  it "has an email" do
    expect(subject.email).to eq("user@email.com")
  end
end
