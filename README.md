# ThreadApp

SwinjectStoryboard is an extension of Swinject to automatically inject dependency to view controllers instantiated by a storyboard.

#Usage

Swinject supports automatic dependency injection to view controllers instantiated by SwinjectStoryboard. This class inherits
UIStoryboard (or NSStoryboard in case of OS X). To register dependencies of a view controller, use storyboardInitCompleted method. 
In the same way as a registration of a service type, a view controller can be registered with or without a name.
NOTE: Do NOT explicitly resolve the view controllers registered by storyboardInitCompleted method. 
The view controllers are intended to be resolved by SwinjectStoryboard implicitly.



#Edge cases

- I have it. setup to  show the user the error from the api and a view with button reload the page 
- I was goig to do pagination for each page to reduce the memory using with in result reduce the usage of user phone power
- I Use RxSwift to make the app reactive to change in the squence of data sent to it and handle asyc fuctionality
- I used Kingfisher because it help cache the image and reduce the about of data using use and if there is not internet the user can access preload pictures
- i used lottie-ios for displaying a preload in instance the user is wait for the UI to display
