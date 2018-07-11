class UsersIndex < Chewy::Index   
  settings analysis: {
    analyzer: {
      name: {
        tokenizer: "standard",
        filter: ["lowercase", "asciifolding"]
      }
    }
  }

  define_type User.includes(:posts) do
    field :email
    field :name, analyzer: "name"
    field :posts, value: ->(user){user.posts.map(&:title)}
  end
end