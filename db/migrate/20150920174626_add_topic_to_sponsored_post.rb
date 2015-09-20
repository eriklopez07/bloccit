class AddTopicToSponsoredPost < ActiveRecord::Migration
  def change
    add_reference :sponsored_posts, :topic, index: true
    add_foreign_key :sponsored_posts, :topics
  end
end
