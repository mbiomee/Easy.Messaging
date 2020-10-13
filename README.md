# Easy.Messaging library
[![SonarCloud](https://sonarcloud.io/images/project_badges/sonarcloud-white.svg)](https://sonarcloud.io/dashboard?id=easy_messaging)


![Nuget](https://img.shields.io/nuget/v/Easy.Messaging?style=plastic) [![Bugs](https://sonarcloud.io/api/project_badges/measure?project=easy_messaging&metric=bugs)](https://sonarcloud.io/dashboard?id=easy_messaging) [![Duplicated Lines (%)](https://sonarcloud.io/api/project_badges/measure?project=easy_messaging&metric=duplicated_lines_density)](https://sonarcloud.io/dashboard?id=easy_messaging) [![Maintainability Rating](https://sonarcloud.io/api/project_badges/measure?project=easy_messaging&metric=sqale_rating)](https://sonarcloud.io/dashboard?id=easy_messaging) [![Reliability Rating](https://sonarcloud.io/api/project_badges/measure?project=easy_messaging&metric=reliability_rating)](https://sonarcloud.io/dashboard?id=easy_messaging) [![Security Rating](https://sonarcloud.io/api/project_badges/measure?project=easy_messaging&metric=security_rating)](https://sonarcloud.io/dashboard?id=easy_messaging) 

This library contains helper-classes for working with message brokers . It contains the following items:

- The base-classes for Commands and Events.
- Interfaces that abstract functionality to publish and consume messages using a message-broker. 
- Implementations for the interfaces that use RabbitMQ as message-broker.
- A helper class (_MessageSerializer_) for serializing and deserializing commands and events to and from JSON.

## Installation:
[Installation](https://github.com/mbiomee/Easy.Messaging/wiki/Installation)
## Usage:
* [Implement Command](https://github.com/mbiomee/Easy.Messaging/wiki/Implement-Command)
* [Implement Event](https://github.com/mbiomee/Easy.Messaging/wiki/Implement-Event)
* [Deserialize Message](https://github.com/mbiomee/Easy.Messaging/wiki/Desialize-Message)


