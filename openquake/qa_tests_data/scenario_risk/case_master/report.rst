scenario risk
=============

=============================================== ========================
tstation.gem.lan:/mnt/ssd/oqdata/calc_1855.hdf5 Fri Jul  7 07:33:34 2017
checksum32                                      1,456,040,772           
engine_version                                  2.6.0-git50066b9        
=============================================== ========================

num_sites = 7, num_imts = 4

Parameters
----------
=============================== ==================
calculation_mode                'scenario_risk'   
number_of_logic_tree_samples    0                 
maximum_distance                {'default': 200.0}
investigation_time              None              
ses_per_logic_tree_path         1                 
truncation_level                3.0               
rupture_mesh_spacing            2.0               
complex_fault_mesh_spacing      2.0               
width_of_mfd_bin                None              
area_source_discretization      None              
ground_motion_correlation_model 'JB2009'          
random_seed                     42                
master_seed                     42                
avg_losses                      False             
=============================== ==================

Input files
-----------
=================================== ================================================================================
Name                                File                                                                            
=================================== ================================================================================
business_interruption_vulnerability `downtime_vulnerability_model.xml <downtime_vulnerability_model.xml>`_          
contents_vulnerability              `contents_vulnerability_model.xml <contents_vulnerability_model.xml>`_          
exposure                            `exposure_model.xml <exposure_model.xml>`_                                      
gsim_logic_tree                     `gsim_logic_tree.xml <gsim_logic_tree.xml>`_                                    
job_ini                             `job.ini <job.ini>`_                                                            
nonstructural_vulnerability         `nonstructural_vulnerability_model.xml <nonstructural_vulnerability_model.xml>`_
occupants_vulnerability             `occupants_vulnerability_model.xml <occupants_vulnerability_model.xml>`_        
rupture_model                       `rupture_model.xml <rupture_model.xml>`_                                        
structural_vulnerability            `structural_vulnerability_model.xml <structural_vulnerability_model.xml>`_      
=================================== ================================================================================

Composite source model
----------------------
========= ====== ================= =============== ================
smlt_path weight source_model_file gsim_logic_tree num_realizations
========= ====== ================= =============== ================
b_1       1.000  `fake <fake>`_    simple(2)       2/2             
========= ====== ================= =============== ================

Required parameters per tectonic region type
--------------------------------------------
====== ===================================== =========== ======================= =================
grp_id gsims                                 distances   siteparams              ruptparams       
====== ===================================== =========== ======================= =================
0      BooreAtkinson2008() ChiouYoungs2008() rjb rrup rx vs30 vs30measured z1pt0 dip mag rake ztor
====== ===================================== =========== ======================= =================

Realizations per (TRT, GSIM)
----------------------------

::

  <RlzsAssoc(size=2, rlzs=2)
  0,BooreAtkinson2008(): ['<0,b_1~b1,w=0.75>']
  0,ChiouYoungs2008(): ['<1,b_1~b2,w=0.25>']>

Informational data
------------------
================ ================
hostname         tstation.gem.lan
require_epsilons True            
================ ================

Exposure model
--------------
=============== ========
#assets         7       
#taxonomies     3       
deductibile     absolute
insurance_limit absolute
=============== ========

======== ===== ====== === === ========= ==========
taxonomy mean  stddev min max num_sites num_assets
tax1     1.000 0.0    1   1   4         4         
tax2     1.000 0.0    1   1   2         2         
tax3     1.000 NaN    1   1   1         1         
*ALL*    1.000 0.0    1   1   7         7         
======== ===== ====== === === ========= ==========

Slowest operations
------------------
======================= ========= ========= ======
operation               time_sec  memory_mb counts
======================= ========= ========= ======
computing gmfs          0.011     0.0       1     
reading exposure        0.007     0.0       1     
filtering sites         0.007     0.0       1     
saving gmfs             0.002     0.0       1     
building riskinputs     3.865E-04 0.0       1     
building epsilons       3.536E-04 0.0       1     
reading site collection 5.484E-06 0.0       1     
======================= ========= ========= ======