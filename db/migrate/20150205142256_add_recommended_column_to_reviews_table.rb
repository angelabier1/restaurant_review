class AddRecommendedColumnToReviewsTable < ActiveRecord::Migration
  def change
    add_column :reviews,:recommended,:boolean
  end
end
