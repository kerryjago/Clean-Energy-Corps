// Kotlin code for Clean Energy Corps

// Imports 
import java.util.Random
import java.lang.Math
import kotlinx.coroutines.CoroutineScope

// Initializing constants
const val MAX_LIGHT_ENERGY_IN_KWH = 200000 // Maximum light energy in KWH
const val MIN_LIGHT_ENERGY_IN_KWH = 500 // Minimum light energy in KWH
const val MAX_WIND_ENERGY_IN_KWH = 30000 // Maximum wind energy in KWH
const val MIN_WIND_ENERGY_IN_KWH = 1000 // Minimum wind energy in KWH

// Class to handle the Clean Energy Corps
class CleanEnergyCorps {

    // Declaring variables
    private var lightEnergyInKwh: Int
    private var windEnergyInKwh: Int
    private var totalEnergyInKwh: Int
    
    // Constructor
    init {
        this.lightEnergyInKwh = 0
        this.windEnergyInKwh = 0
        this.totalEnergyInKwh = 0
    }
    
    // Function to generate light energy
    private fun generateLightEnergy() {
        val rand = Random()
        lightEnergyInKwh = rand.nextInt(MAX_LIGHT_ENERGY_IN_KWH - MIN_LIGHT_ENERGY_IN_KWH + 1) + MIN_LIGHT_ENERGY_IN_KWH
    }
    
    // Function to generate wind energy
    private fun generateWindEnergy() {
        val rand = Random()
        windEnergyInKwh = rand.nextInt(MAX_WIND_ENERGY_IN_KWH - MIN_WIND_ENERGY_IN_KWH + 1) + MIN_WIND_ENERGY_IN_KWH
    }
    
    // Function to calculate total energy
    private fun calculateTotalEnergy() {
        val totalLightEnergyInKwh = Math.exp(lightEnergyInKwh.toDouble())
        val totalWindEnergyInKwh = Math.exp(windEnergyInKwh.toDouble())
        totalEnergyInKwh = (totalLightEnergyInKwh + totalWindEnergyInKwh).toInt()
    }
    
    // Function to update energy
    suspend fun updateEnergy() = CoroutineScope {
        generateLightEnergy()
        generateWindEnergy()
        calculateTotalEnergy()
    }
    
    // Getters
    fun getLightEnergyInKwh() = lightEnergyInKwh
    fun getWindEnergyInKwh() = windEnergyInKwh
    fun getTotalEnergyInKwh() = totalEnergyInKwh
}