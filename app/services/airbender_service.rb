class AirbenderService



  def get_characters_from_fire_nation
    params = { affiliation: '', direction: 'desc' }

    get_json('user/repos', github_token, params)
  end




  private

  def get_json(url, params = nil)
    response = conn.get(url, params) do |request|
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'https://last-airbender-api.herokuapp.com/api/v1/characters') do |f|
      f.adapter Faraday.default_adapter
    end
  end
end 