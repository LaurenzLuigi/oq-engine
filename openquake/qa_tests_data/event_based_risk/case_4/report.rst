Event Based Risk for Turkey reduced
===================================

=============================================== ========================
tstation.gem.lan:/mnt/ssd/oqdata/calc_1798.hdf5 Fri Jul  7 07:32:28 2017
checksum32                                      565,489,737             
engine_version                                  2.6.0-git50066b9        
=============================================== ========================

num_sites = 14, num_imts = 2

Parameters
----------
=============================== ==================
calculation_mode                'event_based_risk'
number_of_logic_tree_samples    0                 
maximum_distance                {'default': 200.0}
investigation_time              10.0              
ses_per_logic_tree_path         1                 
truncation_level                3.0               
rupture_mesh_spacing            4.0               
complex_fault_mesh_spacing      4.0               
width_of_mfd_bin                0.1               
area_source_discretization      10.0              
ground_motion_correlation_model None              
random_seed                     323               
master_seed                     42                
avg_losses                      True              
=============================== ==================

Input files
-----------
======================== ==========================================================================
Name                     File                                                                      
======================== ==========================================================================
exposure                 `exposure.xml <exposure.xml>`_                                            
gsim_logic_tree          `gmpe_logic_tree.xml <gmpe_logic_tree.xml>`_                              
job_ini                  `job.ini <job.ini>`_                                                      
site_model               `site_model.xml <site_model.xml>`_                                        
source                   `as_model.xml <as_model.xml>`_                                            
source                   `fsbg_model.xml <fsbg_model.xml>`_                                        
source                   `ss_model.xml <ss_model.xml>`_                                            
source_model_logic_tree  `source_model_logic_tree.xml <source_model_logic_tree.xml>`_              
structural_vulnerability `structural_vulnerability_model.xml <structural_vulnerability_model.xml>`_
======================== ==========================================================================

Composite source model
----------------------
======================== ====== ======================================================== ====================== ================
smlt_path                weight source_model_file                                        gsim_logic_tree        num_realizations
======================== ====== ======================================================== ====================== ================
AreaSource               0.500  `models/src/as_model.xml <models/src/as_model.xml>`_     complex(2,5,1,4,4,0,4) 4/4             
FaultSourceAndBackground 0.200  `models/src/fsbg_model.xml <models/src/fsbg_model.xml>`_ complex(2,5,1,4,4,0,4) 4/4             
SeiFaCrust               0.300  `models/src/ss_model.xml <models/src/ss_model.xml>`_     complex(2,5,1,4,4,0,4) 0/0             
======================== ====== ======================================================== ====================== ================

Required parameters per tectonic region type
--------------------------------------------
====== ========================================================================== ================= ======================= ============================
grp_id gsims                                                                      distances         siteparams              ruptparams                  
====== ========================================================================== ================= ======================= ============================
5      AkkarBommer2010() CauzziFaccioli2008() ChiouYoungs2008() ZhaoEtAl2006Asc() rhypo rjb rrup rx vs30 vs30measured z1pt0 dip hypo_depth mag rake ztor
9      AkkarBommer2010() CauzziFaccioli2008() ChiouYoungs2008() ZhaoEtAl2006Asc() rhypo rjb rrup rx vs30 vs30measured z1pt0 dip hypo_depth mag rake ztor
====== ========================================================================== ================= ======================= ============================

Realizations per (TRT, GSIM)
----------------------------

::

  <RlzsAssoc(size=8, rlzs=8)
  5,AkkarBommer2010(): ['<0,AreaSource~AkkarBommer2010asc_@_@_@_@_@_@,w=0.24999999893563138>']
  5,CauzziFaccioli2008(): ['<1,AreaSource~CauzziFaccioli2008asc_@_@_@_@_@_@,w=0.24999999893563138>']
  5,ChiouYoungs2008(): ['<2,AreaSource~ChiouYoungs2008asc_@_@_@_@_@_@,w=0.14285714224893223>']
  5,ZhaoEtAl2006Asc(): ['<3,AreaSource~ZhaoEtAl2006Ascasc_@_@_@_@_@_@,w=0.07142857112446611>']
  9,AkkarBommer2010(): ['<4,FaultSourceAndBackground~AkkarBommer2010asc_@_@_@_@_@_@,w=0.10000000106436867>']
  9,CauzziFaccioli2008(): ['<5,FaultSourceAndBackground~CauzziFaccioli2008asc_@_@_@_@_@_@,w=0.10000000106436867>']
  9,ChiouYoungs2008(): ['<6,FaultSourceAndBackground~ChiouYoungs2008asc_@_@_@_@_@_@,w=0.05714285775106781>']
  9,ZhaoEtAl2006Asc(): ['<7,FaultSourceAndBackground~ZhaoEtAl2006Ascasc_@_@_@_@_@_@,w=0.028571428875533905>']>

Number of ruptures per tectonic region type
-------------------------------------------
========================= ====== ==================== =========== ============ ============
source_model              grp_id trt                  num_sources eff_ruptures tot_ruptures
========================= ====== ==================== =========== ============ ============
models/src/as_model.xml   5      Active Shallow Crust 7           38280        39,108      
models/src/fsbg_model.xml 9      Active Shallow Crust 29          4638         7,374       
========================= ====== ==================== =========== ============ ============

