# flutter-atlanta-codespace-demo

## simplest codebase

* https://codelabs.developers.google.com/codelabs/flutter-codelab-first#2

## to demonstrate key elements

### Purpose

* The purpose of GitHub Codespaces is to provide a cloud-based development environment that simplifies and accelerates the software development process.

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
   * integrations nicely with Github Actions for CI/CD when the time cam later
 
### Challenges

1. device emulation
   2. hacky solution here using a Tailscale mesh network: https://www.reddit.com/r/androiddev/comments/11fzzjk/how_android_devs_can_use_github_codespaces/
   3. adb port forwarding: https://stackoverflow.com/questions/13278429/how-to-set-up-adb-for-remote-machine-development-and-local-device-deployment
   4. adb "-a" all ports
5. Firebase emulation can be tricky, but works

 
### Demo

* Simple Flutter App
* Challenges:
   * No emulator support - but full web and really easily
 
### Questions?

  
       
