dotnet = docker run -it --rm -v ~/.cache/nuget:/root/.nuget -v "$$(pwd)":"$$(pwd)" -w "$$(pwd)" mcr.microsoft.com/dotnet/sdk:6.0 dotnet

# The executable ends up at `output/t2md`.
build:
	$(dotnet) restore
	$(dotnet) publish T2MDCli/T2MDCli.csproj -c Release -r linux-x64 --self-contained true -o output/

test:
	$(dotnet) test T2MDCliTests/
