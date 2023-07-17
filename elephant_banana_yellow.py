#1
#!/usr/bin/python

# Import Necessary Modules
import sys
import os

# Create Clean Energy Corps Class
class Clean_Energy_Corps:

# Initialize to Define Class Variables
    def __init__(self, name, goal):
        self.name = name
        self.goal = goal

# Check Energy Source by Type
    def check_source(self, source):
        if source == "solar":
            self.source = "solar"
        elif source == "wind":
            self.source = "wind"
        elif source == "hydro":
            self.source = "hydro"
        else:
            self.source = "other"

# Rewards For Participants
    def rewards(self):
        if self.source == "solar":
            return "monetary rewards"
        elif self.source == "wind":
            return "a certificate of appreciation"
        elif self.source == "hydro":
            return "other rewards"
        else:
            return "none"

# Carry Out Clean Energy Projects
    def projects(self):
        if self.source == "solar":
            print("setting up solar panels.")
        elif self.source == "wind":
            print("building a wind turbine.")
        elif self.source == "hydro":
            print("building a hydroelectric dam.")
        else:
            print("carrying out other clean energy projects.")

#2
# Create a Function to Create an Instance of the Clean_Energy_Corps Class
def create_instance(name,goal):
    cec = Clean_Energy_Corps(name, goal)
    return cec

#3
# Create a Function to Add New Members to an Existing Instance of Clean_Energy_Corps
def add_member(cec, name):
    cec.members.append(name)

#4
# Create a Function to Set the Energy Source of an Existing Instance of Clean_Energy_Corps
def set_energy_source(cec, source):
    cec.check_source(source)

#5
# Create a Function to Check the Rewards of an Existing Instance of Clean_Energy_Corps
def check_rewards(cec):
    return cec.rewards()

#6
# Create a Function to Carry Out a Clean Energy Project of an Existing Instance of Clean_Energy_Corps
def carry_out_project(cec):
    cec.projects()

#7
# Main Function
def main():
    # Get Name and Goal from the User
    name = input("Enter name of Clean Energy Corps: ")
    goal = input("Enter the goal of the Clean Energy Corps: ")

    # Create an Instance of Clean_Energy_Corps
    cec = create_instance(name, goal)

    # Get Members from the User
    num_members = int(input("Enter number of members: "))
    for i in range(num_members):
        name = input("Enter member name:")
        add_member(cec, name)

    # Set the Energy Source of the Clean Energy Corps
    source = input("Enter energy source (solar, wind, or hydro): ")
    set_energy_source(cec, source)

    # Print Out the Rewards
    rewards = check_rewards(cec)
    print("Rewards of participating in the project:", rewards)

    # Carry Out a Clean Energy Project
    carry_out_project(cec)

#8
# Call Main Function
if __name__ == "__main__":
    main()