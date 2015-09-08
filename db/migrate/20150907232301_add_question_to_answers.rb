class AddQuestionToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :question, :references
  end
end
