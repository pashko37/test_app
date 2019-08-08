class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.string :matter
      t.integer :check_status, null: false, default: 0
      t.belongs_to :question

      t.timestamps
    end
  end
end
