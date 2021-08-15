defmodule HomeworkTest do
  # Import helpers
  use Hound.Helpers
  use ExUnit.Case

  # Start hound session and destroy when tests are run
  hound_session()

#  test "goes to google" do
#    navigate_to "http://google.com"
#  end


#  test "add remove elements" do
#    navigate_to "https://the-internet.herokuapp.com/"
#    elementNavItem = find_element(:link_text, "Add/Remove Elements")
#    click(elementNavItem)
#
#    #Check to see if the page loads
#    assert page_source() =~ "Add/Remove"
#
#    #Select Add Element and see if Delete shows up
#    elementAddElementButton = find_element(:css, "div.example > button")
#    click(elementAddElementButton)
#    elementDeleteButton = find_element(:class, "added-manually")
#    assert elementDeleteButton
#    assert visible_page_text() =~ "Delete"
#
#    #Press the delete button and make sure it goes away
#    click(elementDeleteButton)
#    refute visible_page_text() =~ "Delete"
#  end
#
#  test "javascript alerts" do
#    navigate_to "https://the-internet.herokuapp.com/"
#    elementNavItem = find_element(:link_text, "JavaScript Alerts")
#    click(elementNavItem)
#
#    #JS Alert
#    elementJSAlert = find_element(:css, "button[onclick='jsAlert()']")
#    click(elementJSAlert)
#    assert dialog_text() =~ "I am a JS Alert"
#    accept_dialog()
#
#    #JS Confirm
#    elementJSConfirm = find_element(:css, "button[onclick='jsConfirm()']")
#    click(elementJSConfirm)
#    assert dialog_text() =~ "I am a JS Confirm"
#    accept_dialog()
#
#    #JS Prompt
#    elementJSPrompt = find_element(:css, "button[onclick='jsPrompt()']")
#    click(elementJSPrompt)
#    assert dialog_text() =~ "I am a JS prompt"
#    input_into_prompt("Hello World")
#    accept_dialog()
#    visible_page_text() =~ "You entered: Hello World"
#  end

  test "drag and drop" do
    navigate_to "https://the-internet.herokuapp.com/"
    elementNavItem = find_element(:link_text, "Key Presses")
    click(elementNavItem)

    elementTextField = find_element(:id, "target")
    input_into_field(elementTextField, "Hello World")
    visible_page_text() =~ "You entered: D"

    clear_field(elementTextField)

    elementTextField = find_element(:id, "target")
    input_into_field(elementTextField, "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&")
    visible_page_text() =~ "You entered: &"

    clear_field(elementTextField)

  end
end
