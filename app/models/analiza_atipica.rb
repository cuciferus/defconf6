class AnalizaAtipica < ActiveRecord::Base
  belongs_to :sablon, :polymorphic => true
end
