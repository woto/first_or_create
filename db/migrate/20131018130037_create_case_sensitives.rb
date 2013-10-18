class CreateCaseSensitives < ActiveRecord::Migration
  def change
    create_table :case_sensitives do |t|
      t.string :name

      t.timestamps
    end
  end
end
