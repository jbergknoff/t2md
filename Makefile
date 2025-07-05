dotnet = docker run -it --rm -v ~/.cache/nuget:/root/.nuget -v "$$(pwd)":"$$(pwd)" -w "$$(pwd)" mcr.microsoft.com/dotnet/sdk:6.0 dotnet

build:
	$(dotnet) restore
	$(dotnet) build --no-restore

test:
	$(dotnet) test T2MDCliTests/
