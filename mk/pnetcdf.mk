OBJECTS = wam_mpi_module.o wam_file_module.o wam_general_module.o wam_timopt_module.o \
wam_model_module.o wam_source_module.o wam_fre_dir_module.o wam_interface_module.o \
wam_grid_module.o wam_current_module.o wam_special_module.o wam_nest_module.o \
wam_ice_module.o wam_output_module.o wam_print_module.o wam_tables_module.o \
wam_output_set_up_module.o wam_mpi_comp_module.o wam_netcdf_module.o wam_coordinate_module.o \
read_current_input.o read_ice_input.o wam_topo_module.o read_topo_input.o jafu.o \
make_netcdf.o wam_flux_module.o wam_output_parameter_module.o wam_jonswap_module.o \
wam_radiation_module.o wam_swell_module.o wam_propagation_module.o

pnetcdf:
	mpiifort $(OBJECTS) -o pnetcdf -L/sw/rhel6-x64/netcdf/netcdf_fortran-4.4.2-intel14/lib -lnetcdff -Wl,-rpath,/sw/rhel6-x64/netcdf/netcdf_fortran-4.4.2-intel14/lib -L/sw/rhel6-x64/netcdf/netcdf_c-4.3.2-gcc48/lib -Wl,-rpath,/sw/rhel6-x64/netcdf/netcdf_c-4.3.2-gcc48/lib -L/sw/rhel6-x64/hdf5/hdf5-1.8.14-threadsafe-gcc48/lib -Wl,-rpath,/sw/rhel6-x64/hdf5/hdf5-1.8.14-threadsafe-gcc48/lib -L/sw/rhel6-x64/sys/libaec-0.3.2-gcc48/lib -Wl,-rpath,/sw/rhel6-x64/sys/libaec-0.3.2-gcc48/lib -lnetcdf -lhdf5_hl -lhdf5 -lsz -lcurl -lz -lnetcdf
