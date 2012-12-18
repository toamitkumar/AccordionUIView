class ViewController < UIViewController

  def viewDidLoad
    label = UILabel.alloc.initWithFrame([[5,20], [self.view.frame.size.width-10, 50]])
    label.text = "Accordion Example"
    label.textAlignment = UITextAlignmentCenter
    self.view.addSubview(label)

    @accordion = Accordion.alloc.initWithFrame([[5,75], [self.view.frame.size.width-10, 250]])
    self.view.addSubview(@accordion)

    add_accordion("Section 1")
    add_accordion("Section 2")
    add_accordion("Section 3")
    
    @accordion.set_selected_index(-1)
    @accordion.setNeedsLayout
  end

  private 
  def add_accordion(header_name)
    header = UIButton.alloc.initWithFrame(CGRectMake(0, 0, 0, 30))
    header.setTitle(header_name, forState:UIControlStateNormal)
    header.setTitleColor(UIColor.whiteColor, forState:UIControlStateNormal)
    header.backgroundColor = "#808080".to_color
    header.layer.borderWidth = 1
    header.layer.borderColor = "#dedfe1".to_color.CGColor

    view = UIView.alloc.initWithFrame(CGRectMake(0, 0, 0, 100))
    view.backgroundColor = "#C0C0C0".to_color
    view.layer.borderWidth = 1
    view.layer.borderColor = "#dedfe1".to_color.CGColor

    @accordion.add_header(header, withView:view)
  end

end
