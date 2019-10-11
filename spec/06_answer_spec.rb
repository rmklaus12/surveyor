require 'spec_helper'

RSpec.describe Surveyor::Answer do
  subject { described_class.new(question: "Do you like cats?") }

  it "returns an answer's question" do
    expect(subject.question).to eq("Do you like cats?")
  end

  it "will not add answer without a question" do

  end
end