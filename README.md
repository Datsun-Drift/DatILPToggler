# DatILPToggler
Toggle IPL's Quickly

**Requires qb-core

Optional Keypress:
  You can choose to enable the keybind or not.
  If you do use keybind, it will toggle any maps listed in Config.ToggleMaps
  The desired key can be changed either in the config, or via the keybind settings in the game.

Debug Setting:
  There is a debug option if you want to print to the console
  true is print to console, false is qb-core notifications

Debug On:
  
![image](https://user-images.githubusercontent.com/98725077/218623312-e3dfbc90-cdf8-4f78-aac1-8e99848f2789.png)
  
Debug Off:

![image](https://user-images.githubusercontent.com/98725077/218623481-cf87d3db-6d00-4b00-bf91-bed24c1e6679.png)
  
__Command:
  The command is /ipltoggle arg1 arg2
  arg1: IPL / ymap name  This is converted to string automatically so no need for qoutes
  arg2: on / off / blank  on enables the ipl/ymap, off disables the ipl/ymap and leaving blank toggles the state
  There is a help guide in the chat suggestions, to tell you what it wants, as you type it
  
Map List:
  Config.ToggleMaps is an array of IPLs or ymap names.
  A for loop using ipairs will toggle the maps in chronological order.
  This list is only used by the keybind
  

