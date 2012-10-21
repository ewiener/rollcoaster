require 'spec_helper'

describe SemestersController do
  describe 'Create a new Session' do
    it 'When I go to the home page, and I click on "Create New Session", it should be on the New Session page' do
    end

    it 'And I fill in "Session Name" with "Fall 2012" and I fill in "Start Date" with "September 3" and I fill in "End Date" with "October 1" and I fill in "Lottery Deadline" with "September 10" and I fill in "Registration Deadline" with "September 17" and I click "One Day" in "Days Wont Meet" and I click "September 24" and I fill in "Registration Fee" with "25" and I click "Create", it should save the session' do
    end

    describe 'Create a new Session with "Start Date" after "End Date"' do
      it 'And I fill in "Session Name" with "Fall 2012" and I fill in "Start Date" with "October 1" and I fill in "End Date" with "September 3" and I fill in "Lottery Deadline" with "September 10" and I fill in "Registration Deadline" with "September 17" and I click "One Day" in "Days Wont Meet" and I click "September 24" and I fill in "Registration Fee" with "25" and I click "Create", it should not save the session' do
      end

    end

    describe 'Create a new Session with "Days Class Wont Meet" in which the span of days is not possible' do
      it 'And I fill in "Session Name" with "Fall 2012" and I fill in "Start Date" with "September 3" and I fill in "End Date" with "October 1" and I fill in "Lottery Deadline" with "September 10" and I fill in "Registration Deadline" with "September 17" and I click "Span of Days" in "Days Wont Meet" and I click "September 24" and "September 23" and I fill in "Registration Fee" with "25" and I click "Create", it should not save the session' do
      end
    end

    describe 'Create a new Session without "Registration Fee" filled' do
      it 'And I fill in "Session Name" with "Fall 2012" and I fill in "Start Date" with "September 3" and I fill in "End Date" with "October 1" and I fill in "Lottery Deadline" with "September 10" and I fill in "Registration Deadline" with "September 17" and I click "One Day" in "Days Wont Meet" and I click "September 24" and I click "Create", it should not save the session' do
      end
    end
