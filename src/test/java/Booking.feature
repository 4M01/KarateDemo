Feature: API test for Booking feature.

  Scenario: Get First Booking And Verify status is 200
    Given url 'https://restful-booker.herokuapp.com/booking/1'
    When method GET
    Then status 418