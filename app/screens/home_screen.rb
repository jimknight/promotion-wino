class HomeScreen < ProMotion::GroupedTableScreen
  def table_data
    [{
      title: "Search",
      cells: [
        { title: "Scan Barcode", action: :scan_barcode }
      ]
    }]
  end
  def scan_barcode
    p "scan here"
  end
end