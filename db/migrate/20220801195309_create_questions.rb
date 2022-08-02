class CreateQuestions < ActiveRecord::Migration[6.1]
  def change

    create_table :questions do |t|
      t.string :question
      t.string :correct_answer
      t.string :incorrect_answer 
      t.string :difficulty
      t.string :category


    end
  end
end
