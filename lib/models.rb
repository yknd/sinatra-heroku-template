class Game
  include Mongoid::Document
  field :title, type: String
  field :platform, type: String
end
