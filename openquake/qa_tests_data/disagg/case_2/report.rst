QA test for disaggregation case_2
=================================

=============================================== ========================
tstation.gem.lan:/mnt/ssd/oqdata/calc_1860.hdf5 Fri Jul  7 07:33:35 2017
checksum32                                      47,295,647              
engine_version                                  2.6.0-git50066b9        
=============================================== ========================

num_sites = 2, num_imts = 1

Parameters
----------
=============================== ==================
calculation_mode                'disaggregation'  
number_of_logic_tree_samples    0                 
maximum_distance                {'default': 200.0}
investigation_time              1.0               
ses_per_logic_tree_path         1                 
truncation_level                3.0               
rupture_mesh_spacing            4.0               
complex_fault_mesh_spacing      4.0               
width_of_mfd_bin                0.1               
area_source_discretization      10.0              
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
source                  `source_model_1.xml <source_model_1.xml>`_                  
source                  `source_model_2.xml <source_model_2.xml>`_                  
source_model_logic_tree `source_model_logic_tree.xml <source_model_logic_tree.xml>`_
======================= ============================================================

Composite source model
----------------------
============== ====== ========================================== =============== ================
smlt_path      weight source_model_file                          gsim_logic_tree num_realizations
============== ====== ========================================== =============== ================
source_model_1 0.500  `source_model_1.xml <source_model_1.xml>`_ simple(2,1)     2/2             
source_model_2 0.500  `source_model_2.xml <source_model_2.xml>`_ simple(2,1)     2/2             
============== ====== ========================================== =============== ================

Required parameters per tectonic region type
--------------------------------------------
====== ===================================== =========== ======================= =================
grp_id gsims                                 distances   siteparams              ruptparams       
====== ===================================== =========== ======================= =================
0      YoungsEtAl1997SSlab()                 rrup        vs30                    hypo_depth mag   
1      BooreAtkinson2008() ChiouYoungs2008() rjb rrup rx vs30 vs30measured z1pt0 dip mag rake ztor
2      BooreAtkinson2008() ChiouYoungs2008() rjb rrup rx vs30 vs30measured z1pt0 dip mag rake ztor
====== ===================================== =========== ======================= =================

Realizations per (TRT, GSIM)
----------------------------

::

  <RlzsAssoc(size=5, rlzs=4)
  0,YoungsEtAl1997SSlab(): ['<0,source_model_1~BooreAtkinson2008_YoungsEtAl1997SSlab,w=0.25>', '<1,source_model_1~ChiouYoungs2008_YoungsEtAl1997SSlab,w=0.25>']
  1,BooreAtkinson2008(): ['<0,source_model_1~BooreAtkinson2008_YoungsEtAl1997SSlab,w=0.25>']
  1,ChiouYoungs2008(): ['<1,source_model_1~ChiouYoungs2008_YoungsEtAl1997SSlab,w=0.25>']
  2,BooreAtkinson2008(): ['<2,source_model_2~BooreAtkinson2008_@,w=0.25>']
  2,ChiouYoungs2008(): ['<3,source_model_2~ChiouYoungs2008_@,w=0.25>']>

Number of ruptures per tectonic region type
-------------------------------------------
================== ====== ==================== =========== ============ ============
source_model       grp_id trt                  num_sources eff_ruptures tot_ruptures
================== ====== ==================== =========== ============ ============
source_model_1.xml 0      Subduction Intraslab 1           1815         1,815       
source_model_1.xml 1      Active Shallow Crust 2           3630         3,630       
source_model_2.xml 2      Active Shallow Crust 1           1420         1,420       
================== ====== ==================== =========== ============ ============

============= =====
#TRT models   3    
#sources      4    
#eff_ruptures 6,865
#tot_ruptures 6,865
#tot_weight   0    
============= =====

Informational data
------------------
============================== ==================================================================================
count_eff_ruptures.received    tot 8.19 KB, max_per_task 635 B                                                   
count_eff_ruptures.sent        sources 17.47 KB, param 10.39 KB, srcfilter 9.73 KB, monitor 4.4 KB, gsims 2.37 KB
hazard.input_weight            1964.5                                                                            
hazard.n_imts                  1                                                                                 
hazard.n_levels                19                                                                                
hazard.n_realizations          4                                                                                 
hazard.n_sites                 2                                                                                 
hazard.n_sources               4                                                                                 
hazard.output_weight           38.0                                                                              
hostname                       tstation.gem.lan                                                                  
require_epsilons               False                                                                             
============================== ==================================================================================

Slowest sources
---------------
====== ========= ================= ============ ========= ========= =========
grp_id source_id source_class      num_ruptures calc_time num_sites num_split
====== ========= ================= ============ ========= ========= =========
2      1         SimpleFaultSource 1,420        0.045     1         15       
1      3         AreaSource        1,815        0.002     1         1        
1      1         AreaSource        1,815        0.001     1         1        
0      2         AreaSource        1,815        0.001     1         1        
====== ========= ================= ============ ========= ========= =========

Computation times by source typology
------------------------------------
================= ========= ======
source_class      calc_time counts
================= ========= ======
AreaSource        0.004     3     
SimpleFaultSource 0.045     1     
================= ========= ======

Information about the tasks
---------------------------
================== ===== ====== ===== ===== =========
operation-duration mean  stddev min   max   num_tasks
count_eff_ruptures 0.004 0.002  0.002 0.008 14       
================== ===== ====== ===== ===== =========

Slowest operations
------------------
============================== ========= ========= ======
operation                      time_sec  memory_mb counts
============================== ========= ========= ======
managing sources               0.124     0.0       1     
reading composite source model 0.061     0.0       1     
total count_eff_ruptures       0.061     0.0       14    
store source_info              0.005     0.0       1     
prefiltering source model      0.004     0.0       1     
aggregate curves               2.804E-04 0.0       14    
reading site collection        5.102E-05 0.0       1     
saving probability maps        3.338E-05 0.0       1     
============================== ========= ========= ======