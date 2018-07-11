class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts

  update_index("users#user") {self}

  class << self
    def search keyword
      fields = %w[name email posts]
      UsersIndex.query multi_match: {query: keyword, fields: fields}
    end
  end
end
