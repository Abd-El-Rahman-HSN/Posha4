class Player < ApplicationRecord

      has_many :transfers, inverse_of: :player
      accepts_nested_attributes_for :transfers, reject_if: :all_blank, allow_destroy: true

      has_many :performances, inverse_of: :player 
      accepts_nested_attributes_for :performances, reject_if: :all_blank, allow_destroy: true

      has_many :national_careers, inverse_of: :player
      accepts_nested_attributes_for :national_careers, reject_if: :all_blank, allow_destroy: true

      has_many :domestics, inverse_of: :player
      accepts_nested_attributes_for :domestics, reject_if: :all_blank, allow_destroy: true

      has_many :continentals, inverse_of: :player
      accepts_nested_attributes_for :continentals, reject_if: :all_blank, allow_destroy: true

      has_many :nationals, inverse_of: :player
      accepts_nested_attributes_for :nationals, reject_if: :all_blank, allow_destroy: true

      has_many :individuals, inverse_of: :player
      accepts_nested_attributes_for :individuals, reject_if: :all_blank, allow_destroy: true

      # Name Page Player Url
      extend FriendlyId
      friendly_id :name, use: :slugged



      has_attached_file :photo, styles: { large: "600x600>",medium: "300x300>", thumb: "100x100>" }
      validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
      validates_attachment :photo,
                              content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

      # Validate content type
            validates_attachment_content_type :photo, content_type: /\Aimage/
      # Validate filename
            validates_attachment_file_name :photo, matches: [/png\z/, /jpe?g\z/]
      # Explicitly do not validate
            do_not_validate_attachment_file_type :photo

            def self.search(term)
                  if term
                    where('name LIKE ?', "%#{term}%")
                  else
                    all
                  end
            end
                
end
