---
title: BrickLLM App 
---

# BrickLLM App

!!! abstract "Abstract"

    BrickLLM represents a novel Python library that bridges the gap between natural language building descriptions and standardized semantic representations in smart building infrastructure. By harnessing the power of Large Language Models, BrickLLM automatically transforms unstructured textual descriptions of building systems into RDF files that adhere to the BrickSchema ontology standard. This automated conversion process eliminates the traditional manual effort required to create machine-readable building metadata, enabling seamless integration with building automation systems, energy management platforms, and IoT infrastructures. The library's natural language processing capabilities allow domain experts to describe building components, relationships, and hierarchies in plain language, while ensuring the output maintains semantic consistency and interoperability standards required for modern smart building applications. BrickLLM thus democratizes access to structured building data representation, accelerating the deployment of intelligent building management solutions across diverse architectural environments.

## Introduction

BrickLLM is a Python library designed to generate RDF (Resource Description Framework) files that comply with the BrickSchema ontology using Large Language Models (LLMs). The library leverages advanced natural language processing capabilities to interpret building descriptions and convert them into structured, machine-readable formats suitable for building automation and energy management systems

# Main Features

- **Multi-provider LLM Support**: Supports multiple LLM providers, including OpenAI, Anthropic, and Fireworks AI.
- **Natural Language to RDF Conversion**: Converts natural language descriptions of buildings and facilities into BrickSchema-compliant RDF.
- **Customizable Graph Execution**: Utilizes LangGraph for flexible and customizable graph-based execution of the conversion process.
- **Ontology Integration**: Incorporates the BrickSchema ontology for accurate and standardized representation of building systems.
- **Extensible Architecture**: Designed with modularity in mind, allowing for easy extension and customization.

## User Guide

1) **User Input**: The process begins with a natural language description of a building or facility provided by the user.
2) **LLM Processing**: The description is processed by a selected LLM to extract relevant building components and their relationships.
3) **Graph Execution**: The extracted information is passed through a series of nodes in a graph structure:
4) **Element Identification**: Identifies building elements from the user prompt.
5) **Hierarchy Construction**: Builds a hierarchical structure of the identified elements.
6) **Relationship Mapping**: Determines relationships between the components.
7) **TTL Generation**: Converts the structured data into Turtle (TTL) format, which is a serialization of RDF.
8) **Output Generation**: The final output is a BrickSchema-compliant RDF file in TTL format, representing the building's structure and systems.