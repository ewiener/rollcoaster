Feature: Adding/Editing a session

  As an administrator
  So that I can keep track of classes/PTA Instructors/Students/Parents
  I want to create/edit sessions in the database

Background: previous sessions have been added to the database
  
  Given the following sessions exist:
    | name        | start_date    | end_date  | lottery_deadline  | registration_deadline |
    | Fall 2011   | 09/15/2011    | 12/15/2011| 09/09/2011        | 09/14/2011            |
    | Spring 2012 | 02/15/2012    | 06/15/2012| 01/21/2012        | 01/31/2012            |
  
  Given the following courses have been added:
    | name    | session       |
    | Art     | Spring 2012   |
    | Science | Spring 2012   |
  
  And I am on the home page


Scenario: Create new session
  Given I am an admin
  When I press "Create New..."
  Then I am on the Session Name Page
  And I should see no populated courses
  When I fill in "Session Name" with "Fall 2012"
  And I fill in "Start Date" with "09/21/2012"
  And I fill in "End Date" with "12/15/2012"
  And I press "Add New"
  Then I should be on the home page
  And I should see "Fall 2012"
  And I should see "Spring 2012"
  And I should see "Fall 2011"
  
Scenario: Import classes from last semester
  Given I am on the "Fall 2012" Session Name Page
  When I press "Import"
  Then I should see "Art"
  And I should see "Science"
  When I check "Art"
  And I check "Science"
  And I press "Import"
  Then I should be on the "Fall 2012" Session Name Page
  And I should see "Art"
  And I should see "Science"

Scenario: Cancel import of classes from last semester
  Given I am on the "Fall 2012" Session Name Page
  When I press "Import"
  Then I should see "Art"
  And I should see "Science"
  When I press "Cancel"
  Then I should be on the "Fall 2012" Session Name Page
  And I should not see "Science"
  And I should not see "Art"
  
Scenario: View semester
  Given I am on the home page
  And I follow "Spring 2012"
  Then I should be on the "Spring 2012" Session Name Page
  Then I should see "Art"
  And I should see "Science"
  
