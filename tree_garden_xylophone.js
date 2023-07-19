const CleanEnergyCorps = { 
 
    // Initialize Clean Energy Corps
    init: function () { 
        this.setEvents(); 
    }, 
 
    // Set events for Clean Energy Corps
    setEvents: function () { 
        document.getElementById('cleanEnCorps').addEventListener('click', this.clickHandler); 
    }, 
 
    // Click handler of Clean Energy Corps
    clickHandler: function () { 
        console.log('You just clicked on the Clean Energy Corps button!'); 
    } 
}; 
 
// Initialize the Clean Energy Corps
document.addEventListener('DOMContentLoaded', function () { 
    CleanEnergyCorps.init(); 
}); 
 
// Create a new array to store Clean Energy Corps data
let cleanEnCorpsData = []; 
 
// Request Clean Energy Corps data
const xhr = new XMLHttpRequest(); 
xhr.open('GET', '/clean-energy-corps-data'); 
 
xhr.onload = function () { 
    if (xhr.status === 200) { 
        cleanEnCorpsData = JSON.parse(xhr.responseText); 
    } 
}; 
 
xhr.send(); 
 
// Function to create HTML element for Clean Energy Corps data
function createElementForCleanEnCorpsData() { 
    const dataContainer = document.getElementById('dataContainer'); 
 
    for (let i = 0; i < cleanEnCorpsData.length; i++) { 
        const dataDiv = document.createElement('div'); 
        dataDiv.setAttribute('class', 'data-entry'); 
 
        const name = document.createElement('h3'); 
        name.innerHTML = cleanEnCorpsData[i].name; 
 
        dataDiv.appendChild(name); 
 
        const country = document.createElement('p'); 
        const countryLabel = document.createElement('span'); 
        countryLabel.innerHTML = 'Country: '; 
        const countryName = document.createElement('span'); 
        countryName.innerHTML = cleanEnCorpsData[i].country; 
        country.appendChild(countryLabel); 
        country.appendChild(countryName); 
 
        dataDiv.appendChild(country); 
 
        dataContainer.appendChild(dataDiv); 
    } 
} 
 
// Create HTML elements for Clean Energy Corps data
createElementForCleanEnCorpsData(); 
 
// Function to calculate the ratio of Clean Energy Corps data in each country
function calculateCorpsRatio() { 
    const countryContainer = document.getElementById('countryContainer'); 
    const uniqueCountry = []; 
    const uniqueCountryCount = []; 
 
    for (let i = 0; i < cleanEnCorpsData.length; i++) { 
        if (!uniqueCountry.includes(cleanEnCorpsData[i].country)) { 
            uniqueCountry.push(cleanEnCorpsData[i].country); 
            uniqueCountryCount.push(1); 
        } else { 
            uniqueCountryCount[uniqueCountry.indexOf(cleanEnCorpsData[i].country)]++; 
        } 
    } 
 
    for (let i = 0; i < uniqueCountry.length; i++) { 
        const ratioDataDiv = document.createElement('div'); 
        ratioDataDiv.setAttribute('class', 'ratio-data-entry'); 
 
        const country = document.createElement('h3'); 
        country.innerHTML = uniqueCountry[i]; 
 
        ratioDataDiv.appendChild(country); 
 
        const cleanEnCorpsRatio = document.createElement('p'); 
        const cleanEnCorpsLabel = document.createElement('span'); 
        cleanEnCorpsLabel.innerHTML = 'Clean Energy Corps Ratio: '; 
        const cleanEnCorpsValue = document.createElement('span'); 
        cleanEnCorpsValue.innerHTML = 
            (uniqueCountryCount[i] / cleanEnCorpsData.length).toFixed(2); 
        cleanEnCorpsRatio.appendChild(cleanEnCorpsLabel); 
        cleanEnCorpsRatio.appendChild(cleanEnCorpsValue); 
 
        ratioDataDiv.appendChild(cleanEnCorpsRatio); 
 
        countryContainer.appendChild(ratioDataDiv); 
    } 
} 
 
// Calculate the ratio of Clean Energy Corps data in each country
calculateCorpsRatio();