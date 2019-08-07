class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.string :matter
      t.belongs_to :question

      t.timestamps
    end
  end
end
