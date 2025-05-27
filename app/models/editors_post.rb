class EditorsPost < ApplicationRecord
    self.table_name = "editors_posts"
  
    belongs_to :user
    belongs_to :post
  end
  