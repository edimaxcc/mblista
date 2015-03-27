class Comment
  include Mongoid::Document
  
  field :name
  field :content

  belongs_to :post

end
