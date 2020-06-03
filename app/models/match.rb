class Match < ApplicationRecord
    belongs_to :volunteer_user, class_name: 'User', foreign_key: :volunteer_id
    # belongs_to :older_user, class_name: 'User', foreign_key: :older_id
end
