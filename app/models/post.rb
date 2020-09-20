class Post < ApplicationRecord
    belongs_to :user
    belongs_to :category

    # Action Text - available from Rails 6
    has_rich_text :description

    validates :title, length: { minimum: 5 }
    validates :description, length: { minimum: 10 }, presence: true

    paginates_per 5
end
