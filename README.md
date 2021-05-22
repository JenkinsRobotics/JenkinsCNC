## Jenkins Robotics
# Project Files for Shapeoko 3 XXL  Duet3 RepRap CNC 

__Welcome__

 This is the project files for our Shapeoko 3 xxl. Our Shapeoko has been upgraded with multiple new addons including: 

- Duet 3 Controll Board
- Pnumatic tool changer
- Pnumatic Dust Shoe
- Tool TCP Probe
- Work Piece XYZ Probe
- Custum Fusion 360 Post Processor

<!-- This is commented out. -->


#### WATCH NOW ON YOUTUBE
[![image alt text](http://img.youtube.com/vi/w-qWbZ5-IQw/0.jpg)](https://youtube.com/playlist?list=PLNTKXZ4hgP_jekZOWw05JcJtyseCdSsIV "YouTube")

Updates:
- 4/29/2020: Initial release 
  - Improved: Fusion 360 post processor / Tool Changer macros
- To Be Added: 
  - DUST SHOE & upgraded spindle adaptor plate

- [x] Write the press release
- [x] Update the website
- [x] Contact the media
- [x] 
<br> The following is a breakdown of the different folders and the files contained in them: </br>

___

1. **CAD**
   - *Audible signal when operator's attention needed*
    Check this to get an audible notifications whenever special attention required such as when the tool is ready for change, or where the extreme caution is adviced, such as when failure to remove a probe can cause damages to the tool, part, machine or even the operator.
    The audible signal is generated on the computer that runs the control and NOT the controller board. So, this requires your PC to be audio enabled and volume is up.

   - *Corner Probe Placement*
    Depending on your setup, you may place your corner probe on any of the four corner of your stock. This will let the program to know and therefore to adjust for your corner probe location. If you choose nnot to use corner probe at all, these parameters will be ignored.
  
   - *Corner Probe on initial start [1st Tool must be pre-mounted]*
   reforms XYZ-Corner Probe on start of script. It takes the corner probe dimensions and placemennnt from the options you specify in this stage, under sectionn 3- Probes
      
   - *Spindle RPM catch up time for 6K (in sec.)*
    How many seconds does the Spindle motor need to catch up from 0 to 6000. Determines time needed for all other speeds as well. For example if catch-up time for 6000 (6K) is 15 seconds, it will be 30 seconds for 12000 and 7.5 for 3000 and so forth.
    Get a chronometer and start your spindle motor from stationary to 6000 RPM and measure how many seconds it takes for it to catch up and settle on the RPM and input that number here.
  
   - *WCS to be used [If Setup WCS isn't 0, it overrides this]*
    Choose the correct Work Coordinate System that is in use from 8 available slots. The post reserves WCS 9 for manual tool change operations. For the sake of file portability, this setting will be entirely ignored if you have specified WCS in your Fusion360 setup. This ensures that you don't accidentally override the intended WCS choice if you recieved the file from an another place.
    If you want the ability to choose your WCS in the post, you should leave the WCS offset on 0 when you setup your model for operations.

1. **CODE**
   - *Audible signal when operator's attention needed*
    Check this to get an audible notifications whenever special attention required such as when the tool is ready for change, or where the extreme caution is adviced, such as when failure to remove a probe can cause damages to the tool, part, machine or even the operator.
    The audible signal is generated on the computer that runs the control and NOT the controller board. So, this requires your PC to be audio enabled and volume is up.

   - *Corner Probe Placement*
    Depending on your setup, you may place your corner probe on any of the four corner of your stock. This will let the program to know and therefore to adjust for your corner probe location. If you choose nnot to use corner probe at all, these parameters will be ignored.
  
   - *Corner Probe on initial start [1st Tool must be pre-mounted]*
   reforms XYZ-Corner Probe on start of script. It takes the corner probe dimensions and placemennnt from the options you specify in this stage, under sectionn 3- Probes
      
   - *Spindle RPM catch up time for 6K (in sec.)*
    How many seconds does the Spindle motor need to catch up from 0 to 6000. Determines time needed for all other speeds as well. For example if catch-up time for 6000 (6K) is 15 seconds, it will be 30 seconds for 12000 and 7.5 for 3000 and so forth.
    Get a chronometer and start your spindle motor from stationary to 6000 RPM and measure how many seconds it takes for it to catch up and settle on the RPM and input that number here.
  
   - *WCS to be used [If Setup WCS isn't 0, it overrides this]*
    Choose the correct Work Coordinate System that is in use from 8 available slots. The post reserves WCS 9 for manual tool change operations. For the sake of file portability, this setting will be entirely ignored if you have specified WCS in your Fusion360 setup. This ensures that you don't accidentally override the intended WCS choice if you recieved the file from an another place.
    If you want the ability to choose your WCS in the post, you should leave the WCS offset on 0 when you setup your model for operations.

3. Second item
4. Third item
5. Fourth item

> Note: This in no way is a replacement for adjusting your config.g parameters and/or tuning the hardware to the best of your capability. It's only a final resort to overcome backlash.


**ENJOY**

Thats all Folks. Hope this can help you in some way.

... Consider Supporting Us Down Below. 

---

SUPPORT US ► 
- Consider Subscribing: https://bit.ly/2DgZyuq
- Patreon ➔ https://www.patreon.com/JenkinsRobotics

FOLLOW US ►
- Discord ➔ https://discord.gg/sAnE5pRVyT
- Twitter ➔ https://twitter.com/jenkinsrobotics
- Instagram  ➔ https://www.instagram.com/jenkinsrobotics
- Facebook ➔ https://www.facebook.com/jenkinsrobotics
- GitHub  ➔ https://jenkinsrobotics.github.io


