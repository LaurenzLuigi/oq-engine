event based risk with PMF
=========================

=============================================== ========================
tstation.gem.lan:/mnt/ssd/oqdata/calc_1803.hdf5 Fri Jul  7 07:32:33 2017
checksum32                                      316,426,340             
engine_version                                  2.6.0-git50066b9        
=============================================== ========================

num_sites = 1, num_imts = 1

Parameters
----------
=============================== ==================
calculation_mode                'event_based_risk'
number_of_logic_tree_samples    0                 
maximum_distance                {'default': 200.0}
investigation_time              1000.0            
ses_per_logic_tree_path         1                 
truncation_level                3.0               
rupture_mesh_spacing            2.0               
complex_fault_mesh_spacing      2.0               
width_of_mfd_bin                0.1               
area_source_discretization      10.0              
ground_motion_correlation_model None              
random_seed                     42                
master_seed                     0                 
avg_losses                      True              
=============================== ==================

Input files
-----------
======================== ============================================================
Name                     File                                                        
======================== ============================================================
exposure                 `exposure_model.xml <exposure_model.xml>`_                  
gsim_logic_tree          `gsim_logic_tree.xml <gsim_logic_tree.xml>`_                
job_ini                  `job.ini <job.ini>`_                                        
source                   `source_model.xml <source_model.xml>`_                      
source_model_logic_tree  `source_model_logic_tree.xml <source_model_logic_tree.xml>`_
structural_vulnerability `vulnerability_model.xml <vulnerability_model.xml>`_        
======================== ============================================================

Composite source model
----------------------
========= ====== ====================================== =============== ================
smlt_path weight source_model_file                      gsim_logic_tree num_realizations
========= ====== ====================================== =============== ================
b1        1.000  `source_model.xml <source_model.xml>`_ trivial(1)      1/1             
========= ====== ====================================== =============== ================

Required parameters per tectonic region type
--------------------------------------------
====== =================== ========= ========== ==========
grp_id gsims               distances siteparams ruptparams
====== =================== ========= ========== ==========
0      BooreAtkinson2008() rjb       vs30       mag rake  
====== =================== ========= ========== ==========

Realizations per (TRT, GSIM)
----------------------------

::

  <RlzsAssoc(size=1, rlzs=1)
  0,BooreAtkinson2008(): ['<0,b1~b1,w=1.0>']>

Number of ruptures per tectonic region type
-------------------------------------------
================ ====== ==================== =========== ============ ============
source_model     grp_id trt                  num_sources eff_ruptures tot_ruptures
================ ====== ==================== =========== ============ ============
source_model.xml 0      Active Shallow Crust 1           482          482         
================ ====== ==================== =========== ============ ============

Informational data
------------------
============================ ===========================================================================
compute_ruptures.received    tot 28.83 KB, max_per_task 13.05 KB                                        
compute_ruptures.sent        sources 7.78 KB, src_filter 2 KB, param 1.89 KB, monitor 960 B, gsims 306 B
hazard.input_weight          482.0                                                                      
hazard.n_imts                1                                                                          
hazard.n_levels              8                                                                          
hazard.n_realizations        1                                                                          
hazard.n_sites               1                                                                          
hazard.n_sources             1                                                                          
hazard.output_weight         8.0                                                                        
hostname                     tstation.gem.lan                                                           
require_epsilons             False                                                                      
============================ ===========================================================================

Estimated data transfer for the avglosses
-----------------------------------------
1 asset(s) x 1 realization(s) x 1 loss type(s) x 1 losses x 8 bytes x 50 tasks = 400 B

Exposure model
--------------
=============== ========
#assets         1       
#taxonomies     1       
deductibile     absolute
insurance_limit absolute
=============== ========

======== ===== ====== === === ========= ==========
taxonomy mean  stddev min max num_sites num_assets
tax1     1.000 NaN    1   1   1         1         
======== ===== ====== === === ========= ==========

Slowest sources
---------------
====== ========= ================= ============ ========= ========= =========
grp_id source_id source_class      num_ruptures calc_time num_sites num_split
====== ========= ================= ============ ========= ========= =========
0      1         SimpleFaultSource 482          0.0       1         0        
====== ========= ================= ============ ========= ========= =========

Computation times by source typology
------------------------------------
================= ========= ======
source_class      calc_time counts
================= ========= ======
SimpleFaultSource 0.0       1     
================= ========= ======

Information about the tasks
---------------------------
================== ===== ====== ===== ===== =========
operation-duration mean  stddev min   max   num_tasks
compute_ruptures   0.060 0.017  0.043 0.077 3        
================== ===== ====== ===== ===== =========

Slowest operations
------------------
============================== ========= ========= ======
operation                      time_sec  memory_mb counts
============================== ========= ========= ======
total compute_ruptures         0.179     0.0       3     
managing sources               0.058     0.0       1     
saving ruptures                0.012     0.0       3     
filtering ruptures             0.007     0.0       31    
store source_info              0.006     0.0       1     
reading exposure               0.006     0.0       1     
reading composite source model 0.004     0.0       1     
setting event years            0.002     0.0       1     
prefiltering source model      0.002     0.0       1     
reading site collection        6.676E-06 0.0       1     
============================== ========= ========= ======