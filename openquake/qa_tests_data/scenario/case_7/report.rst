Scenario QA Test with No Spatial Correlation
============================================

============================================== ========================
gem-tstation:/home/michele/ssd/calc_60056.hdf5 Tue Oct 11 06:55:57 2016
engine_version                                 2.1.0-git4e31fdd        
hazardlib_version                              0.21.0-gitab31f47       
============================================== ========================

num_sites = 2, sitecol = 785 B

Parameters
----------
============================ =================
calculation_mode             'scenario'       
number_of_logic_tree_samples 0                
maximum_distance             {u'default': 200}
investigation_time           None             
ses_per_logic_tree_path      1                
truncation_level             None             
rupture_mesh_spacing         1.0              
complex_fault_mesh_spacing   1.0              
width_of_mfd_bin             None             
area_source_discretization   None             
random_seed                  3                
master_seed                  0                
============================ =================

Input files
-----------
============= ========================================
Name          File                                    
============= ========================================
job_ini       `job.ini <job.ini>`_                    
rupture_model `rupture_model.xml <rupture_model.xml>`_
============= ========================================

Realizations per (TRT, GSIM)
----------------------------

::

  <RlzsAssoc(size=1, rlzs=1)
  0,BooreAtkinson2008(): ['<0,b_1~b1,w=1.0>']>

Slowest operations
------------------
======================= ========= ========= ======
operation               time_sec  memory_mb counts
======================= ========= ========= ======
filtering sites         0.008     0.0       1     
reading site collection 3.695E-05 0.0       1     
======================= ========= ========= ======