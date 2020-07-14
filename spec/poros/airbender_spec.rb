require 'rails_helper'

describe 'Airbender' do
  it 'exists' do
    airbender = Airbender.new({name: "Bully Guard", photoUrl: "dfd", allies: ["tom"], enemies: ["billy"], affiliation: "some affiliation"})

    expect(airbender).to be_a(Airbender)
  end

  it 'attributes' do
    airbender = Airbender.new({name: "Bully Guard", photoUrl: "dfd", allies: ["tom"], enemies: ["billy"], affiliation: "some affiliation"})

    expect(airbender.name).to eq("Bully Guard")
    expect(airbender.photo_url).to eq("dfd")
    expect(airbender.allies).to eq(["tom"])
    expect(airbender.enemies).to eq(["billy"])
    expect(airbender.affiliation).to eq("some affiliation")
  end
end