class AirbenderSearch
  def fire_nation_characters
    service.get_characters_from_fire_nation.map do |data|
      Airbender.new(data)
    end
  end 

  def service
    AirbenderService.new
  end
end