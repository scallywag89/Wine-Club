class Wine < ApplicationRecord
  validates :name, presence: true
  # LOOK
  LOOK_INTENSITY_OPTIONS = %w[Pale Medium Deep].freeze
  COLOR_OPTIONS_WHITE = %w[Straw Yellow Gold Amber Brown].freeze
  COLOR_OPTIONS_ROSE = %w[Pink Salmon Copper].freeze
  COLOR_OPTIONS_RED = %w[Purple Ruby Garnet Tawny Brown].freeze
  VISCOSITY_OPTIONS = %w[Watery Med-Low Medium Med-High Syrupy].freeze

  # SMELL
  SMELL_INTENSITY_OPTIONS = %w[Low Med-Low Medium Med-High High].freeze

  # TASTE
  SWEETNESS_OPTIONS = ['Bone Dry', 'Dry', 'Off-Dry', 'Sweet', 'Very Sweet'].freeze
  ACIDITY_OPTIONS = %w[Low Med-Low Medium Med-High High].freeze
  TANNIN_OPTIONS = %w[Low Med-Low Medium Med-High High].freeze
  ALCOHOL_OPTIONS = ['< 10%', '10 - 11.5%', '11.5 - 13.5%', '13.5 - 15%', '> 15%'].freeze
  BODY_OPTIONS = %w[Light Med-Light Medium Med-Full Full].freeze
end
