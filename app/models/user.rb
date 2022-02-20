class User < ApplicationRecord
    validates :email, :name {uniqueness: true, presence: true,}
end
