# Effects of Stride Length and Running Mileage on a Probabilistic Stress Fracture Model
[Edwards 2009](../References/Edwards2009Effects.pdf)

### Notes

### Purpose
Decreasing stride length has been shown to decrease surrogates of loading (vGRF and tibial shock), but doing so increases
number of steps taken per unit distance. Overuse injuries depend on loading magnitude AND number of cycles, so does decreasing
the magnitude still benefit runners if number of cycles increases?

### Methods
Adapted material fatigue equations to scale up to the number of cycles and strain magnitudes experienced over weeks of 
running. Finite element modelling allows for the calulation of P_f, the cumulative probablity that a volume of bone will 
fial under a given amount of stress, for each element in the model. **Bone repair** is also included in model, with P_r being
the probability of repair. **Bone adaptation** is also included in the model by accounting for time it takes to adapt. The
end variable, P_fra, is the probabilty of failure with repair and adaptation.

Participants ran at 4.4 m/s but at preferred stride length (3.1 m) and -10% preferred stride length (2.8 m). Used floor 
tape to set -10% PSL. 

mocap/force data imported to OpenSim to develop muscle forces/moment arms and muscle orientations. Then they made a finite
element model of the tibia to calculate strains, scaling tibia length to each subject.

Also included strains for walking slow/fast to account for daily activity outside of running. Pretty realistic conditions...

#### Applying model
applied model to 3 daily mileage conditions: 3, 5, and 7 miles/day. Number of cycles was determined from subject stride 
length, with walking distances obtained from another study on athletic folks. Didn't calculate Prob_fail for each element, 
but grouped them into 8 groups.
### Results
Decreasing stride length decreased tibial contact force.
![ ](../Images/Edwards2009Effects_1.png)    
*Probability of injury given repair and adaptation (P_fra) peaked and plateaued after ~40 days. Preferred Stride Length
also changed the slope of P_fra (more gradual)!*

* Reduction in stride length decreased failure likelihood by 3-6%
* Increasing mileage from 3 to 5 miles/day increased failure likelihood by 4-5%
* Increasing mileage from 3 to 7 miles/day increased failure likelihood by 7-10%
### Discussion
Doesn't account for effect of muscle fatigue on tibial strains and how a 10% change in PSL could affect onset of fatigue.

Benefits of decreasing the strain per step outweighs the cost of taking more steps for a given unit distance.
### Notable References
1. 