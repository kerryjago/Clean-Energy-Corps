//Main function
function cleanEnergyCorps() {
	//Set up an object to store user data
	var userData = {};

	//Set up an object to store the user's clean energy activities
	var cleanEnergyActivities = {};

	//Function to collect info from the user
	function getUserInfo() {
		//Prompt the user for their name
		var userName = prompt("What is your name?");
		//Store the user name in the userData object
		userData.name = userName;

		//Prompt the user for their age
		var userAge = prompt("What is your age?");
		//Store the user age in the userData object
		userData.age = userAge;

		//Prompt the user for their location
		var userLocation = prompt("What is your location?");
		//Store the user location in the userData object
		userData.location = userLocation;
	}

	//Function to collect the user's clean energy activities
	function getCleanEnergyActivities() {
		//Prompt the user to enter their clean energy activities
		var userCleanEnergyActivities = prompt("What clean energy activities have you done or are you currently doing? Separate each activity by a comma.");
		//Split the userCleanEnergyActivities string into an array
		var cleanEnergyActivityArray = userCleanEnergyActivities.split(',');
		//Loop through the array and add each item to the userData object
		for (var i = 0; i < cleanEnergyActivityArray.length; i++) {
			//Store the clean energy activity and a boolean value indicating if it was completed in the userData object
			userData[cleanEnergyActivityArray[i]] = false;
		}
		//Set the userData object's cleanEnergyActivities property to the cleanEnergyActivityArray
		userData.cleanEnergyActivities = cleanEnergyActivityArray;
	}

	//Function to track the user's clean energy activities
	function trackCleanEnergyActivities() {
		//Loop through the userData object's cleanEnergyActivities property
		for (var i = 0; i < userData.cleanEnergyActivities.length; i++) {
			//Prompt the user to enter if they completed the clean energy activity
			var completedActivity = prompt("Have you completed the clean energy activity: " + userData.cleanEnergyActivities[i] + "? (yes/no)");
			//If the user has completed the activity, set the boolean value for the activity to true
			if (completedActivity === 'yes' || completedActivity === 'Yes') {
				userData[userData.cleanEnergyActivities[i]] = true;
			}
			else {
				userData[userData.cleanEnergyActivities[i]] = false;
			}
		}
		//Loop through the userData object to get all of the completed activities
		for (var activity in userData) {
			//If the activity was completed, add it to the cleanEnergyActivities object
			if (userData[activity] === true) {
				cleanEnergyActivities[activity] = true;
			}
		}
	}

	//Function to print the user data
	function printUserData() {
		//Print the user name
		console.log("Name: " + userData.name);
		//Print the user age
		console.log("Age: " + userData.age);
		//Print the user location
		console.log("Location: " + userData.location);
		//Loop through the cleanEnergyActivities object and print the activities
		for (var activity in cleanEnergyActivities) {
			console.log("Clean Energy Activity: " + activity);
		}
	}

	//Call the functions
	getUserInfo();
	getCleanEnergyActivities();
	trackCleanEnergyActivities();
	printUserData();

}

//Call the main function
cleanEnergyCorps();