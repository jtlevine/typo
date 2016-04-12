Feature: Create Categories
  
  As a blog adminstrator
  I want to create categories of articles
  So I can organize my blog more effectively
  
Background:
    Given the blog is set up
    And I am logged into the admin panel  
    When I follow "Categories"
    
Scenario: The link works
  Then I should see "Categories"
  And I should see "General"
  And I should see "Keywords"
  
Scenario: Successfully create categories
  And I fill in "Name" with "Computer Science"
  And I fill in "Keywords" with "Java C++ Ruby Python"
  And I fill in "Permalink" with "cs"
  And I fill in "Description" with "Computer science related stuff"
  And I press "Save"
  Then I should see "Computer Science"
  And I should see "no articles"
  
Scenario: Successfully edit existing categories
  When I follow "General"
  Then I fill in "Description" with "I'm putting stuff in here"
  And I press "Save"
  Then I should see "stuff in here"