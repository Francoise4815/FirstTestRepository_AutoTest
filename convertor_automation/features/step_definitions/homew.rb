

And(/^I select "([^"]*)" unuts from right column$/) do |value|
  find_element(id:"radio_group_to").find_element(xpath:"//android.widget.RadioButton[@text='#{value}']").click
  actual_value = find_element(id: "header_text_unit_to").text
  # Assertions_Step: Проверка наименования искомого заголовка группы From
  if actual_value != value
    fail("Expected value is #{value},but actual value was #{actual_value}")
  end
end

And(/^I get "([^"]*)" in TO field$/) do |value|
  actual_value = find_element(id:"header_value_to").text
  #Assertions_Step:  Проверка ожидаемых значений в поле вывода группы To
  if actual_value != value
    fail("Expected value is #{value},but actual value was #{actual_value}")
  end
end

When(/^I click on "([^"]*)" field$/) do |value|
  find_element(id:"radio_group_from").find_element(xpath:"//android.widget.RadioButton[@text='#{value}']").click
end