require 'rails_helper'

describe 'Airbender API' do
  it 'sends all characters from Fire Nation' do
    airbender = AirbenderService.new

    characters = airbender.get_characters_from_fire_nation

    expect(characters).to be_a(Array)
    expect(characters.first).to have_key(:_id)
    expect(characters.first).to have_key(:allies)
    expect(characters.first).to have_key(:enemies)
    expect(characters.first).to have_key(:photoUrl)
    expect(characters.first).to have_key(:name)
    expect(characters.first).to have_key(:affiliation)
  end
end