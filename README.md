# flutter-atlanta-codespace-demo

## simplest codebase

* https://codelabs.developers.google.com/codelabs/flutter-codelab-first#2

## to demonstrate key elements

### not a flutter talk

* Delivering Value
* With Some Code Along the Way...
* In Dart
* ... and Flutter

### my key responsibilities

As a Contributor...
Delivery of value to customers

As a CTO...
Delivery of value to customers

As a Founder...
Delivery of value to investors 

The first is pretty universally required and absolutely required to accomplish the second in a product company.

### Measuring Value Delivery

DORA is the largest and longest running research program of its kind, that seeks to understand the capabilities that drive software delivery and operations performance. DORA helps teams apply those capabilities, leading to better organizational performance.

https://dora.dev/

* Value Flow, Value Stream, etc. - https://dora.dev/devops-capabilities/process/work-visibility-in-value-stream/ - how does dev work flow all the way to value for the customer?
* Track 4 Key Metrics called "DORA Metrics"

### What are Dora Metrics?

* 2 Categories, Each with Two Metrics
* Throughput
  * CLT - Change Lead Time - measures the time it takes for a code commit or change to be successfully deployed to production. It reflects the efficiency of your delivery pipeline
  * DF - Deployment Frequency - measures how often application changes are deployed to production. Higher deployment frequency indicates a more agile and responsive delivery process
* Stability
  * CFP - Change Fail Percentage - measures the percentage of deployments that cause failures in production, ---requiring hotfixes or rollbacks---. A lower change failure rate indicates a more reliable delivery process. This is not bugs! It's failures that require hotfixes and rollbacks.
  * FDRT - Failed Deployment Recovery Time - measures the time it takes to recover from a failed deployment. A lower recovery time indicates a more resilient and responsive system.
* Optimizing CLT, DF & FDRT and starts with Reliable, Repeatable, Adapatable Development Environments

### Questions about DORA?

- few orgs are perfect - if you're able to have very low FDRT you may allow higher CFP, you all in the mobile world with device updates and lead times for app stores may have a fixed lower bound for FDRT so you have to improve CFP

### development ergonomics or developer experience (DX) is key

the second or third step, and often the most repeated, in the value flow is: Write Code
key components: (this isn't all of them, but it's the ones relevant today)

1. ability to quickly onboard new devs
2. ability to quickly change tasks
3. ability to keep work in small batches
4. ability to immediately return to a previous versions --dev-- environment not just production environment

Which means: having a dev environment tightly coupled with your change control

### So.... Github Codespaces

* The purpose of GitHub Codespaces is to provide a cloud-based development environment that simplifies and accelerates the software development process.

* by having a dev environment tightly coupled with your change control

* cant just get code back to a previous state, may need to get whole environment back

### high level features

The most important features of GitHub Codespaces include:

1. **Instant Development Environments**
    - Codespaces provide ready-to-use development environments, reducing the time spent on setup. This is especially useful for new team members or contributors.
3. **Seamless GitHub Integration**
    - Codespaces integrates directly with GitHub repositories, making it easy to spin up environments directly from your codebase. You can open a repository in a codespace with a single click.
4. **Customizable Environments**
    - Developers can customize their codespaces using configuration files such as `.devcontainer.json` to specify the exact tools, extensions, and settings needed for their projects. This ensures consistency across different development environments.
6. **Scalability and Performance Options**
    - You can choose from different machine types (varying in CPU, memory, and storage) to suit the needs of your project, ensuring you have the necessary resources without over-provisioning.
8. **Access from Anywhere**
    - Codespaces are cloud-based, allowing you to access your development environment from any device with an internet connection. This flexibility supports remote work and collaboration.
10. **Support for Visual Studio Code**
    - Codespaces supports Visual Studio Code, both as a desktop application and in the browser. This provides a consistent and powerful coding experience with all the features and extensions available in VS Code.
12. **Prebuilt Container Images**
    - Codespaces can use prebuilt container images to speed up the start time of development environments. These images can include preinstalled dependencies and tools, further reducing setup time.
13. **Dotfiles Integration**
    - You can use your dotfiles repository to personalize your codespace with your preferred configurations and settings, ensuring a familiar and comfortable development environment.
14. **Live Share for Collaboration**
    - Codespaces support Visual Studio Live Share, allowing developers to collaborate in real-time within the same environment. This is particularly useful for pair programming and code reviews.
15. **Security and Isolation**
    - Each codespace runs in a secure, isolated environment, reducing the risk of security issues and ensuring that development environments do not interfere with each other.

### Setup

```
{
    "build": {
      "dockerfile": "Dockerfile"
    },
    "forwardPorts": [3000],
    "name": "Flutter",
    "customizations": {
      "vscode": {
        "extensions": [
          "Dart-Code.dart-code",
          "Dart-Code.flutter"
        ]
      }
    }
  }
```

### Advanced Feature Support

* Also Supports
    * Established Spec https://containers.dev/implementors/spec/
    * Docker Compose File
      * multiple images
    * Startup Scripts (shell)
    * Common Runtimes
      * https://github.com/devcontainers/images
      * or Roll your Own via a Dockerfile
    * Plugins/Features
      * If using an image above you can add:
        * Docker-in-Docker
        * go
        * npm/node
        * ruby
        * python
        * terraform
        * NVIDIA Cuda
        * more
        * https://github.com/devcontainers/features/

### Collaboration
* shared secrets - repo & org level
* instantly create environment from a branch
* share public URL with obfuscated URL

### Scaling

* 2 core, 8gb ram, 32gb storage up to 32 core - billed on cores
* We spend approximately $50.00/month per dev
* GPU supported in some plan types and with request

### Real World Examples

* We wanted containerize 6 apps in our organization and move to K8S if needed, with Docker swarm as an initial deployment target
* We chose Github Codespaces as the first target because it:
   * simplified development and onboarding
   * made dev environment reproducible
   * forced containerization of dev, while still allowing legacy deployment processes
   * uses containerization while Docker compose deployments document service interactions, ports, etc.
   * integrations nicely with Github Actions for CI/CD when the time came later
* Not just a better dev environment for us, but an effective step along the path to more robust integration and deployment processes.

### Demo

* Simple Flutter App
 
### Challenges

1. device emulation
   * hacky solution here using a Tailscale mesh network: https://www.reddit.com/r/androiddev/comments/11fzzjk/how_android_devs_can_use_github_codespaces/
   * adb port forwarding: https://stackoverflow.com/questions/13278429/how-to-set-up-adb-for-remote-machine-development-and-local-device-deployment
   * adb "-a" all ports
5. Firebase emulation can be tricky, but works, GIYF
 
### Questions?

------------------------------------------------------------------------------------------------

R questions:




  
       
