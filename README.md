## HOW TO INSTALL HUMHUB UNDER IIS 

IMPORTANT

The instalation assumes some settings in order to work:

   A. Humhub is at 'public root folder'.

   B. The 'public root folder' is named "public" (not "www").



### Steps

1. Download zip version of Humhub from https://www.humhub.org/en/download

   and unzip to public IIS folder



2. Add "[web.host](https://github.com/Buliwyfa/humhub_windows_installation/blob/master/web.config)" to public dir



3. Add write permission using  "[_permission_humhub__RUN_as_ADMIN_.bat](https://github.com/Buliwyfa/humhub_windows_installation/blob/master/_permission_humhub__RUN_as_ADMIN_.bat)"
   
   It must be a folder run/execute from folder under the 'public root folder'
   
        For example: If web root folder is at C:\interpud\mysite\public\
	             the .bat file must be at C:\interpud\mysite\


4. Create database, go to humhub web and finish the instalation



5. To enable "pretty URLs"

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

6. Emulate cronojobs on Windos

  6.1. Copy folder "[cronojobs](https://github.com/Buliwyfa/humhub_windows_installation/blob/master/cronojobs/)"
   to under the 'public root folder'
   
	For example: If web root folder is at C:\interpud\mysite\public\
	            the "cronojobs" folder at C:\interpud\mysite\cronojobs\

  
  6.2. Update all XML files
  
       6.2.1. Change on all XML files "my-humhub-web.com" to your real web name
  
       6.2.2. Update all paths on files from "x:\_path_to_my-humhub-web.com_\cronjobs\" to you path.


  6.3. Open task manager and import the XMLs
  
       6.3.1. On server: Remember to set the task to run "Run whether user is logged on or not"




