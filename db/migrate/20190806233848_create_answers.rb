class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.text "matter"
      t.integer "question_id"
      t.boolean "correctkey"
      t.index ["question_id"], name: "index_answers_on_question_id"

      t.timestamps
    end
  end
end
