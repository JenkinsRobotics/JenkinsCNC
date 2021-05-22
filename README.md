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

<ol>
    <li><b>Fusion 360 Post Processor</b>
      <p>
        <b>How does it work?</b>
        <br>Direction change backlash occurs when the machine mechanically falls short in moving the head to the requeted amount as the direction of the motion changes, but it carries on moving the head correctly for the next move if it happens to be in the same direction. For example if the machine is moving towards Y+ (or holding right after a  move towards Y+) and the nnext command is to move towards the Y- for 5mm, the machine may only move 4.5mm towards Y- instead, but reports 5mm motion to the controller. So, both the controller and Fusion have no idea that there is a 0.5mm shortage of motion and therefore some slight deformity in the output object/cut. This is particulary problematic in repeated back and forth motions.
        <br>The software can overcome this shortage by boosting these specific moves to the right amount so the head actually moves to the right amount. This will happen by fooling the controller that the requested stop point after a direction change is slightly larger to the specific amount but it keeps Fusion360 to still think it has moved to the desired amount. These adjustments should happen in correct occassions and only when really needed.
      </p>
      <p><b>Compensated Tools Motion Box</b>
        <br>If measured accurately, boosting moves to compensate for the backlash should not impact the shape or dimension of the resulting model. After all, what it should do is to render an even more accurate model. The boosts however will force the controller to feed the motors a few extra steps that in effect will slightly change the readings on the compensated axis without Fusion 360 knowing. If the changes were reported to Fusion 360 it will try to readjust the move back, that change of direction will trigger the compensator again and if Fusion 360 kicks in again to readjust the result will be ann unndesired vibration.
        <br>What happens after all is that, while the actual moves don't affect the dimension of the cuts, we end up having an slightly enlarged 'reported' tool motion box. This post will print the readjusted tool 'theorical' or 'reported' to controller motion box as comments at the end of the G-Code program it generates. It's always a good idea to take a look at the adjusted motion box report to make sure the machine will not run out of range of its allowable movements in any compensated axis, and if so the stock should be replaced to avoid that.
        </p>
        <p><b>How to measure the backlash for this post-Processor</b>
        <br>Jog an axis to one direction and jog it back 10mm and measure how far short of 10mm the axis has come back. Repeat the same for 1mm and note the offset amounts. We need the offset for both 1mm and 10mm motion after change of direction.
        </p>
      </li>
      </ul>


</ol>

**ENJOY**
Thats all Folks. Hope this can help you in some way.
... Consider Supporting Us Down Below. 

---

<br/>

SUPPORT US ► 
- Consider Subscribing: https://bit.ly/2DgZyuq
- Patreon ➔ https://www.patreon.com/JenkinsRobotics

<br/>

FOLLOW US ►
- Discord ➔ https://discord.gg/sAnE5pRVyT
- Twitter ➔ https://twitter.com/jenkinsrobotics
- Instagram  ➔ https://www.instagram.com/jenkinsrobotics
- Facebook ➔ https://www.facebook.com/jenkinsrobotics
- GitHub  ➔ https://jenkinsrobotics.github.io


