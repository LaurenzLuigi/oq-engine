Classical PSHA using Area Source
================================

=============================================== ========================
tstation.gem.lan:/mnt/ssd/oqdata/calc_7648.hdf5 Wed Apr 26 15:56:38 2017
engine_version                                  2.4.0-git9336bd0        
hazardlib_version                               0.24.0-gita895d4c       
=============================================== ========================

num_sites = 6, sitecol = 1.05 KB

Parameters
----------
=============================== ==================
calculation_mode                'classical'       
number_of_logic_tree_samples    0                 
maximum_distance                {'default': 200.0}
investigation_time              50.0              
ses_per_logic_tree_path         1                 
truncation_level                3.0               
rupture_mesh_spacing            2.0               
complex_fault_mesh_spacing      2.0               
width_of_mfd_bin                0.2               
area_source_discretization      5.0               
ground_motion_correlation_model None              
random_seed                     23                
master_seed                     0                 
=============================== ==================

Input files
-----------
======================= ============================================================
Name                    File                                                        
======================= ============================================================
gsim_logic_tree         `gmpe_logic_tree.xml <gmpe_logic_tree.xml>`_                
job_ini                 `job.ini <job.ini>`_                                        
source                  `source_model.xml <source_model.xml>`_                      
source_model_logic_tree `source_model_logic_tree.xml <source_model_logic_tree.xml>`_
======================= ============================================================

Composite source model
----------------------
========= ====== ====================================== =============== ================
smlt_path weight source_model_file                      gsim_logic_tree num_realizations
========= ====== ====================================== =============== ================
b1        1.000  `source_model.xml <source_model.xml>`_ simple(2)       2/2             
========= ====== ====================================== =============== ================

Required parameters per tectonic region type
--------------------------------------------
====== ===================================== =========== ======================= =================
grp_id gsims                                 distances   siteparams              ruptparams       
====== ===================================== =========== ======================= =================
0      BooreAtkinson2008() ChiouYoungs2008() rjb rx rrup vs30 vs30measured z1pt0 dip ztor rake mag
====== ===================================== =========== ======================= =================

Realizations per (TRT, GSIM)
----------------------------

::

  <RlzsAssoc(size=2, rlzs=2)
  0,BooreAtkinson2008(): ['<0,b1~b1,w=0.6>']
  0,ChiouYoungs2008(): ['<1,b1~b2,w=0.4>']>

Number of ruptures per tectonic region type
-------------------------------------------
================ ====== ==================== =========== ============ ============
source_model     grp_id trt                  num_sources eff_ruptures tot_ruptures
================ ====== ==================== =========== ============ ============
source_model.xml 0      Active Shallow Crust 1           1640         1,640       
================ ====== ==================== =========== ============ ============

Informational data
------------------
============================== =========================================================================
count_eff_ruptures.received    tot 1.62 KB, max_per_task 1.62 KB                                        
count_eff_ruptures.sent        sources 8.36 KB, monitor 1.4 KB, srcfilter 824 B, gsims 179 B, param 65 B
hazard.input_weight            164                                                                      
hazard.n_imts                  3 B                                                                      
hazard.n_levels                57 B                                                                     
hazard.n_realizations          2 B                                                                      
hazard.n_sites                 6 B                                                                      
hazard.n_sources               1 B                                                                      
hazard.output_weight           684                                                                      
hostname                       tstation.gem.lan                                                         
require_epsilons               0 B                                                                      
============================== =========================================================================

Slowest sources
---------------
====== ========= ============ ============ ========= ========= =========
grp_id source_id source_class num_ruptures calc_time num_sites num_split
====== ========= ============ ============ ========= ========= =========
0      1         AreaSource   1,640        0.0       6         0        
====== ========= ============ ============ ========= ========= =========

Computation times by source typology
------------------------------------
============ ========= ======
source_class calc_time counts
============ ========= ======
AreaSource   0.0       1     
============ ========= ======

Information about the tasks
---------------------------
================== ===== ====== ===== ===== =========
operation-duration mean  stddev min   max   num_tasks
count_eff_ruptures 0.857 NaN    0.857 0.857 1        
================== ===== ====== ===== ===== =========

Slowest operations
------------------
================================ ========= ========= ======
operation                        time_sec  memory_mb counts
================================ ========= ========= ======
total count_eff_ruptures         0.857     0.0       1     
reading composite source model   0.045     0.0       1     
reading site collection          0.002     0.0       1     
store source_info                0.001     0.0       1     
filtering composite source model 8.154E-04 0.0       1     
managing sources                 1.166E-04 0.0       1     
saving probability maps          5.293E-05 0.0       1     
aggregate curves                 3.266E-05 0.0       1     
================================ ========= ========= ======