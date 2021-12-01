Feature: Test for long scenario name

Scenario: A scenario with a name longer than seventy characters is still valid because the custom configuration allows that
  Given first given within scenario, which is fine
  When first step
  And second step
  Then first assertion
  And second assertion
