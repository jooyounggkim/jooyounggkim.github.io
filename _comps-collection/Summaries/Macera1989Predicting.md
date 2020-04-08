# Predicting Lower-Extremity Injuries Among Habitual Runners
[Macera et al 1989](../References/Macera1989Predicting.pdf)

### Notes
Nice that this is specific to habitual runners. However, it's not specific to stress fractures. This paper
signifies a transition from clinical and military-related investigations to more of a focus on the risk factors instead
of identification and treatment. Still just a survey though, haven't really broken into the running biomechanics yet. 

### Methods
Follow 583  (98 women) runners over a year with monthly surveys. Focus was on any lower limb injury that the participant attributed
to running and required  reduction in weekly mileage, visiting the doctors, or use of medication. 

Broke people into high/low-risk groups depending on surface or time of day they typically ran. I think this is based 
on some prior clinical work and think they were just trying to find a way to classify those who ran on hard/soft surfaces, 
etc. The survey seems to lack some specifics about these potential risk factors. 

Performed a logistic regression (injured - not injured) to determine effect of some of these baseline variables on injury 
over the 12-month period.

### Results
- 583 runners completed 80% of the logs (including last month) out of 966 who completed the baseline questionnaire.
- Baseline study asked about 3 months prior, women were younger (36.1 vs 41.6yr) and less running experience (6.2yr vs 8.7yr), but similar mileage.
- 52% of men and 49% of women reported at least one running injury. 
- Women's logistic regression had huge confidence intervals for odds ratios, probably because they had 4x the number of men enrolled.
- running on concrete was only significant variable in women's logistic regression

### Discussion
Identified Risk Factors for **MEN**:
1. **Running Experience:** new runners (0-2yrs) had a significantly higher odds ratio of being injured during the year
1. **Previous Injury:** odds of being injured during the 12-month period was 3x greater if men had a prior injury. 
1. **Running Distance:** no real specifics beyond, running more increases odds of injury. 

#### Don't know what *types* of injuries these runners experienced over the year. 
