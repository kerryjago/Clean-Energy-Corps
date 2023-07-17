//MARK: - Class Declarations

import Foundation

public class CleanEnergyCorps {
    
    //MARK: - Variables
    public var energyOutput : Int
    public var energySource : String
    public var energyUse : Int
    public var energyConservation : Int
    
    //MARK: - Initializer
    public init(energyOutput: Int, energySource: String, energyUse: Int, energyConservation: Int) {
        self.energyOutput = energyOutput
        self.energySource = energySource
        self.energyUse = energyUse
        self.energyConservation = energyConservation
    }
    
    //MARK: - Methods
    public func calculateEnergyOutput() -> Int {
        return energyOutput + energyConservation - energyUse
    }
    
    public func setEnergySource(energySource: String) {
        self.energySource = energySource
    }
    
    public func getEnergySource() -> String {
        return energySource
    }
    
    public func trackEnergyUsage() -> Int {
        return energyUse
    }
    
    public func trackEnergyConservation() -> Int {
        return energyConservation
    }
    
}

public class CleanEnergyProjects {

    //MARK: - Properties
    public var projects : [CleanEnergyProject]

    //MARK: - Initializer
    public init() {
        projects = [CleanEnergyProject]()
    }

    //MARK: - Methods
    public func addProject(project: CleanEnergyProject) {
        projects.append(project)
    }

    public func removeProject(projectName: String) -> Bool {
        var index = 0

        for project in projects {
            if project.name == projectName {
                projects.remove(at: index)
                return true
            }
            index += 1
        }

        return false
    }

    public func listProjects() -> [CleanEnergyProject] {
        return projects
    }

}

public class CleanEnergyProject {

    //MARK: - Properties
    public var name : String
    public var description : String
    public var energyOutput : Int
    public var energySource : String
    public var energyUse : Int
    public var energyConservation : Int

    //MARK: - Initializer
    public init(name: String, description: String, energyOutput: Int, energySource: String, energyUse: Int, energyConservation: Int) {
        self.name = name
        self.description = description
        self.energyOutput = energyOutput
        self.energySource = energySource
        self.energyUse = energyUse
        self.energyConservation = energyConservation
    }

    //MARK: - Methods
    public func calculateEnergyOutput() -> Int {
        return energyOutput + energyConservation - energyUse
    }

    public func setEnergySource(energySource: String) {
        self.energySource = energySource
    }

    public func getEnergySource() -> String {
        return energySource
    }

    public func trackEnergyUsage() -> Int {
        return energyUse
    }

    public func trackEnergyConservation() -> Int {
        return energyConservation
    }

}

public class CleanEnergyCorpsMember {

    //MARK: - Properties
    public var name : String
    public var position : String
    public var projects : [CleanEnergyProject]

    //MARK: - Initializer
    public init(name: String, position: String) {
        self.name = name
        self.position = position
        self.projects = [CleanEnergyProject]()
    }

    //MARK: - Methods
    public func assignProject(project: CleanEnergyProject) {
        projects.append(project)
    }

    public func removeProject(projectName: String) -> Bool {
        var index = 0

        for project in projects {
            if project.name == projectName {
                projects.remove(at: index)
                return true
            }
            index += 1
        }

        return false
    }

    public func listProjects() -> [CleanEnergyProject] {
        return projects
    }

}