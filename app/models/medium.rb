class Medium < ApplicationRecord
  has_many :reporters
  before_save { self.furigana.gsub!(/\s+/, '') }
  validates :name,        presence: true,
                          length: { maximum: 100 }
  validates :furigana,    presence: true,
                          length: { maximum: 200 },
                          format: { with: /\A\s*[ぁ-ろわをんゔー]+\s*\z/,
                                    message: 'は、ひらがなで記してください' }
  validates :website_url, allow_blank: true,
                          length: { maximum: 200 },
                          url: { schemes: %w(http https),
                                 no_local: true,
                                 public_suffix: true }
end
