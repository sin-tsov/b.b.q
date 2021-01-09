class Comment < ActiveRecord::Base
  belongs_to :event
  belongs_to :user, optional: true

  # Не может быть комментария без события
  validates  :event, presence: true
  # Комментарий должен быть с текстом 
  validates :body, presence: true 

  # Это поле должно быть, только если не выполняется user.present? (у объекта на задан юзер)
  validates :user_name, presence: true, unless: -> { user.present? }

  def user_name
    if user.present?
      user.name
    else
      super
    end
  end
end
