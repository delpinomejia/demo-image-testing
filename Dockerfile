FROM mcr.microsoft.com/dotnet/sdk:5.0

# Install unzip
RUN apt-get update && apt-get install -y zip && apt-get install -y unzip

# Install AWS CLI
RUN apt-get install -y awscli

# Copy scripts to /tmp folder
COPY scripts/* /tmp/

# Make scripts executable
RUN chmod 755 /tmp/*

# Install .NET 3.1 and dependencies
RUN bash -c "source /tmp/dotnet-install.sh -c 3.1"
RUN bash -c "/tmp/tools-install.sh"

# Set PATH
ENV PATH="/root/.dotnet:${PATH}"
ENV PATH="/root/.dotnet/tools:${PATH}"

# Verify correct PATH
RUN echo $PATH

#ENTRYPOINT ["dotnet", "dotnetapp.dll"]
