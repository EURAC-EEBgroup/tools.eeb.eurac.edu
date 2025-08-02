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
The **Ventilative Cooling (VC)** Tool is intended as a **preliminary assessment resource** to support early-stage design decisions related to passive cooling strategies. While the method provides valuable insights into the potential of ventilative cooling under typical conditions, it is essential to acknowledge its inherent **limitations**.
This tool relies on **simplified assumptions**, including the use of uniform air temperature and the omission of complex thermal dynamics. As such, it is **not suitable for detailed analyses** in spaces where:

- **Thermal stratification, solar gain patterns,** or **heat storage effects** play a significant role;
- The architecture is **complex**, such as **multi-zone** or **multi-story buildings**;
- **Large glazed surfaces or dynamic solar exposure** significantly influence thermal performance;
- **Thermal bridges, non-uniform solar radiation, or advanced material interactions** must be accurately accounted for.

In these contexts, the use of more **comprehensive dynamic simulation tools** is strongly recommended. As building design progresses and more detailed information becomes available, transitioning to advanced modeling platforms ensures **greater accuracy, more reliable predictions**, and the development of an **optimized ventilative cooling strategy**.
By using this tool, users acknowledge that results are **indicative** and should be **validated with detailed simulations** before informing final design decisions or implementation strategies.


## Building Data

Building data
The VC tool performs calculations on a reference thermal and ventilation zone within the building. The selected zone should be carefully chosen to be representative of the buildings characteristics, exposure and typical use.


<div style=" border-left: 4px solid #df1b12; padding: 15px; margin: 20px 0; border-radius: 4px;">
<strong>📝 Note:</strong> If needed, the calculation can be repeated for additional zones within the building to capture variations in usage patterns, construction features, or exposure</div>

Once the reference zone has been defined, the following inputs are required:

### Building Geometry Data - General

| Parameter | Description | 
|-----------|-------------|
|**Building type** | (a value equal to: 'Apartment building', 'Daycare center', 'Detached house', 'Hospital', 'Hotel', 'Office', 'Restaurant', 'School'; required): select the type of building choosing among the listed categories|
|**Ceiling to floor height** | H (m).: input the net room height (internal ceiling to floor height) in m to calculate net room air volume V = H * Af
|**Envelope area** | Ae (m²): Gross envelope area (incl. both opaque and glazed area) which has outside temperature as boundary condition (excl. interior walls, floors and ceilings). This area, multiplied by the average thermal transmittance, is used to estimate the transmission
|**Floor area** | Af (m²): The net floor area of the room to calculate net room air volume V = H * Af and internal gains.
|**Fenestration area** | Ag (m²): Total window area (incl. frame). If more windows are present in the reference room please insert the sum area.
|**Comfort requirements** | (a value equal to: 'category I', 'category II', 'category III'; required): Comfort requirements refer to the comfort categories defined by the EN 16798:1-2019 standard. Recommended input values given for each of the different comfort categories are included in the tool and automatically selected. 
|**Maximum relative humidity accepted** | RHmax (%): enter the max. outdoor relative humidity of outdoor air accepted for ventilative cooling (i.e. 85%). If the outdoor relative humidity of the weather file exceeds this value, direct ventilative cooling cannot provide benefits because the outdoor air is considered too humid.
|**U-value of the opaque envelope** | Uo (W/m²K): Average thermal transmittance of the opaque surfaces (wall, roof, floor) with outdoor boundary conditions. 
|**U-value of the fenestration** | Uw (W/m²K): Thermal transmittance of the window (or average thermal transmittance of windows if the room has more than one window), considering both glazing system and frame. 
|**Construction mass** | Cint (MJ/m3K): select predefined thermal mass of the construction. Heavy = 1.4 MJ/m3K, light = 0.9 MJ/m3K and medium = 1.15 MJ/m3K. NOTE: the tool gives the option to customize this value in the optional input session. In case a value different than .1 is entered for the construction mass in the optional input session, this input is ignored.
|**g value of the glazing system** | g (-): Solar heat gain coefficient of the window glazing system. 
|**Fenestration orientation** | (N, NE, E, SE, S, SW, W, NW): select the orientation of the window among the predefined ones. 
|**Shading control setpoint** | Shd (W/m²): Shading is on if the specific beam plus diffuse solar radiation incident on the window exceeds this setpoint value (generally is between 40 and 150 W/m²). 
|**Shading factor** | Y (-): Parameter indicating the presence of an external shading element and the surface of the window which is shaded by the shading element (i.e. shutter, venetian blinds, roll up blinds..). Y = 1 means all the surface is completely shaded, Y = 0 means that there is no shading element.
|**Time control on** | ton; min 0, max 24. Time control off; toff; min 0, max 24: Parameter indicating the presence of the occupant within the thermal zone.  NOTE	In the tool: if the building is occupied all day long (24/24) enter zero as time control on and 24 as time control off. 
|**Minimum required ventilation rates**(*Optional inputs*) | ventilation rates required to maintain an acceptable indoor air quality. If not specified this valued is calculated according to IEQ standard (EN 16798:1-2019) design requirements for indoor air quality. The value can be input in any of the following unit of measure: '1/h', 'kg/s-m²', 'm³/h', 'm³/s', 'l/s-m²'. Please select the unit of measure corresponding to the input value from the list. Please note that to select a unit of measure, it is necessary to first deselect any other active selections.
|**Lighting power density** (*Optional inputs*) | Qel_lgt (W/m²): The maximum lighting level per floor area. Internal gains due to lighting are calculated by multiplying the lighting power by the pre-defined load profiles. 
|**Electric equipment power density** (*Optional inputs*) | Qel_equip (W/m²): The maximum electric equipment level per floor area. Internal gains due to electric equipment are calculated by multiplying the electric equipment power density by the pre-defined load profiles. 
|**Occupancy density** (*Optional inputs*) | Qpeople (people/m2): The maximum number of person per floor area. Internal gains due to people are calculated by multiplying the maximum number of person by the pre-defined occupancy profiles. 
|**Internal thermal capacity** (*Optional inputs*) | Cint (J/K): The (lumped) internal thermal capacity of the entire thermal zone corresponds to the weighted sum of the thermal masses due to building envelope, air and furniture. The specific heat capacity of air and furniture shall be k_(m;int) = 10 000 J/(m2 K). 


* Optional inputs:  
A set of optional inputs can be entered to customize default input values. If any of these inputs has a value different than -1, the corresponding default input is ignored.

### Climate data files
To perform the calculation, you must upload a file containing hourly metereological data for a full year.
Accepted file formats: .csv or .epw
Possible data sources:

- [Repository of Building Simulation Climate Data](https://climate.onebuilding.org/)
- [Joint Research Centre, “TMY generator,” 2022](https://joint-research-centre.ec.europa.eu/pvgis-online-tool/pvgis-tools/tmy-generator_en)

The calculation should be also performed with future weather datasets if available to ensure resilience of ventilative cooling strategies over time.

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

Concept and methodology:

- **Annamaria Belleri** email: annamaria.belleri@eurac.edu
- **Sana Fatima Ali** email: sanafatima.ali@eurac.edu

web tool and python code:

- **Olga Somova** email: olga.somova@eurac.edu

Please feel free to contact us with any potential suggestions, avenues for collaboration, etc. 

## Citation

Please cite us if you use this software: 
**Fossati V., Belleri A., Van Djik D., A methodology for evaluating the ventilative cooling potential in early-stage building design, AIVC 2023 conference proceedings, Copenhagen, October 2023**



