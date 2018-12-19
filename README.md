
## HOW TO INSTALL HUMHUB UNDER IIS 

**IMPORTANT**

The instalation assumes some settings in order to work:

&nbsp; &nbsp;   **A**) Humhub is at 'public root folder'. 

&nbsp; &nbsp;   **B**) The 'public root folder' is named **"public"** (not "www").
   
&nbsp; &nbsp;   **C**) **PHP is at "C:\PHP\..."** not under "program files"
<br><br>

### Steps

**1**. Download zip version of Humhub from https://www.humhub.org/en/download

   and unzip to public IIS folder
<br><br>


**2**. Add "[web.host](https://github.com/Buliwyfa/humhub_windows_installation/blob/master/web.config)" to public dir
<br><br>


**3**. Add write permission using  "[_permission_humhub__RUN_as_ADMIN_.bat](https://github.com/Buliwyfa/humhub_windows_installation/blob/master/_permission_humhub__RUN_as_ADMIN_.bat)"
   
   It must be a folder run/execute from folder under the 'public root folder'.
                  
 &nbsp; &nbsp; &nbsp; &nbsp; For example: If web root folder is at C:\interpud\mysite\public\
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;the .bat file must be at C:\interpud\mysite\
<br><br>

**4**. Create database, go to humhub web and finish the instalation
<br><br>


**5**. To enable "pretty URLs"

     Edit
	        common.php

     locate at
	        public\protected\config\

     Add:

```php
	<?php

	return [
	    'components' => [
		'urlManager' => [
		    'showScriptName' => false,
		    'enablePrettyUrl' => true,
		],
	    ]
	];
```
<br><br>

**6**. **Emulate cronojobs on Windows**.
<br><br>
 + To emulate it, you have **to create your own .bat files and schedule them to run them on intervals**, this is done via Windows Task Schedule. 
<br><br>
 + On this code example, there are some **important paths to consider**:
<br><br>



&nbsp; &nbsp; **6.1.** Copy folder "[cronojobs](https://github.com/Buliwyfa/humhub_windows_installation/blob/master/cronojobs/)"
        to under the 'public root folder' for your website.

 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; For example: <br>
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; If web root folder is at "C:\interpud\mysite\\**public**\\" <br>
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; the "cronojobs" folder at "C:\interpud\mysite\\**cronojobs**\\"<br>
<br>		   

  &nbsp; &nbsp; &nbsp; &nbsp; **NOTE**: our public root folder for a website is named "**public**" not "www" or "html" or....
   Please, fix it if needed.
<br><br>   




&nbsp; &nbsp; **6.2.** Edit the .bat files and adjunt the PHP paths to php-win.exe
  
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - On example bat files path is "C:\PHP\php-7.0.x-nts-VC14-x64\php-win.exe".<br> 
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Please, fix it!
<br><br>




 &nbsp; &nbsp; **6.3.** Update paths on all XML files:
  
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Change on all XML files "my-humhub-web.com" to your real web name path (path to 'public root folder')
  
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Update all paths on files from "x:\_path_to_my-humhub-web.com_\cronjobs\" to you path.
      
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - This XML files are tested on Windows 2016 and 2019 server.<br>
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;They may work on windows 10 and other version but we have not test them.
<br><br>



 &nbsp; &nbsp; **6.4.** Open task manager and import the XMLs
  
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - On server: Remember to set the task to run "Run whether user is logged on or not".




SOURCES/CREDIT:
web.host based on https://github.com/h5bp/server-configs-iis/tree/master/server%20config
