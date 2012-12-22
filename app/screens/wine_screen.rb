class WineScreen < ProMotion::GroupedTableScreen
  attr_accessor :title, :description
  def table_data
    [{
      title: "Wine",
      cells: [
        { title: title, action: :about_promotion },
        { title: description, action: :about_jamon }
      ]
    }, {
      title: "Help",
      cells: [
        { title: "Support", action: :support },
        { title: "Feedback", action: :feedback }
      ]
    }]
  end
end