DynamicTableTest
================

I recreated the demo from Session 226 (with some modifications), with constraints created in code and in Interface Builder. The constraints set in code work, as expected, but when I make the custom cell and set the constraints in Interface Builder, I get the following:

```
2014-06-26 15:56:30.342 DynamicTable2[28371:1865072] Unable to simultaneously satisfy constraints.
	Probably at least one of the constraints in the following list is one you don't want. Try this: (1) look at each constraint and try to figure out which you don't expect; (2) find the code that added the unwanted constraint or constraints and fix it. (Note: If you're seeing NSAutoresizingMaskLayoutConstraints that you don't understand, refer to the documentation for the UIView property translatesAutoresizingMaskIntoConstraints) 
(
    "<NSLayoutConstraint:0xb839f60 H:|-(20)-[UILabel:0xb8398f0'Testing']   (Names: '|':UITableViewCellContentView:0xb839850 )>",
    "<NSLayoutConstraint:0xb839ff0 H:[UILabel:0xb8398f0'Testing']-(20)-|   (Names: '|':UITableViewCellContentView:0xb839850 )>",
    "<NSLayoutConstraint:0xb83af90 'fittingSizeHTarget' H:[UITableViewCellContentView:0xb839850(0)]>"
)

Will attempt to recover by breaking constraint 
<NSLayoutConstraint:0xb839ff0 H:[UILabel:0xb8398f0'Testing']-(20)-|   (Names: '|':UITableViewCellContentView:0xb839850 )>

```
Make a symbolic breakpoint at UIViewAlertForUnsatisfiableConstraints to catch this in the debugger.
The methods in the UIConstraintBasedLayoutDebugging category on UIView listed in <UIKit/UIView.h> may also be helpful.

As far as I can tell, the constraints are the same, regardless of how I created them. However, it seems that doing this in Interface Builder doesn't work.

Am I missing something? Did I do something wrong?
