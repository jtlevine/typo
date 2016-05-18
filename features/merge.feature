Feature: Merge articles
  As a blog administrator
  I want to be able to merge articles
  So that similar articles can be put together to make things easier for blog viewers
  
  Background:
    Given the blog is set up
    

Scenario: Should see the merge button when logged in as administrator
  Given I am logged into the admin panel
  And I am on the new article page
    And I fill in "article_title" with "Foobar"
    And I fill in "article__body_and_extended_editor" with "Lorem Ipsum"
    And I press "Publish"
  And I go to the edit page for the article with the title "Hello World!"
  Then I should see "Merge Articles"