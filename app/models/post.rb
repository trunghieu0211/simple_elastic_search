class Post < ApplicationRecord
  belongs_to :user

  update_index("users#user") {users}
end
