FROM mcr.microsoft.com/devcontainers/base:ubuntu

RUN apt-get update
RUN apt-get install -y curl git wget unzip libgconf-2-4 gdb libstdc++6 libglu1-mesa fonts-droid-fallback lib32stdc++6 python3 cmake ninja-build aptitude
RUN apt-get install -y clang pkg-config
RUN apt-get install -y libgtk-3-dev
RUN apt-get clean

# download Flutter SDK from Flutter Github repo
RUN git clone https://github.com/flutter/flutter.git /usr/local/flutter

# Set flutter environment path
ENV PATH="/usr/local/flutter/bin:/usr/local/flutter/bin/cache/dart-sdk/bin:${PATH}"

# Run flutter doctor
RUN flutter doctor

# Enable flutter web
RUN flutter channel master
RUN flutter upgrade
RUN flutter config --enable-web

# Copy files to container and build
# RUN mkdir /app/
# COPY . /app/
# WORKDIR /app/
# RUN flutter build web

RUN git config --global --add safe.directory /usr/local/flutter
RUN sudo chown -R vscode /usr/local/flutter/

# Record the exposed port
# EXPOSE 5000

# make server startup script executable and start the web server
# RUN ["chmod", "+x", "/app/server/server.sh"]

# ENTRYPOINT [ "/app/server/server.sh"]

# # Prerequisites
# RUN apt update && apt install -y curl git unzip xz-utils zip libglu1-mesa openjdk-8-jdk wget

# USER vscode
# WORKDIR /home/vscode

# # Prepare Android directories and system variables
# RUN mkdir -p Android/sdk
# ENV ANDROID_SDK_ROOT /home/developer/Android/sdk
# RUN mkdir -p .android && touch .android/repositories.cfg

# # Set up Android SDK
# RUN wget -O sdk-tools.zip https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip
# RUN unzip sdk-tools.zip && rm sdk-tools.zip
# RUN mv tools Android/sdk/tools
# RUN cd Android/sdk/tools/bin && yes | ./sdkmanager --licenses
# RUN cd Android/sdk/tools/bin && ./sdkmanager "build-tools;29.0.2" "patcher;v4" "platform-tools" "platforms;android-29" "sources;android-29"
# ENV PATH "$PATH:/home/vscode/Android/sdk/platform-tools"

# # Download Flutter SDK
# RUN git clone https://github.com/flutter/flutter.git
# ENV PATH "$PATH:/home/vscode/flutter/bin"

# # Run basic check to download Dark SDK
# RUN flutter doctor

# FROM dart

# RUN apt-get update
# RUN apt-get install -y curl git unzip xz-utils zip libglu1-mesa

# RUN apt-get clean

# RUN git clone https://github.com/flutter/flutter.git -b stable --depth 1 /flutter
# ENV PATH="/flutter/bin:$PATH"
# RUN flutter doctor