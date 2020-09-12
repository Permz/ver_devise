class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.text :content
      t.references :question, foreign_key: true
      t.integer :user_id

      t.timestamps
    end
  end
end
