class Reporter < ApplicationRecord
  belongs_to :medium, optional: true
  enum :desirability, {
         highly:      2,
         somewhat:    1,
         neutral:     0,
         not_very:   -1,
         not_at_all: -2
       },
       default: :neutral
  # String#my_prettify!: config/initializers/string_extensions.rb
  before_validation -> { self.name.my_prettify!;
                         self.furigana.my_prettify! },
    on: [:create, :update]
  validates :name,        presence: true,
                          length: { maximum: 100 }
  validates :furigana,    presence: true,
                          length: { maximum: 200 },
                          format: { with: /\A[\p{Hiragana}ー]+( [\p{Hiragana}ー]+)*\z/,
                                    message: 'は、ひらがなで記してください' }
  validates :portrait_source,    allow_blank: true,
                                 length: { maximum: 300 }
  validates :portrait_copyright, allow_blank: true,
                                 length: { maximum: 100 }
  validate :validate_name_not_include_nakaten
  validate :validate_furigana_not_include_nakaten
  validate :validate_medium_id_based_on_independent

private

  def validate_name_not_include_nakaten
    if name.match?(/・/)
      errors.add(:name, "姓と名の区切りは「・」ではなく、空白にしてください")
    end
  end

  def validate_furigana_not_include_nakaten
    if furigana.match?(/・/)
      errors.add(:furigana, "振り仮名の区切りは「・」ではなく、空白にしてください")
    end
  end

  def validate_medium_id_based_on_independent
    if independent? && medium_id.present?
      errors.add(:medium_id, "独立である場合は、メディアは指定できません")
    elsif !independent? && (medium_id.nil? || !Medium.exists?(medium_id))
      errors.add(:medium_id, "独立でない場合は、メディアを指定してください")
    end
  end
end
