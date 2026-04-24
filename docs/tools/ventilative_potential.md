---
title: Ventilative Cooling Potential Tool 
---

# Ventilative Cooling Potential Tool

!!! abstract "Abstract"

    The Ventilative cooling potential tool evaluates the effectiveness of natural ventilation cooling strategies in buildings, supporting early-stage design decisions by considering building characteristics, climate data, and comfort requirements. It provides a preliminary assessment to optimize passive cooling while highlighting its limitations for complex scenarios.

## Introduction

The ventilative cooling potential tool aims at assessing the cooling potential of ventilative cooling (fx. using natural forces) in a reference thermal and ventilation zone representing the building in its context.
The ventilative cooling potential analysis is based on a methodology developed within International Energy Agency (IEA) Annex 62 project with the aim to assess in the early design stages the potential effectiveness of ventilative cooling strategies by taking into account also building envelope thermal properties, occupancy patterns, internal gains and ventilation needs. The methodology and corresponding spreadsheet tool has been further developed by using relevant equations, including thermal mass, and methods from EN ISO 52016-1:2017 for energy balance calculation. The calculation methodology is integrated in Annex G of the technical specifications " Ventilation for buildings — Ventilative cooling systems — Design” – currently in preparation.

## General 

The tool is a free web app developed by Eurac Research to support the development of sustainable cooling strategies for buildings. This includes boosting the use of outdoor air to cool buildings whenever possible.
The tool uses the [VentiCoolPy](../Libraries/venticoolpy.md) library as its calculation engine.
The **Ventilative Cooling (VC)** Tool is intended as a **preliminary assessment resource** to support early-stage design decisions related to passive cooling strategies. While the method provides valuable insights into the potential of ventilative cooling under typical conditions, it is essential to acknowledge its inherent **limitations**.
This tool relies on **simplified assumptions**, including the use of uniform air temperature and the omission of complex thermal dynamics. As such, it is **not suitable for detailed analyses** in spaces where:

- **Thermal stratification, solar gain patterns,** or **heat storage effects** play a significant role;
- The architecture is **complex**, such as **multi-zone** or **multi-story buildings**;
- **Large glazed surfaces or dynamic solar exposure** significantly influence thermal performance;
- **Thermal bridges, non-uniform solar radiation, or advanced material interactions** must be accurately accounted for.

In these contexts, the use of more **comprehensive dynamic simulation tools** is strongly recommended. As building design progresses and more detailed information becomes available, transitioning to advanced modeling platforms ensures **greater accuracy, more reliable predictions**, and the development of an **optimized ventilative cooling strategy**.
By using this tool, users acknowledge that results are **indicative** and should be **validated with detailed simulations** before informing final design decisions or implementation strategies.


## Output
The ventilative cooling tool calculates during occupied hours the following outputs:

1. Distribution of ventilative modes over the year. An algorithm differentiates each hour of the year among the four ventilative cooling modes, showing the percentage of time within each month when:
    - Ventilative cooling is not required (VC-mode [0]): Ventilative cooling is not required during occupied hours in which indoor temperature is below the lower comfort zone limit (heating is needed). 
    - Direct ventilative cooling with airflow rate maintained at the minimum required (VC-mode [1]): direct ventilation with airflow rate maintained at the minimum required for indoor air quality can potentially ensure comfort when the outdoor temperature is within the comfort ranges. 
    - Direct ventilative cooling with increased airflow rate increased (VC-mode [2]): Direct ventilative cooling with increased airflow rate can potentially ensure thermal comfort and indoor air quality. 
    - Direct ventilative cooling is not useful (VC-mode [3]): direct ventilative cooling cannot provide benefits because the outdoor temperature exceeds to the upper limits of the comfort zone or the outdoor air is too humid. 
2. Frequency of air change rates required to provide thermal comfort: Frequency analysis of the required ventilation rates to cool down the building when direct ventilative cooling with increased airflow rate is required (VC-mode [2]). This analysis is useful to identify the design ventilation rates for ventilative cooling systems.
3. Sensible energy needs: Monthly and annual sensible energy needs for heating and cooling with and without ventilative cooling;
4.	Ventilative cooling capacity (kWh/y): The cooling energy needs that could be avoided over the year thanks to the use of ventilative cooling.

## License

- **License**: BSD-3-Clause License


## Contacts

For any questions or support, please contact:

**Concept and Methodology**

- Annamaria Belleri <annamaria.belleri@eurac.edu>

**Python Code and Web Tool**

- Olga Somova <olga.somova@eurac.edu>

**other contributors**

- Ali Sana Fatima <sanafatima.ali@eurac.edu> (vertical irradiance code)
- Valentina Radice Fossati (validation of the calculation methdology)
- Dick Van Djik  <dick.vandijk@epb.center> (thermal balance calculation method)


## Citation 

Please cite us if you use the _VentiCoolPy_ library:

    Fossati V., Belleri A., Van Djik D., A methodology for evaluating the ventilative cooling potential in early-stage building design, AIVC 2023 conference proceedings, Copenhagen, October 2023

## Acknowledgements
This work has received funding from the European Union's Horizon Europe research and innovation programme under grant agreement No 101138672 (HeriTACE).
The calculation methodology implemented in this library has been adopted by CEN/TC 156/WG21 and included in their technical specification on ventilative cooling systems. We gratefully acknowledge the WG21 experts for their feedback.

