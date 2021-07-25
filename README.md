## Jenkins Robotics
# Jenkins CNC Project Files
<!-- This is commented out. -->


#### WELCOME

 This is the project files for our Shapeoko 3 xxl. Our goal is to make our shapeoko 3 as automated as possible. To achive this goal we have installed multiple upgrades onto our cnc including: 
- [x] Duet 3 Control Board
- [x] Pnumatic tool changer
- [x] Varible Fequency Drive & spindle
- [x] Tool TCP Probe
- [x] Work Piece XYZ Probe
- [x] Custum Fusion 360 Post Processor
- [x] Pnumatic Dust Shoe

&nbsp;

#### WATCH NOW ON YOUTUBE
[![image alt text](http://img.youtube.com/vi/w-qWbZ5-IQw/0.jpg)](https://youtube.com/playlist?list=PLNTKXZ4hgP_jekZOWw05JcJtyseCdSsIV "YouTube")
&nbsp;

Did this project help you? Consider supporting! ►

Consider Subscribing: https://bit.ly/2DgZyuq <br>
Patreon ➔ https://www.patreon.com/JenkinsRobotics <br>
Venmo ➔ https://venmo.com/u/JenkinsRobotics <br>



___

The following is a breakdown of the different folders and the files contained in them:

1. **CAD**
   - *Online Models*
    Reference CAD models were used in the modeling of the shapeoko 360. Including a generic Shapeoko 3 model and a Duet 3 Model. We are also using a generic CAD cover for the LCD screen that can be downloaded directly from thingiverse. All reference CAD models used are copied here with any other documentation and licenses that came with the file. 

   - *Jenkins Robotics CAD*
    All released CAD models will be posted here on Github. Every CAD model made by us are given a part number (JRCNC###). Original files are created using fusion 360. Most files will also be given proper engineering drawings once a release version of the file is posted.
    
    &nbsp;
2. **CODE**  
   - *SDCARD*
    This folder contains a copy of all they files located on our Duet 3 Motherboard SD Card. The system drive contains multiple subfolders each containing different gcode / system files. Before Copying/referencing our  custom files it is best to upgrade the stock firmware and system files. The official Duet 3 releases can be found on GitHub.  [RepRap Files](https://github.com/Duet3D "Duet3D").
      
   - *Macros*
    The Macro folder contains all the additional system files needed for the Duet 3. Files are grouped by their function. 
     **Directions:**
        - Upload any of the desired files. Then review the files and make any necessary  adjustment to the position points and the probe/sensors numbers.  

   - *Sys*
    The System folder contains all the important system files needed for the Duet 3. Each file serves as important gcode files that configures the machine and provide necessary gcode for specific processes like tool changes. 
        **Directions:**
        - Upload the following files: Config*, TFree, Tpost, Tpre, Zprobe, Lighthome, lighton. 
        - Config file is specific to each machine. and will require modification based on the wiring of your specific machine. Use our config file and our wire diagram as reference. 
        - The TFree/Tpost/Tpre and ZProbe are all required files to add support for ATC and Automatic Tool offset probe. Copy these files and adjust the position data as necessary. 


    &nbsp;
3. **DIAGRAMS**
   - *Jenkinc CNC Wire Diagram (JRCNCWD1)*
    A wiring diagram is a simplified conventional pictorial representation of an electrical circuit. It shows the components of the circuit as simplified shapes, and the power and signal connections between the devices Reference the wire diagram to review how each electrical component is connected to the Duet board

   - *Duet 3 Reference files*
    Reference files are used to highlight specific information that useful for the operation, installation of the duet board.  Duet3D online wiki contains many more useful information and [Documentations](https://duet3d.dozuki.com/ "Duet3D").
  
    &nbsp;
4. **FUSION 360 POST PROCESSOR**
     
   - *JenkinsCNCReprap.cps*
    A post processor is the link between the CAM system and your CNC machine. The Post Processor translated the CAM instruction including information like the toolpath data, the type of operation, and the desired spindle feeds/speeds into the language that a CNC machine understands (gcode). Despite the fact that the DUET 3 runs RepRap Firmware, the standard RepRap post processor do not work for CNC machining. Our Custom post processor is based on the default RepRap post processor but fixes the gcode syntax errors and adds  Automatic Tool Change / Spindle Controls support. 
    **Directions:**
      - Uploading file to Fusion 360 Cloud Storage [Personal-cloud]
        With-in Fusion 360 open the project navigation panel. Under Libraries select "Assets", then select folder "CAMPosts" (if no folder exist then create one.) Upload the custom Post Processor within this folder for cloud storage. 
      - Create NC Program
        After creating your CAD model select the "Manufacturing Tab" in Fusion 360. Complete the "Setup" process and the desired toolpaths. Create a new "NC Program".  Under "Post Configuration / Library" specify the location of the Post Processor File [personal-cloud recommended]. Under Post specify the desired file "Jenkins CNC RepRap". Adjust Post Properties if desired, then export gcode.  


    &nbsp;
5. **MANUALS**
   - *Reference Materials*
    The manuals folder contains reference material for different hadware apart of the CNC. 
      - The VFD Manual contains the custom settings specific for our spindle.
      - Automatic Tool Changer (ATC) manual contains information required to "run-in" a new spindle to properly prepare it before running production
      


> Note: Updating the RepRap firmware should be done carefully. Uploading the updated ZIP file could erase custom gcode files. 


**ENJOY!!**

That’s  all Folks. Hope this can help you in some way.

... Consider Supporting Us Down Below. 

---


Disclaimer ►

Modifying your Shapeoko  will void the warranty. Do at your own risk.


SUPPORT US ► 

Consider Subscribing: https://bit.ly/2DgZyuq <br>
Patreon ➔ https://www.patreon.com/JenkinsRobotics  <br>
Venmo ➔ https://venmo.com/u/JenkinsRobotics <br>


FOLLOW US ►

Discord ➔ https://discord.gg/sAnE5pRVyT <br>
Patreon ➔ https://www.patreon.com/JenkinsRobotics <br>
Twitter ➔ https://twitter.com/j <br>
Instagram  ➔ https://www.instagram.com/jenkinsrobotics/ <br>
Facebook ➔ https://www.facebook.com/jenkinsrobotics/  <br>
GitHub  ➔ https://jenkinsrobotics.github.io <br>
