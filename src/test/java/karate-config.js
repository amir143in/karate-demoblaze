function fn() {
    
   var env = karate.env;
	karate.log('The value of env is: ' , env);
	
	var config = {}; // Initialize the config object
	
	if(env=='qa'){
		config.baseUrl = 'https://api.demoblaze.com'
	}
	else if(env=='dev'){
		config.baseUrl = 'https://api.demoblaze-dev.com'
	}
	else {
		config.baseUrl = 'https://api.demoblaze-preprod.com'
	} 

    
    karate.configure('connectTimeout', 5000);
	karate.configure('readTimeout', 5000);
	
	return config;
}
