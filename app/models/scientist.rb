class Scientist < ApplicationRecord

    has_many :missions
    has_many :planets, through: :missions

    validates :name, uniqueness: true {message: "You must provide a unique name"}
    validates :name, :field_of_study, presence: true {message: "You must provide a field of study and a name"}

end
