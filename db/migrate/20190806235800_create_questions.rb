class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :matter
    	t.belongs_to :quiz

      t.timestamps
    end
  end
end
