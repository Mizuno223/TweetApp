class Post < ApplicationRecord
    validates :content, {presence: true, length: {maximum:140}}
    #validate :check_content
    #def check_content
    #    if content == ""
    #       errors.add(:content, "文字を入力してください")
    #    end
    #end
end
