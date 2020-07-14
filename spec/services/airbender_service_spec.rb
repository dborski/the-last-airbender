require 'rails_helper'

describe 'Airbender API' do
  it 'sends all characters from Fire Nation' do
    airbender = AirbenderService.new
    repos = airbender.get_characters

    
    expect(repos).to be_a(Array)
    expect(repos.first).to have_key(:name)
    expect(repos.first).to have_key(:html_url)
  end
end