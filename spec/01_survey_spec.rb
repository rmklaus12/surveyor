require 'spec_helper'

RSpec.describe Surveyor::Survey do
  subject { described_class.new(name: "Engagement Survey") }

  it "has a name" do
    expect(subject.name).to eq("Engagement Survey")
  end

  it "can have questions added" do
    question = double(:question) # same as saying Question.new
    subject.add_question(question)
    expect(subject.questions).to include(question) # subject.questions will be an array
  end

  it "can have responses added" do
    response = double(:response)
    subject.add_response(response)
    expect(subject.responses).to include(response)
  end

  it "can return responses" do
    response = double(:response)
    subject.list_responses(response)
  end
end
