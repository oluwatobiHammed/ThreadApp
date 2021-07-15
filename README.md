# ThreadApp

SwinjectStoryboard is an extension of Swinject to automatically inject dependency to view controllers instantiated by a storyboard.

#Usage

Swinject supports automatic dependency injection to view controllers instantiated by SwinjectStoryboard. This class inherits
UIStoryboard (or NSStoryboard in case of OS X). To register dependencies of a view controller, use storyboardInitCompleted method. 
In the same way as a registration of a service type, a view controller can be registered with or without a name.
NOTE: Do NOT explicitly resolve the view controllers registered by storyboardInitCompleted method. 
The view controllers are intended to be resolved by SwinjectStoryboard implicitly.
