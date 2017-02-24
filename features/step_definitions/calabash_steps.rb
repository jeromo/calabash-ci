require 'calabash-android/calabash_steps'
When(/^I enter "([^"]*)" into editText$/) do |text|
  enter_text("EditText", text)
end

Then(/^I see "([^"]*)" in textToBeChanged$/) do |arg1|
  if(!query("android.widget.TextView marked:'textToBeChanged':'#{arg1}'").first())
    # Act on that information
    fail("Not changed Text in textToBeChanged")
   end
end

