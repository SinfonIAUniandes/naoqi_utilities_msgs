# naoqi_utilities_msgs

This package contains the custom ROS 2 message and service definitions used by the `naoqi_speech`, `naoqi_navigation`, `naoqi_manipulation`, and `naoqi_perception` utility packages. It provides the common interface for interacting with high-level robot functionalities.

## Overview

This package does not contain any executable nodes. Its primary purpose is to define the data structures (messages and services) for communication between other ROS 2 nodes and the suite of `naoqi` utility packages. These utilities provide simplified access to the robot's capabilities.

The packages that depend on these messages are:
*   `naoqi_speech`: Manages speech synthesis, recognition, and audio playback.
*   `naoqi_navigation`: Handles robot motion, posture, and exploration tasks.
*   `naoqi_perception`: Controls tracking and perception-related functionalities.
*   `naoqi_manipulation`: Manages the robots joints and security.

## Defined Interfaces

Below is a list of the services and messages defined in this package.

### Services

#### Speech and Audio
*   `ConfigureSpeech.srv`: Configures the speech recognition vocabulary and language.
*   `GetVolume.srv`: Gets the current audio volume.
*   `PlaySound.srv`: Plays a sound file from the robot.
*   `PlayWebStream.srv`: Plays an audio stream from a URL.
*   `Say.srv`: Makes the robot speak a given text.
*   `SetVolume.srv`: Sets the audio volume.

#### Motion and Posture
*   `GoToPosture.srv`: Commands the robot to adopt a predefined posture (e.g., "stand", "sit").
*   `SetBreathing.srv`: Enables or disables the breathing animation for a joint group.
*   `SetMoveArmsEnabled.srv`: Enables or disables arm movement during navigation.
*   `SetOpenCloseHand.srv`: Opens or closes the robot's hand.
*   `SetStiffnesses.srv`: Sets the stiffness for specified joints.
*   `PointAt.srv`: Makes the robot point its arm at a specific 3D point.

#### Navigation and Tracking
*   `Explore.srv`: Commands the robot to explore its surroundings within a given radius.
*   `MoveTo.srv`: Moves the robot to a target pose in its local frame.
*   `SetSecurityDistance.srv`: Sets the safety distance for obstacle avoidance.

#### Tracking
*   `SetTrackerMode.srv`: Starts or stops tracking modes (e.g., head tracking).

### Messages

*   `WordConfidence.msg`: Represents a recognized word and its associated confidence score.

## Usage Example

You typically won't use this package directly. Instead, you will interact with the services and topics provided by the higher-level utility packages.
