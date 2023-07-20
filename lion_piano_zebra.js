//Define constants
const FILE_NAME = 'Clean Energy Corps';

// Create a function for creating the file
function createFile(){
  const fs = require('fs');

  // Create the file
  fs.writeFile(FILE_NAME, '', function(err){
    if (err){
        console.log('Failed creating file');
    }
  });

}

// Create the file
createFile();

// Define the clean energy corps object 
const cleanEnergyCorps = {
  name: 'Clean Energy Corps',
  description: 'An organization that seeks to educate and empower people to take action on climate change.',
  mission: 'We strive to provide knowledge, resources and support to empower people to reduce their impact on the environment.',
  goals: 'We are focused on reducing emissions of carbon dioxide and other greenhouse gases, increasing renewable energy production, and promoting environmental stewardship through sustainable development.'
};

// Define the routes and handlers
const routes = {
  '/': function(request, response) {
    response.writeHead(200);
    response.end(
      `<html>
        <head>
          <title>${cleanEnergyCorps.name}</title>
        </head>
        <body>
          <h1>Welcome to ${cleanEnergyCorps.name}</h1>
          <p>${cleanEnergyCorps.description}</p>
          <h2>Our Mission</h2>
          <p>${cleanEnergyCorps.mission}</p>
          <h2>Our Goals</h2>
          <p>${cleanEnergyCorps.goals}</p>
        </body>
      </html>
      `
    )
  }
};

// Create the http server 
const http = require('http');
http.createServer(function(request, response){
  if (request.url in routes) {
    routes[request.url](request, response);
  } else {
    response.writeHead(404);
    response.end('Not Found');
  }
}).listen(8000);

// Create a function for writing to file
function writeToFile(){
  const fs = require('fs');

  // Append the text to file
  fs.appendFile(FILE_NAME, `
    //Define the clean energy corps object 
    const cleanEnergyCorps = {
      name: 'Clean Energy Corps',
      description: 'An organization that seeks to educate and empower people to take action on climate change.',
      mission: 'We strive to provide knowledge, resources and support to empower people to reduce their impact on the environment.',
      goals: 'We are focused on reducing emissions of carbon dioxide and other greenhouse gases, increasing renewable energy production, and promoting environmental stewardship through sustainable development.'
    };

    // Define the routes and handlers
    const routes = {
      '/': function(request, response) {
        response.writeHead(200);
        response.end(
          \`<html>
            <head>
              <title>\${cleanEnergyCorps.name}</title>
            </head>
            <body>
              <h1>Welcome to \${cleanEnergyCorps.name}</h1>
              <p>\${cleanEnergyCorps.description}</p>
              <h2>Our Mission</h2>
              <p>\${cleanEnergyCorps.mission}</p>
              <h2>Our Goals</h2>
              <p>\${cleanEnergyCorps.goals}</p>
            </body>
          </html>
          \`
        )
      }
    };

    // Create the http server 
    const http = require('http');
    http.createServer(function(request, response){
      if (request.url in routes) {
        routes[request.url](request, response);
      } else {
        response.writeHead(404);
        response.end('Not Found');
      }
    }).listen(8000);
  `, (err) => {
    if (err) {
      return console.log(err);
    }
  });
}

// Write the code to file
writeToFile();