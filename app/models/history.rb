class History < ApplicationRecord
    validates :ip_address, :questions_completed, :questions_correct, :presence => true;
end
