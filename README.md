## HOW TO INSTALL HUMHUB UNDER IIS 


1. Download zip version of Humhub from https://www.humhub.org/en/download

   and unzip to public IIS folder



2. Add "[web.host](https://github.com/Buliwyfa/humhub_windows_installation/blob/master/web.config)" to public dir



3. Add write permission using  "[_permission_humhub__RUN_as_ADMIN_.bat](https://github.com/Buliwyfa/humhub_windows_installation/blob/master/_permission_humhub__RUN_as_ADMIN_.bat)"
   
   - Humhub is place on public root folder

   - Public root folder is named "public" (not www")

   - It must be run/execute form under publics IIS folder to work 
   
	For example: If web root folder is at C:\interpud\mysite\public
	             the .bat file must be at C:\interpud\mysite\


4. To enable "pretty URLs"

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