module Surveyor
  class Survey
    attr_reader :name, :questions, :responses

    def initialize(name)
      @name = name[:name]
      @questions = []
      @responses = []
    end

    def add_question(question)
      @questions << question
    end

    def add_response(response)
      @responses << response
    end

    def list_responses(*) # used * as test would not pass without an argument passed
      @responses
    end
  end
end

