base_dir := $(subst /docker,,$(CURDIR))

repl:
	docker run -it --rm julia
julia_script:
	docker run -it --rm -v $(base_dir):/usr/myapp -w /usr/myapp julia julia ${arg}.jl