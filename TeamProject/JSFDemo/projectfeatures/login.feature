#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@tag
Feature: Login Page
  As a returning customer
  I want to login to the application
  so that I can view my account balance

  @successfullogin
  Scenario: User logs in with valid credentials
    Given the user is on the login page
    And no And required here
    When the user enters a valid username and password
    And the user clicks the login button
    Then the user can see their account balance

  @successfullogin
  Scenario: User logs in with valid credentials
    Given the user is on the login page
    When the user enters username as "tim@testemail.com"
    And the user enters password as "trpass"
    And the user clicks the login button
    Then the user can see their account balance
    
  @successfullogin
  Scenario Outline: User logs in with valid credentials
    Given the user is on the login page
    And no And required here
    When the user enters username "<username>" and password "<password>"
    Then the user can see their account balance

		 Examples: 
      | username  			 | password |
      | tim@testemail.com| trpass|


  @failedloginpassword
  Scenario Outline: User cannot login with invalid credentials
    Given the user is on the login page
    When the user enters a valid username and invalid password
    Then the user can see an invalid login message

  @failedloginusername
  Scenario Outline: User cannot login with invalid credentials
    Given the user is on the login page
    When the user enters an invalid username
    Then the user can see an invalid login message

   