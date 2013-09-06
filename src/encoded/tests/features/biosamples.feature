@biosamples @usefixtures(workbook)
Feature: Biosamples

    Scenario: Active section
        When I visit "/biosamples/"
        Then the "/biosamples/" section should be active

    Scenario: Detail page
        When I visit "/biosamples/ENCBS000AAA/"
        Then I should see "Richard Myers, HAIB"
        And I should see "ENCODE2"

    Scenario: Table
        When I visit "/biosamples/"
        And I wait for the table to fully load

        When I fill in "q" with "Immortal"
        Then I should see an element with the css selector "tr:not([hidden]) a[href='/biosamples/ENCBS000AAA/']" within 1 seconds
        And I should see an element with the css selector "tr[hidden] a[href='/biosamples/ENCBS024AAA/']"
        And I should see exactly one element with the css selector ".table-count" containing the text "12"

        When I fill in "q" with "Tissue"
        Then I should see an element with the css selector "tr:not([hidden]) a[href='/biosamples/ENCBS024AAA/']" within 1 seconds
        And I should see an element with the css selector "tr[hidden] a[href='/biosamples/ENCBS000AAA/']"
        And I should see exactly one element with the css selector ".table-count" containing the text "5"

        When I fill in "q" with "primary cell"
        Then I should see an element with the css selector "tr:not([hidden]) a[href='/biosamples/ENCBS026ENC/']" within 1 seconds
        And I should see an element with the css selector "tr[hidden] a[href='/biosamples/ENCBS000AAA/']"
        And I should see exactly one element with the css selector ".table-count" containing the text "4"
