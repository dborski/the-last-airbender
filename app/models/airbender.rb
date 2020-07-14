class Airbender
  attr_reader :name

  def initialize(airbender_info)
    @name = airbender_info[:name]
    @allies = airbender_info[:allies]
    @enemies = airbender_info[:enemies]
    @affiliation = airbender_info[:affiliation]
  end
end