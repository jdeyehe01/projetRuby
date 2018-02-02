class Manga < ApplicationRecord
	belongs_to :genre, optional: true
end
