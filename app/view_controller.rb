class ViewController < UIViewController

  def viewDidLoad
    @accordion = AccordionView.alloc.initWithFrame(self.view.frame)

    p self.view.frame
    p @accordion.frame

    self.view.addSubview(@accordion)

    header1 = UIButton.alloc.initWithFrame(CGRectMake(0, 0, 0, 20))
    header1.setTitle("First", forState:UIControlStateNormal)

    p header1

    view1 = UIView.alloc.initWithFrame(CGRectMake(0, 0, 0, 200))
    view1.backgroundColor = UIColor.orangeColor

    p view1

    @accordion.addHeader(header1, withView:view1)

    header2 = UIButton.alloc.initWithFrame(CGRectMake(0, 0, 0, 20))
    header2.setTitle("First", forState:UIControlStateNormal)

    p header2

    view2 = UIView.alloc.initWithFrame(CGRectMake(0, 0, 0, 200))
    view2.backgroundColor = UIColor.redColor

    p view2

    @accordion.addHeader(header2, withView:view2)


    @accordion.setNeedsLayout
  end

end