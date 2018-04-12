class Account < ApplicationRecord
    before_save :default_values
    def default_values
        self.credits ||= 0
    end
end
