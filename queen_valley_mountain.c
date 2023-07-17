#include <stdio.h>
#include <string.h>

/* Variable Declaration*/
int apps = 30;     // Number of applications
int volunteers = 10; // Number of volunteers needed 
char name[30];  // Store the applicant's name

/*Function Prototypes*/
int readData(char name[], int apps);
void processData(int apps, int volunteers);
void printResults(int apps, int volunteers);

int main(){

	printf("Welcome to Clean Energy Corps!\n\n");

	// Reading applications data
	readData(name, apps);

	// Process applications data
	processData(apps, volunteers);

	// Print the final result
	printResults(apps, volunteers);

	return 0;
}

// Function to read applications data
int readData(char name[], int apps){

	for(int i=0; i<apps; i++){
		printf("Please enter the name of the applicant:\n");
		scanf("%s", name);
		printf("Application %d has been received!\n\n", i+1);
	}

}

// Function to process applications data
void processData(int apps, int volunteers){

	printf("Processing applications...\n");
	printf("*** %d applicants for %d positions ***\n\n", apps, volunteers);

}

// Function to print the results
void printResults(int apps, int volunteers){

	if(apps > volunteers){
		printf("Unfortunately, only %d applicants can be accepted.\n", volunteers);
		printf("The remaining applicants will be put on a waiting list.\n");
	}
	else {
		printf("All %d applicants have been accepted!\n", volunteers); 
	}

	printf("Congratulations to all accepted applicants!\n\n");

}