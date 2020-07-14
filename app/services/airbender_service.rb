class AirbenderService
  def get_characters_from_fire_nation

    get_json('characters?affiliation=Fire+Nation')
  end

  private

  def get_json(url)
    response = conn.get(url) do |request|
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'https://last-airbender-api.herokuapp.com/api/v1') do |f|
      f.adapter Faraday.default_adapter
    end
  end
end 