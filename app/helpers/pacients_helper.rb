module PacientsHelper
   def link_to_analize
    case @pacient.last_protocol.tip
    when 'capd'
      analiza_path = new_pacient_capd_url(@pacient)
    when 'hd'
      @hemo = HemoLunar.new
      analiza_path = new_pacient_hemo_lunar_url(@pacient, @hemo)
    when 'brd'
      analiza_path = new_pacient_bcr_path(@pacient)
    end
    link_to('Adauga alt set de analize', analiza_path)
  end

end
