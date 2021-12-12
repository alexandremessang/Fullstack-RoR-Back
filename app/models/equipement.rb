class Equipement < ApplicationRecord
    has_many :equipement_categories, class_name: "equipement_categorie", foreign_key: "reference_id"
end
