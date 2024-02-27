Feature: Testing FTB REST API AIRCRAFTS resource
  Clients should be able to READ/CREATE/UPDATE/DELETE an aircraft record.

  Scenario: Get specific aircraft data by its ID
    Given FTB is up and running and the tests are configured
    When client gets details of Aircraft id=1168
    Then aircraft data to be manufacturer='Test' and model='TestModel' and number of seats=90

  Scenario: Create an aircraft with null number of seats
    Given FTB is up and running and the tests are configured
    When client tries to create an Aircraft with null number of seats having manufacturer='Test' and model='TestMod'
    Then returned aircraft data with null number of seats to be manufacturer='Test' and model='TestMod'
    When client gets details of just created Aircraft
    Then aircraft data with null number of seats to be manufacturer='Test' and model='TestMod'

  Scenario: Get an aircraft data with null number of seats by its ID
    Given FTB is up and running and the tests are configured
    When client gets details of Aircraft id=<id>
    Then aircraft data to be with null number of seats and manufacturer='<manufacturer>' and model='<model>'

    Examples:
      |id  |manufacturer|model    |
      |1043|Test        |TestModel|
      |1068|Test        |TestModel|