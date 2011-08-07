module HemoLunarsHelper
  def add_analiza_atipica(name)
    link_to_function name do |page|
      page.insert_html :bottom, :analiza_atipicas, :partial => 'analiza_atipicas', :object => AnalizaAtipica.new
    end
  end
end
