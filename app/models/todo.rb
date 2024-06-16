class Todo < ApplicationRecord
  validates :title_length_within_bounds
  validates :description_length_within_bounds

  private

  def title_length_within_bounds
    if title.length < 5 || title.length > 20
      errors.add(:title, "タイトルは5文字以上20文字以内で作成してください")
    end
  end

  def description_length_within_bounds
    if description.length < 50
      errors.add(:description, "詳細は50文字以内で作成してください")
    end
  end

end
