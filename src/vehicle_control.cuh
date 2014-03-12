/**
 * @file: vehicle_control.cuh
 * @author: Chris Blatchley
 * @author: Thad Bond
 *
 * Vehicle Controller headers
 */
#pragma once
#include <thrust/host_vector.h>
#include <thrust/device_vector.h>
#include "vehicle.cuh"
#include "edge.cuh"
#include "route.cuh"

class Edge;
class Route;
class Vehicle;

class VehicleControl
{
public:

    /**
     * Class Constructor and Destructor
     */
    VehicleControl();
    ~VehicleControl();

    /**
     * addVehicle
     * @param vehicle   Pointer to vehicle to add
     * @return  boolean whether vehicle was successfully added to route
     */
    bool addVehicle(Vehicle *vehicle);

    /**
     * queueVehicle
     * @param vehicle   The vehicle to add to waiting queue
     */
    void queueVehicle(Vehicle *vehicle);

    /**
     * deleteVehicle
     * @param vehicle   The vehicle to discard
     */
    void deleteVehicle(Vehicle *vehicle);

    /**
     * refreshTimestep
     */
    void refreshTimestep(int timeStep);
    
    // vehicles : Thrust vector of Vehicle pointers
    thrust::host_vector<Vehicle *> vehicles;

    // waiting : Thrust vector
    thrust::host_vector<Vehicle *> waiting;

    int endedVehicles;

};