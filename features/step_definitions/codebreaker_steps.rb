# class Output
#   def messages
#     @messages ||= []
#   end

#   def puts(message)
#     messages << message
#   end
# end

# def term_output
#   @output ||= Output.new
# end

Given /^I am not yet playing$/ do
end

When /^I start a new game$/ do
  @messenger = StringIO.new
  game = Codebreaker::Game.new(@messenger)
  game.start
end

Then /^I should see "(.*?)"$/ do |message|
  # expect(term_output.messages).to include(message)
  expect(@messenger.string.split("\n")).to include(message)
end
