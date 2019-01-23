class User < ApplicationRecord
    has_many :posts
    has_many :comments

    def post
        result = []
        for post in posts do
            result << {
                 id: post&.id,
          title: post&.title,
          content: post&.content,
          updated_at: post&.updated_at,
          created_at: post&.created_at,
          user_id: post&.User_id,
                 comment: comments
            }
        end
        return result
    end
end