============= ======
#TRT models   2     
#sources      36    
#eff_ruptures 42,918
#tot_ruptures 46,482
#tot_weight   0     
============= ======

Informational data
------------------
============================ =======================================================================================
compute_ruptures.received    tot 84.73 KB, max_per_task 6.21 KB                                                     
compute_ruptures.sent        sources 444.9 KB, src_filter 79.44 KB, param 67.87 KB, gsims 15.87 KB, monitor 15.62 KB
hazard.input_weight          7936.8                                                                                 
hazard.n_imts                2                                                                                      
hazard.n_levels              91                                                                                     
hazard.n_realizations        3840                                                                                   
hazard.n_sites               14                                                                                     
hazard.n_sources             36                                                                                     
hazard.output_weight         1274.0                                                                                 
hostname                     tstation.gem.lan                                                                       
require_epsilons             False                                                                                  
============================ =======================================================================================

Estimated data transfer for the avglosses
-----------------------------------------
14 asset(s) x 8 realization(s) x 1 loss type(s) x 1 losses x 8 bytes x 64 tasks = 56 KB

Exposure model
--------------
=============== ========
#assets         14      
#taxonomies     9       
deductibile     absolute
insurance_limit absolute
=============== ========

======== ===== ====== === === ========= ==========
taxonomy mean  stddev min max num_sites num_assets
RC_HR    1.000 NaN    1   1   1         1         
RC_LR    1.000 0.0    1   1   3         3         
RC_MR    1.000 NaN    1   1   1         1         
SAM_1S   1.000 NaN    1   1   1         1         
SAM_2S   1.000 0.0    1   1   2         2         
SAM_3S   1.000 NaN    1   1   1         1         
SAM_4S   1.000 NaN    1   1   1         1         
URM_1S   1.000 0.0    1   1   2         2         
URM_2S   1.000 0.0    1   1   2         2         
*ALL*    1.000 0.0    1   1   14        14        
======== ===== ====== === === ========= ==========

Slowest sources
---------------
====== ============ ================= ============ ========= ========= =========
grp_id source_id    source_class      num_ruptures calc_time num_sites num_split
====== ============ ================= ============ ========= ========= =========
9      FSBG_TRCS313 SimpleFaultSource 38           0.0       7         0        
9      FSBG_TRCS912 SimpleFaultSource 30           0.0       3         0        
9      FSBG_TRCS437 SimpleFaultSource 193          0.0       3         0        
9      FSBG_TRCS231 SimpleFaultSource 7            0.0       5         0        
9      FSBG_TRCS094 SimpleFaultSource 47           0.0       1         0        
9      FSBG_TRCS114 SimpleFaultSource 449          0.0       1         0        
9      FSBG_ARAS462 AreaSource        2,397        0.0       1         0        
9      FSBG_TRCS038 SimpleFaultSource 21           0.0       4         0        
9      FSBG_TRCS206 SimpleFaultSource 64           0.0       2         0        
9      FSBG_TRCS417 SimpleFaultSource 23           0.0       3         0        
5      AS_TRAS346   AreaSource        6,171        0.0       8         0        
9      FSBG_TRCS322 SimpleFaultSource 194          0.0       5         0        
9      FSBG_TRCS319 SimpleFaultSource 12           0.0       3         0        
9      FSBG_TRCS113 SimpleFaultSource 149          0.0       1         0        
9      FSBG_TRBG989 AreaSource        1,323        0.0       3         0        
9      FSBG_TRCS199 SimpleFaultSource 32           0.0       4         0        
9      FSBG_TRCS439 SimpleFaultSource 233          0.0       4         0        
5      AS_TRAS458   AreaSource        4,845        0.0       4         0        
9      FSBG_GRCS912 SimpleFaultSource 32           0.0       3         0        
9      FSBG_TRCS090 SimpleFaultSource 245          0.0       1         0        
====== ============ ================= ============ ========= ========= =========

Computation times by source typology
------------------------------------
================= ========= ======
source_class      calc_time counts
================= ========= ======
AreaSource        0.0       9     
SimpleFaultSource 0.0       27    
================= ========= ======

Information about the tasks
---------------------------
================== ===== ====== ===== ===== =========
operation-duration mean  stddev min   max   num_tasks
compute_ruptures   0.266 0.280  0.004 0.962 50       
================== ===== ====== ===== ===== =========

Slowest operations
------------------
============================== ========= ========= ======
operation                      time_sec  memory_mb counts
============================== ========= ========= ======
total compute_ruptures         13        0.199     50    
reading composite source model 6.116     0.0       1     
managing sources               0.979     0.0       1     
prefiltering source model      0.157     0.0       1     
store source_info              0.050     0.0       1     
saving ruptures                0.034     0.0       50    
reading exposure               0.018     0.0       1     
filtering ruptures             0.009     0.0       32    
setting event years            0.002     0.0       1     
reading site collection        8.106E-06 0.0       1     
============================== ========= ========= ======