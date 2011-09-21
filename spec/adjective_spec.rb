require File.dirname(__FILE__) + '/../app/adjective_generator/adjective.rb'

describe AdjectiveGenerator::Adjective do
  describe ".random" do
    it "should never return a blank string" do
      100.times do
        AdjectiveGenerator::Adjective.random.should_not == ''
        AdjectiveGenerator::Adjective.random.should_not == nil
      end
    end
  end
end