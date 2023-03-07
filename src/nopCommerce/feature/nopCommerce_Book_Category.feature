Feature: nopCommerce_AcceptanceCriteria

  As a user i would like to verify Top Menu Bars/ Books Category

  Background: User navigates to nopCommerce homepage
    Given     User is on homepage

  Scenario: User should observe the colour change to Blue in Top Menu Bar
    When      User hoover the cursor on Top Menu Bar
    And       User observe the change of colour
    Then      User should observe the cOlour change to Blue in Top Menu Bar




  Scenario Outline: User should observe the Top Menu Bars are in order and clickable
    When      User type URL on browser
    And       User click enter button on keyword
    Then      User observe "<Top Menu Bars>" are in order
    And       User observe "<Top Menu Bars>" are clickable

    Examples:
      |Top Menu Bars    |
      |Computer         |
      |Electronics      |
      |Apparel          |
      |Digital Downloads|
      |Books            |
      |Jewellery        |
      |Gift Cards       |


  Scenario Outline: User should see the Drop Down Menu appears when cursor placed on Headers
    When      User hoover the cursor on "<Headers>"
    Then      User should see the "<Drop Down Menu>" appears

    Examples:
      |Headers     |Drop Down Menu  |
      |Computers   |Desktops        |
      |Computers   |Notebooks       |
      |Computers   |Software        |
      |Electronics |Camera and Photo|
      |Electronics |Cell phones     |
      |Electronics |Others          |
      |Apparel     |Shoes           |
      |Apparel     |Clothing        |
      |Apparel     |Accessories     |


  Scenario: User is able to navigate on Books Category Page when clicked on Books Tab
    When      User clicked on Books Tab
    Then      User is able to navigate to Books Category Page

  Scenario: User is able to verify the List of Books in Books Category Page
    When      User hoover the cursor on Books Tab
    And       User click on Books Tab
    Then      User observes the List of Books appears

  Scenario: User verify the Sort By and Display Filters are visible
    When      User hoover the cursor on Sort By Filter
    And       User hoover the cursor on Display Filter
    Then      User observes the Sort By Filter appears
    And       User observe the Display Filter appears

  Scenario: User verify the Grid and List icons are visible
    When      User hoover the cursor on Grid
    And       User hoover the cursor on List
    Then      User observes the Grid icon appears
    And       User observe the List icon appears

  Scenario Outline: User verify that each Top Menu Bars are spelt correctly
    When      User enter URL=https://demo.nopCommerce.com
    And       User observe "<Top Menu Bars>"
    Then      User check "<Top Menu Bars>" "<Spellings>" are correct

    Examples:
      |Top Menu Bars  | Spellings        |
      |Top Menu Bars  |Computers         |
      |Top Menu Bars  |Electronics       |
      |Top Menu Bars  |Apparel           |
      |Top Menu Bars  |Digital downloads |
      |Top Menu Bars  |Books             |
      |Top Menu Bars  |Jewellery         |
      |Top Menu Bars  |Gift Card         |

  Scenario Outline: User verify Drop Down Menu appears on Sort By List once clicked on Down Arrow with options
    When     User click on Down Arrow on Sort By List
    And      User observe the Drop Down Menu appears
    And      User observe the options
    Then     User is able to see the "<Drop Down Menu>" in Sort By List
    And      User is able to see the "<Options>"


    Examples:
      |Drop Down Menu |Options           |
      |Drop Down Menu |Position          |
      |Drop Down Menu |Name:A to Z       |
      |Drop Down Menu |Name:Z to A       |
      |Drop Down Menu |Price:Low to High |
      |Drop Down Menu |Price:High to Low |
      |Drop Down Menu |Created on        |

