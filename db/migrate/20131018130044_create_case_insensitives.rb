class CreateCaseInsensitives < ActiveRecord::Migration
  def change
    create_table :case_insensitives do |t|
      t.string :name

      t.timestamps
    end
  end
end
