class WineScreen < ProMotion::Screen
  title "You're a Wino"
  attr_accessor :wine_title, :wine_description
  def will_appear
    self.view.backgroundColor = UIColor.whiteColor
    add_element UILabel.alloc.initWithFrame(CGRectMake(15, 10, 275, 30)), {
      text: "#{wine_title}",
      borderStyle: UITextBorderStyleRoundedRect,
      backgroundColor: UIColor.whiteColor,
      font: UIFont.boldSystemFontOfSize(16),
      numberOfLines: 0,
      lineBreakMode: UILineBreakModeWordWrap,
      layer: {
        borderWidth: 5,
        cornerRadius: 15,
        borderColor: UIColor.grayColor
      }
    }
    add_element UILabel.alloc.initWithFrame(CGRectMake(15, 35, 275, 80)), {
      text: "#{wine_description}",
      borderStyle: UITextBorderStyleRoundedRect,
      backgroundColor: UIColor.whiteColor,
      font: UIFont.systemFontOfSize(14),
      numberOfLines: 0,
      lineBreakMode: UILineBreakModeWordWrap,
      layer: {
        borderWidth: 5,
        cornerRadius: 15,
        borderColor: UIColor.grayColor
      }
    }
  end
end