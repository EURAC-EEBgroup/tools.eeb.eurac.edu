---
title: ENCOME API 
---

# ENCOME API

!!! abstract "Abstract"

    ENCOME - API is the backbone of the Encome tool. It is a comprehensive digital API that provides building professionals with advanced computational tools for energy performance simulation. The platform integrates secure user management, material databases, weather data integration, and compliance with international standards (ISO 52016, ISO52010, UNI TS 11300) to enable  building simulations and energy conservation measure evaluations. Through its modular architecture and user-friendly interface, the API transforms complex building science calculations into accessible operations that support evidence-based decision-making for sustainable building design and management.

# Introduction 

# Introduction

The ENCOME API represents a comprehensive digital infrastructure designed to revolutionize building performance analysis and energy management through advanced computational capabilities. Built as a modular, secure platform, the API provides users with a unified interface to manage complex building data, conduct energy simulations, and optimize sustainable design strategies across their property portfolios.

At its core, the API architecture prioritizes user-centric design and data security, ensuring that each user maintains complete control over their building assets while benefiting from powerful analytical tools. The platform seamlessly integrates multiple specialized functionalities, from fundamental material properties and weather data integration to advanced energy modeling compliant with international standards such as ISO 52016, IS52010 and UNI TS 11300.

The API's strength lies in its comprehensive approach to building performance evaluation, offering users the ability to model every aspect of their structures—from individual component characteristics to complex energy conservation measures and renewable energy installations. By connecting real-time meteorological data through pvGIS integration with detailed building modeling capabilities, the platform enables precise environmental analysis tailored to specific geographic locations and climate conditions.

This technological foundation supports the growing demand for evidence-based building optimization, providing architects, engineers, and facility managers with the computational tools necessary to make informed decisions about energy efficiency, sustainability measures, and economic performance. Through its structured endpoint system, the API transforms complex building science calculations into accessible, user-friendly operations that drive measurable improvements in building performance and environmental impact.

# User Guide

The API is structured with several endpoints, each designed to address specific functionalities within the platform:

- User Authentication: Each user is assigned a unique identifier and an associated list of buildings under their management. A user can own and access multiple buildings, but cannot view or interact with buildings belonging to other users, ensuring data privacy and security across the platform.
- Material Management: In this section, users are empowered to create custom materials, which can later be associated with both opaque and transparent building components. Additionally, users can browse the catalog of existing materials, including those provided by the Materials 2050 database, facilitating the use of advanced or standardized materials in their projects.
- Weather Data Integration: By providing basic input such as latitude and longitude, users can retrieve detailed meteorological data. This is enabled through a direct connection to the pvGIS API, allowing for precise environmental analysis and simulation based on the local climate conditions of each building site.
- Project and Building Information: Users have access to general data regarding their buildings, including essential project details. This centralized data repository enhances project management and ensures all information relevant to the user's assets is readily available.
- Component Management: The platform allows users to create or view various building components—both opaque and transparent, horizontal and vertical. This flexibility ensures that every architectural or technical detail of the building can be accurately modeled and managed within the system.
- ISO 52016 Simulation: Each endpoint in this section represents a specific calculation required to simulate building performance according to the ISO 52016 standard. These simulations are essential for evaluating the energy balance and heating or cooling demands of the building across different scenarios.
- UNI TS 11300 Calculation: In this area, users can obtain the value of primary energy consumption based on the simplified Italian version of ISO 11300. This functionality supports compliance with national and international energy standards and regulatory requirements.
- ECM Simulation: The platform enables users to simulate various Energy Conservation Measures (ECMs) for their buildings and to generate both energy and economic performance results. This feature is fundamental for identifying the most effective strategies for reducing energy consumption and operational costs.
- PV Simulation: It is possible to simulate the installation and performance of photovoltaic systems, either by designing new arrays to associate with existing buildings or by optimizing current installations. This function supports the integration of renewable energy technologies and maximizes the energy efficiency of the property portfolio.

This API serves as the computational engine behind the Cerplan platform, orchestrating complex simulations, data management, and optimization processes required for advanced building analysis and energy planning. The expanded capabilities ensure that users benefit from a robust, secure, and versatile tool for managing every aspect of building performance, from material selection to renewable energy integration.
