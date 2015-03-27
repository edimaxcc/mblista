class Post
  include Mongoid::Document
  
  field :title
  field :body
  field :starred, type: Date

  has_many :comments
  
end
