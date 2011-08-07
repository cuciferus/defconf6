class HemoLunar < ActiveRecord::Base
  belongs_to :pacient
  has_many :analiza_atipicas, :as => :sablon
  accepts_nested_attributes_for :analiza_atipicas
  def new_analiza_atipica_attributes=(analiza_atipica_attributes)
    analiza_atipica_attributes.each do |attributes|
      analiza_atipicas.build(attributes)
    end
  end
end
