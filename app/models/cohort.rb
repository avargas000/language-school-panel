class Cohort < ApplicationRecord
     has_and_belongs_to_many :Instructors
      has_and_belongs_to_many :Students
end