class ViewController < UIViewController

  def viewDidLoad
    label = UILabel.alloc.initWithFrame([[5,20], [self.view.frame.size.width-10, 50]])
    label.text = "Accrodion Example"
    label.textAlignment = UITextAlignmentCenter
    self.view.addSubview(label)

    @accordion = AccordionView.alloc.initWithFrame([[5,75], [self.view.frame.size.width-10, 250]])
    self.view.addSubview(@accordion)

    header1 = UIButton.alloc.initWithFrame(CGRectMake(0, 0, 0, 30))
    header1.setTitle("Section 1", forState:UIControlStateNormal)
    header1.setTitleColor(UIColor.whiteColor, forState:UIControlStateNormal)
    header1.backgroundColor = "#808080".to_color
    header1.layer.borderWidth = 1
    header1.layer.borderColor = "#dedfe1".to_color.CGColor

    view1 = UIView.alloc.initWithFrame(CGRectMake(0, 0, 0, 100))
    view1.backgroundColor = "#C0C0C0".to_color
    view1.layer.borderWidth = 1
    view1.layer.borderColor = "#dedfe1".to_color.CGColor

    @accordion.addHeader(header1, withView:view1)

    header2 = UIButton.alloc.initWithFrame(CGRectMake(0, 0, 0, 30))
    header2.setTitle("Section 2", forState:UIControlStateNormal)
    header2.backgroundColor = "#808080".to_color
    header2.setTitleColor(UIColor.whiteColor, forState:UIControlStateNormal)
    header2.layer.borderWidth = 1
    header2.layer.borderColor = "#dedfe1".to_color.CGColor

    view2 = UIView.alloc.initWithFrame(CGRectMake(0, 0, 0, 100))
    view2.backgroundColor = "#C0C0C0".to_color
    view2.layer.borderWidth = 1
    view2.layer.borderColor = "#dedfe1".to_color.CGColor

    @accordion.addHeader(header2, withView:view2)

    header3 = UIButton.alloc.initWithFrame(CGRectMake(0, 0, 0, 30))
    header3.setTitle("Section 3", forState:UIControlStateNormal)
    header3.backgroundColor = "#808080".to_color
    header3.setTitleColor(UIColor.whiteColor, forState:UIControlStateNormal)
    header3.layer.borderWidth = 1
    header3.layer.borderColor = "#dedfe1".to_color.CGColor

    view3 = UIView.alloc.initWithFrame(CGRectMake(0, 0, 0, 100))
    view3.backgroundColor = "#C0C0C0".to_color
    view3.layer.borderWidth = 1
    view3.layer.borderColor = "#dedfe1".to_color.CGColor

    @accordion.addHeader(header3, withView:view3)

    @accordion.setSelectedIndex(-1)
    @accordion.setNeedsLayout
  end

end