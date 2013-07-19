class CreateTableTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :tag_description

      t.timestamps
    end
  end
end
