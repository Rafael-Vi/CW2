{
  "$GMExtension":"",
  "%Name":"FirebaseSetup",
  "androidactivityinject":"",
  "androidclassname":"YYFirebaseSetup",
  "androidcodeinjection":"\r\n<YYAndroidGradleDependencies>\r\n        implementation platform('com.google.firebase:firebase-bom:31.1.1')\r\n</YYAndroidGradleDependencies>\r\n\r\n<YYAndroidTopLevelGradleBuildscriptDependencies>\r\n        classpath 'com.google.gms:google-services:4.3.14'  // Google Services plugin\r\n</YYAndroidTopLevelGradleBuildscriptDependencies>\r\n\r\n<YYAndroidGradleEnd>\r\n       apply plugin: 'com.google.gms.google-services'\r\n</YYAndroidGradleEnd>\r\n\r\n<YYAndroidGradleAndroid>\r\n    compileOptions {\r\n        sourceCompatibility 1.8\r\n        targetCompatibility 1.8}\r\n</YYAndroidGradleAndroid>\r\n\r\n\r\n<YYAndroidManifestApplicationInject>\r\n<provider\r\n    android:name=\"com.google.firebase.provider.FirebaseInitProvider\"\r\n    android:authorities=\"${applicationId}.firebaseinitprovider\"\r\n    tools:node=\"remove\"/>\r\n</YYAndroidManifestApplicationInject>\r\n",
  "androidinject":"\r\n<provider android:name=\"com.google.firebase.provider.FirebaseInitProvider\" android:authorities=\"${applicationId}.firebaseinitprovider\" tools:node=\"remove\"></provider>\r\n",
  "androidmanifestinject":"",
  "androidPermissions":[],
  "androidProps":true,
  "androidsourcedir":"",
  "author":"",
  "classname":"",
  "copyToTargets":44,
  "description":"",
  "exportToGame":true,
  "extensionVersion":"1.2.0",
  "files":[],
  "gradleinject":"\r\n        implementation platform('com.google.firebase:firebase-bom:31.1.1')\r\n",
  "hasConvertedCodeInjection":true,
  "helpfile":"",
  "HTML5CodeInjection":"\r\n<GM_HTML5_PreBody>\r\n\r\n<script src=\"https://www.gstatic.com/firebasejs/8.9.1/firebase-app.js\"></script>\r\n<script src=\"https://www.gstatic.com/firebasejs/8.9.1/firebase-analytics.js\"></script>\r\n<script src=\"https://www.gstatic.com/firebasejs/8.9.1/firebase-auth.js\"></script>\r\n<script src=\"https://www.gstatic.com/firebasejs/8.9.1/firebase-database.js\"></script>\r\n<script src=\"https://www.gstatic.com/firebasejs/8.9.1/firebase-firestore.js\"></script>\r\n<script src=\"https://www.gstatic.com/firebasejs/8.9.1/firebase-remote-config.js\"></script>\r\n<script src=\"https://www.gstatic.com/firebasejs/8.9.1/firebase-storage.js\"></script>\r\n\r\n<script>\r\n\r\n  // Your web app's Firebase configuration\r\n  // For Firebase JS SDK v7.20.0 and later, measurementId is optional\r\n  const firebaseConfig = ${YYEXTOPT_FirebaseSetup_html5Config};\r\n\r\n  firebase.initializeApp(firebaseConfig);\r\n</script>\r\n\r\n</GM_HTML5_PreBody>\r\n",
  "html5Props":true,
  "IncludedResources":[],
  "installdir":"",
  "iosCocoaPodDependencies":"",
  "iosCocoaPods":"",
  "ioscodeinjection":"",
  "iosdelegatename":"",
  "iosplistinject":"",
  "iosProps":true,
  "iosSystemFrameworkEntries":[],
  "iosThirdPartyFrameworkEntries":[],
  "license":"",
  "maccompilerflags":"",
  "maclinkerflags":"",
  "macsourcedir":"",
  "name":"FirebaseSetup",
  "options":[
    {"$GMExtensionOption":"","%Name":"__extOptLabel","defaultValue":"ANDROID OPTIONS:","description":"","displayName":"","exportToINI":false,"extensionId":null,"guid":"af7e8666-54d3-4cbd-b2a3-9ea5847d1e21","hidden":false,"listItems":[],"name":"__extOptLabel","optType":5,"resourceType":"GMExtensionOption","resourceVersion":"2.0",},
    {"$GMExtensionOption":"","%Name":"jsonFile","defaultValue":"","description":"Can be aquired from Firebase dashboard.","displayName":"google-services (json)","exportToINI":true,"extensionId":null,"guid":"d898ff5d-783b-4206-bf9f-9fdcb8e7bf07","hidden":false,"listItems":[],"name":"jsonFile","optType":3,"resourceType":"GMExtensionOption","resourceVersion":"2.0",},
    {"$GMExtensionOption":"","%Name":"__extOptLabel1","defaultValue":"iOS OPTIONS:","description":"","displayName":"","exportToINI":false,"extensionId":null,"guid":"75639da0-a6d6-48e7-88d8-c81aa1f7ffff","hidden":false,"listItems":[],"name":"__extOptLabel1","optType":5,"resourceType":"GMExtensionOption","resourceVersion":"2.0",},
    {"$GMExtensionOption":"","%Name":"plistFile","defaultValue":"","description":"Can be aquired from Firebase dashboard.","displayName":"GoogleService-Info (plist)","exportToINI":true,"extensionId":null,"guid":"f1646d22-9b39-40c6-95b7-0288f97d546f","hidden":false,"listItems":[],"name":"plistFile","optType":3,"resourceType":"GMExtensionOption","resourceVersion":"2.0",},
    {"$GMExtensionOption":"","%Name":"__extOptLabel3","defaultValue":"HTML5 OPTIONS:","description":"","displayName":"","exportToINI":false,"extensionId":null,"guid":"c9006835-7026-44ee-9b1b-d105dd429f40","hidden":false,"listItems":[],"name":"__extOptLabel3","optType":5,"resourceType":"GMExtensionOption","resourceVersion":"2.0",},
    {"$GMExtensionOption":"","%Name":"html5Config","defaultValue":"{}","description":"","displayName":"Firebase Config Struct","exportToINI":false,"extensionId":null,"guid":"11a17746-f032-4539-a629-d472bdf4c265","hidden":false,"listItems":[],"name":"html5Config","optType":2,"resourceType":"GMExtensionOption","resourceVersion":"2.0",},
    {"$GMExtensionOption":"","%Name":"__extOptLabel2","defaultValue":"EXTRA OPTIONS:","description":"","displayName":"","exportToINI":false,"extensionId":null,"guid":"156128a7-a27e-4aee-9fb0-162d2496a1cb","hidden":false,"listItems":[],"name":"__extOptLabel2","optType":5,"resourceType":"GMExtensionOption","resourceVersion":"2.0",},
    {"$GMExtensionOption":"","%Name":"logLevel","defaultValue":"1","description":"","displayName":"Log Level","exportToINI":false,"extensionId":null,"guid":"1094a489-64c1-410f-98e0-74b96b74b9fc","hidden":false,"listItems":[
        "0",
        "1",
        "2",
      ],"name":"logLevel","optType":6,"resourceType":"GMExtensionOption","resourceVersion":"2.0",},
    {"$GMExtensionOption":"","%Name":"versionStable","defaultValue":"2022.9.0.0","description":"","displayName":"","exportToINI":false,"extensionId":null,"guid":"17d697a8-6d84-4c47-ac42-0cd0dad2866f","hidden":true,"listItems":[],"name":"versionStable","optType":2,"resourceType":"GMExtensionOption","resourceVersion":"2.0",},
    {"$GMExtensionOption":"","%Name":"versionBeta","defaultValue":"2022.900.0.0","description":"","displayName":"","exportToINI":false,"extensionId":null,"guid":"4c6c74fb-e223-4e29-aaa3-155abf35e14f","hidden":true,"listItems":[],"name":"versionBeta","optType":2,"resourceType":"GMExtensionOption","resourceVersion":"2.0",},
    {"$GMExtensionOption":"","%Name":"versionDev","defaultValue":"9.1.1.0","description":"","displayName":"","exportToINI":false,"extensionId":null,"guid":"ea14e0c8-8004-4d4e-aaca-b07869416335","hidden":true,"listItems":[],"name":"versionDev","optType":2,"resourceType":"GMExtensionOption","resourceVersion":"2.0",},
    {"$GMExtensionOption":"","%Name":"versionLTS","defaultValue":"2022.0.1.24","description":"","displayName":"","exportToINI":false,"extensionId":null,"guid":"7ccb0b44-2b38-4a6f-a85e-68de8fc6ec5e","hidden":true,"listItems":[],"name":"versionLTS","optType":2,"resourceType":"GMExtensionOption","resourceVersion":"2.0",},
  ],
  "optionsFile":"options.json",
  "packageId":"",
  "parent":{
    "name":"Firebase",
    "path":"folders/Firebase.yy",
  },
  "productId":"",
  "resourceType":"GMExtension",
  "resourceVersion":"2.0",
  "sourcedir":"",
  "supportedTargets":-1,
  "tvosclassname":null,
  "tvosCocoaPodDependencies":"",
  "tvosCocoaPods":"",
  "tvoscodeinjection":"",
  "tvosdelegatename":null,
  "tvosmaccompilerflags":"",
  "tvosmaclinkerflags":"",
  "tvosplistinject":"",
  "tvosProps":false,
  "tvosSystemFrameworkEntries":[],
  "tvosThirdPartyFrameworkEntries":[],
}