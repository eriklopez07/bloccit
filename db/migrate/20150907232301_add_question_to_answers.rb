class AddQuestionToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :question, :refernces
  end
end
