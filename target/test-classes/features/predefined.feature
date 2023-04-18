Feature: Search Engine scenarios

  Scenario: Search Engine for Google
    Given I open url "https://www.google.com/"
    Then I should see page title as "Google"
    Then I type "Cucumber" into element with xpath "//textarea[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    Then I wait for 3 sec
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then I should see page title contains "- Google Search"
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"
    
