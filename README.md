## Jenkins Robotics
# Jenkins CNC Project Files
<!-- This is commented out. -->


#### WELCOME

 This is the project files for our Shapeoko 3 xxl. Out goal is to make our shapeoko 3 as automated as possible. To that goal we have installed multiple upgrades including: 
- [x] Duet 3 Controll Board
- [x] Pnumatic tool changer
- [x] Varible Fequency Drive & spindle
- [x] Tool TCP Probe
- [x] Work Piece XYZ Probe
- [x] Custum Fusion 360 Post Processor
- [ ] Pnumatic Dust Shoe
- [ ] Upgraded Spindle Adaptor Plate

&nbsp;

#### WATCH NOW ON YOUTUBE
[![image alt text](http://img.youtube.com/vi/w-qWbZ5-IQw/0.jpg)](https://youtube.com/playlist?list=PLNTKXZ4hgP_jekZOWw05JcJtyseCdSsIV "YouTube")



___

The following is a breakdown of the different folders and the files contained in them:

1. **CAD**
   - *Audible signal when operator's attention needed*
    Check this to get an audible notifications whenever special attention required such as when the tool is ready for change, or where the extreme caution is adviced, such as when failure to remove a probe can cause damages to the tool, part, machine or even the operator.
    The audible signal is generated on the computer that runs the control and NOT the controller board. So, this requires your PC to be audio enabled and volume is up.

   - *Corner Probe Placement*
    Depending on your setup, you may place your corner probe on any of the four corner of your stock. This will let the program to know and therefore to adjust for your corner probe location. If you choose nnot to use corner probe at all, these parameters will be ignored.
    
    &nbsp;
2. **CODE**  
   - *SDCARD*
   reforms XYZ-Corner Probe on start of script. It takes the corner probe dimensions and placemennnt from the options you specify in this stage, under sectionn 3- Probes
      
   - *Macros*
    How many seconds does the Spindle motor need to catch up from 0 to 6000. Determines time needed for all other speeds as well. For example if catch-up time for 6000 (6K) is 15 seconds, it will be 30 seconds for 12000 and 7.5 for 3000 and so forth.
    Get a chronometer and start your spindle motor from stationary to 6000 RPM and measure how many seconds it takes for it to catch up and settle on the RPM and input that number here.
  
   - *Sys Files*
    Choose the correct Work Coordinate System that is in use from 8 available slots. The post reserves WCS 9 for manual tool change operations. For the sake of file portability, this setting will be entirely ignored if you have specified WCS in your Fusion360 setup. This ensures that you don't accidentally override the intended WCS choice if you recieved the file from an another place.
    If you want the ability to choose your WCS in the post, you should leave the WCS offset on 0 when you setup your model for operations.
        **Directions:**
        - Uploading file to Fusion 360 Cloud Storage [Personal-cloud]
        With-in Fusion 360 open the project navigation panel. Under Libraries select "Assets", then select folder "CAMPosts" (if no folder exist then create one.) Upload the custom Post Proccesor within this folder for cloud storage. 
        - Create NC Program
        After creating your CAD model select the "Manufacturing Tab" in Fusion 360. Complete the "Setup" process and the desired toolpaths. Create a new "NC Program".  Under "Post Configuration / Library" specify the location of the Post Processor File [personal-cloud recommended]. Under Post specify the desired file "Jenkins CNC RepRap". Adjust Post Properties if desired, then export gcode.  


    &nbsp;
3. **DIAGRAMS**
   - *Jenkinc CNC Wire Diagram (JRCNCWD1)*
    Check this to get an audible notifications whenever special attention required such as when the tool is ready for change, or where the extreme caution is adviced, such as when failure to remove a probe can cause damages to the tool, part, machine or even the operator.
    The audible signal is generated on the computer that runs the control and NOT the controller board. So, this requires your PC to be audio enabled and volume is up.

   - *Duet 3 Reference files*
    The Duet 3 mainboard is a powerful control board used for CNC and 3D printing applications. Most used board documentation files are copied into the folder. Duet3D online wiki contains many more useful information and [Documentations](https://duet3d.dozuki.com/ "Duet3D").
  
    &nbsp;
4. **FUSION 360 POST PROCESSOR**
     
   - *JenkinsCNCReprap.cps*
    A post processor is the link between the CAM system and your CNC machine. The Post Processor translated the CAM instruction including information like the toolpath data, the type of operation, and the desired spindle feeds/speeds into the language that a CNC machine understands (gcode). Dispite the fact that the DUET 3 runs RepRap Firmware, the standard RepRap post processor do not work for CNC machining. Our Custom post processor is based on the default RepRap post processor but fixes the gcode syntax errors and adds  Automatic Tool Change / Spindle Controls support. 
    **Directions:**
      - Uploading file to Fusion 360 Cloud Storage [Personal-cloud]
        With-in Fusion 360 open the project navigation panel. Under Libraries select "Assets", then select folder "CAMPosts" (if no folder exist then create one.) Upload the custom Post Proccesor within this folder for cloud storage. 
      - Create NC Program
        After creating your CAD model select the "Manufacturing Tab" in Fusion 360. Complete the "Setup" process and the desired toolpaths. Create a new "NC Program".  Under "Post Configuration / Library" specify the location of the Post Processor File [personal-cloud recommended]. Under Post specify the desired file "Jenkins CNC RepRap". Adjust Post Properties if desired, then export gcode.  


    &nbsp;
5. **MANUALS**
   - *Reference Materials*
    The manuals folder contains reference material used. Variable Frequence Drive Manual contains the custom settings. 



> Note: Updating the RepRap firmware should be done carefully. Uploading the updated ZIP file could erase custom gcode files. 


**ENJOY!!**

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


