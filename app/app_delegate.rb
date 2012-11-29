class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)

    @window = UIWindow.alloc.initWithFrame(App.bounds)
    @window.makeKeyAndVisible

    @controller = ViewController.alloc.initWithNibName("ViewController", bundle:nil)
    @window.rootViewController = @controller

    true
  end
end
