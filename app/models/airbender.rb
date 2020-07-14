class Airbender
  attr_reader :name, :photo_url, :allies, :enemies, :affiliation

  def initialize(airbender_info)
    @name = airbender_info[:name]
    @photo_url = airbender_info[:photoUrl]
    @allies = airbender_info[:allies]
    @enemies = airbender_info[:enemies]
    @affiliation = airbender_info[:affiliation]
  end
end