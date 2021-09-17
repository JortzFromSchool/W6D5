require 'action_view'
class Cat < ApplicationRecord
    include ActionView::Helpers::DateHelper
    CAT_COLORS = ['orange', 'brown', 'grey', 'white', 'black', 'beige']

    validates :name, :birthdate, :description, presence: true
    validates :color, inclusion: CAT_COLORS, presence: true
    validates :sex, inclusion: ['M', 'F'], presence: true

    def age
        #time_ago_in_words(self.birthdate)
        Time.now.year - birthdate.year
    end
end