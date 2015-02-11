class Book
  include Mongoid::Document

  field :title, type: String
  field :publisher, type: String
  field :published_on, type: Date
  field :price, localize: true
  field :votes, type: Array

  validates :title, presence: true
  belongs_to :author
  has_and_belongs_to_many :categories
  embeds_many :reviews

end
