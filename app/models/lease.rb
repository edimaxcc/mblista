class Lease
  include Mongoid::Document

  field :from, type: DateTime
  field :till, type: DateTime

  mbedded_in :order


end
