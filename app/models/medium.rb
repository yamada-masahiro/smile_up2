class Medium < ApplicationRecord
  before_save { self.furigana.gsub!(/\s+/, '') }
  validates :name,        presence: true,
                          length: { maximum: 100 }
  validates :furigana,    presence: true,
                          length: { maximum: 200 },
                          format: { with: /\A\s*[ぁ-ろわをんゔー]+\s*\z/,
                                    message: 'は、ひらがなで記してください' }
end
