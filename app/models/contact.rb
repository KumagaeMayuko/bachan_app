class Contact < ApplicationRecord
  validates :name, presence: {message: '名前を入力してください' }
  validates :email, presence: {message: 'メールアドレスを入力してください' }
  validates :address, presence: {message: '住所を入力してください' }
  validates :phone, presence: {message: '電話番号を入力してください' }
  validates :quantity, presence: {message: '個数を入力してください' }
end
