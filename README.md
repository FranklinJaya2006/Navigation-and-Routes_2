### Navigation-and-routes

## How to install the code ?

1. you have to git clone the repository
``` cmd
git clone https://github.com/FranklinJaya2006/Navigation-and-routes.git
```
2. open the directory you've been installed in Visual Studio Code
3. run in the terminal flutter clean. then, flutter pub get.

## How to use this application ?

1. From the first screen, if you want to go to the second screen, you have two choice you can use Drawer or you can push the button, or if you want to go to another screen u can use Drawer.
2. From the second screen, if you want to go to the third screen, you have two choice you can use Drawer or you can push the button, or if you want to back to the first screen or another screen you can use Drawer.
3. From the third screen, if you want to go to the first screen, you have two choice you can use Drawer or you can push the button, or if you want to back to the second screen or another you can use Drawer.
   
## Approach

to do this Lab Activity, i copied the three code from e-learn. I added two files to my directory, then copy the code to the main.dart, first_screen.dart, second_screen.dart. in process, i get a problem i can't remove the previous page, so i decided to see stackoverflow and i know i have to use Navigator.pushAndRemoveUntil so that widget used for remove the previous page. But, if you use Navigator.pushAndRemoveUntil u have to set the routes in main.dart or you can use (_) => false);. For the drawer, i use my previous code from my portfolio project.

## Chalengges

For this lab activity, i get chalengge how to remove the previous page, because if i use Navigator.push it doesn't remove the previous page. So i decided to change from Navigator.push to Navigator.pushAndRemoveUntil, after i change the Navigator it can Remove the previous page. But why not remove the previous page is a chalengge ???, Because if im not remove the previous page too heavy because the previous screens aren't deleted from memory.
