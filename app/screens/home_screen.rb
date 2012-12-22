class HomeScreen < ProMotion::GroupedTableScreen
  title "You're a Wino"
  def table_data
    [{
      title: "Search",
      cells: [
        { title: "Scan Barcode", action: :scan_barcode }
      ]
    }]
  end
  def scan_barcode
    # do a straight get request here and see what the output is
    BW::HTTP.get("http://youreawino.com/api/v1/searches/new?bc=085000012178", {format: :json}) do |response|
      json_response = BW::JSON.parse(response.body.to_str)
      title = json_response["wine"]["title"]
      avg_price = json_response["wine"]["avg_price"]
      description = json_response["wine"]["description"]
      open_screen WineScreen.new(nav_bar: true, wine_title: title, wine_description: description)
    end
  end
end