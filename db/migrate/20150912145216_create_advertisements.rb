class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|

      t.timestamps null: false
    end
  end
end
