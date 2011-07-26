class Pacient < ActiveRecord::Base
  has_many :protocols
  has_many :hemo_lunars
  accepts_nested_attributes_for :protocols
  accepts_nested_attributes_for :hemo_lunars
  def last_protocol
    unless self.protocols.last.nil?
      @protocols = self.protocols.last
    end
  end

  def analize
    puts 'rules analize' #ruleaza de fiecare data cand chem @pacient.analize, trebe facut altfel putin
    analiza ={}
    case self.last_protocol.tip
    when 'capd'
      analiza = self.capds
    when 'hd'
      analiza[:colectie] = self.hemo_lunars #aici imi trebuie oare model separat de hemo ce cuprinde lunar/semestrial?
    end
    analiza
  end


end
