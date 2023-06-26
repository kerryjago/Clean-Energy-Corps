import scala.collection.mutable.ArrayBuffer

// Create an object class for Clean Energy Corps
class CleanEnergyCorps {
    var name: String = ""
    var currentMembers: ArrayBuffer[String] = ArrayBuffer()
    var currentProjects: ArrayBuffer[String] = ArrayBuffer()
    var localPartners: ArrayBuffer[String] = ArrayBuffer()
    var budget: Double = 0.0

// Method to set Clean Energy Corps name
    def setName(newName: String): Unit = {
        name = newName
    }

// Method to add members to the Clean Energy Corps
    def addMembers(newMembers: Array[String]): Unit = {
        currentMembers ++= newMembers
    }

// Method to remove members from the Clean Energy Corps
    def removeMembers(removedMembers: Array[String]): Unit = {
        for(member <- removedMembers) {
            currentMembers -= member
        }
    }

// Method to add projects to the Clean Energy Corps
    def addProjects(newProjects: Array[String]): Unit ={
        currentProjects ++= newProjects
    }

// Method to remove projects from the Clean Energy Corps
    def removeProjects(removedProjects: Array[String]): Unit = {
        for(project <- removedProjects) {
            currentProjects -= project
        }
    }

// Method to add local partners to the Clean Energy Corps
    def addLocalPartners(newPartners: Array[String]): Unit = {
        localPartners ++= newPartners
    }

// Method to remove local partners from the Clean Energy Corps
    def removeLocalPartners(removedPartners: Array[String]): Unit = {
        for(partner <- removedPartners) {
            localPartners -= partner
        }
    }

// Method to set the budget of the Clean Energy Corps
    def setBudget(newBudget: Double): Unit = {
        budget = newBudget
    }

// Method to print out the current state of the Clean Energy Corps
    def printInfo(): Unit = {
        println("Clean Energy Corps Name: " + name)
        println("Current Members: " + currentMembers.mkString(", "))
        println("Current Projects: " + currentProjects.mkString(", "))
        println("Local Partners: " + localPartners.mkString(", "))
        println("Budget: " + budget)
    }

}

// Make a new instance of CleanEnergyCorps
val cleanEnergyCorps = new CleanEnergyCorps

// Set the name of the Clean Energy Corps
cleanEnergyCorps.setName("My Clean Energy Corps")

// Add members to the Clean Energy Corps
cleanEnergyCorps.addMembers(Array("Alex", "John", "David", "Darren"))

// Add projects to the Clean Energy Corps
cleanEnergyCorps.addProjects(Array("Solar Panels", "Wind Turbines", "Recycling Program"))

// Add local partners to the Clean Energy Corps
cleanEnergyCorps.addLocalPartners(Array("City Hall", "Public Library", "Electric Company"))

// Set the budget of the Clean Energy Corps
cleanEnergyCorps.setBudget(1000.00)

// Print out information about the Clean Energy Corps
cleanEnergyCorps.printInfo()