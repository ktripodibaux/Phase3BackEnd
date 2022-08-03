class CreateGames < ActiveRecord::Migration[6.1]
  def change

    create_table :games do |t|
      t.integer :score

      t.integer :user_id
      t.integer :question_id
    end
    
          # Are we creating a table of Question IDs and Difficulties here to pass along to Rounds?
  end
end
