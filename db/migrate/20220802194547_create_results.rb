class CreateResults < ActiveRecord::Migration[6.1]
  def change
    create_table :results do |t|
      t.integer :score

      t.string  :name
      t.string  :userUrl
    end
  end
end
