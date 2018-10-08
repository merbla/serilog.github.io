build-docs:
	rm -rf docfx_project/src/
	rm -rf docfx_project/docs/
	git clone --depth 1  --branch master git@github.com:serilog/serilog.git docfx_project/src/serilog
	git clone --depth 1  --branch master git@github.com:serilog/serilog-sinks-console.git docfx_project/src/serilog-sinks-console
	git clone --depth 1  --branch master git@github.com:serilog/serilog-aspnetcore.git docfx_project/src/serilog-aspnetcore
	
	docfx metadata docfx_project/docfx.json
	docfx build docfx_project/docfx.json

serve-docs:
	docfx docfx_project/docfx.json --serve