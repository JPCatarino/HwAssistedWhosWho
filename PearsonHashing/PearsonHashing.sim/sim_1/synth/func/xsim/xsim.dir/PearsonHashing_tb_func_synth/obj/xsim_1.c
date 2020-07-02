/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_1012(char*, char *);
extern void execute_21(char*, char *);
extern void execute_37(char*, char *);
extern void execute_41(char*, char *);
extern void execute_43(char*, char *);
extern void execute_83(char*, char *);
extern void execute_111(char*, char *);
extern void execute_227(char*, char *);
extern void execute_243(char*, char *);
extern void execute_247(char*, char *);
extern void execute_263(char*, char *);
extern void execute_267(char*, char *);
extern void execute_283(char*, char *);
extern void execute_287(char*, char *);
extern void execute_303(char*, char *);
extern void execute_307(char*, char *);
extern void execute_323(char*, char *);
extern void execute_327(char*, char *);
extern void execute_343(char*, char *);
extern void execute_347(char*, char *);
extern void execute_363(char*, char *);
extern void execute_367(char*, char *);
extern void execute_383(char*, char *);
extern void execute_387(char*, char *);
extern void execute_403(char*, char *);
extern void execute_407(char*, char *);
extern void execute_423(char*, char *);
extern void execute_427(char*, char *);
extern void execute_443(char*, char *);
extern void execute_447(char*, char *);
extern void execute_463(char*, char *);
extern void execute_467(char*, char *);
extern void execute_483(char*, char *);
extern void execute_487(char*, char *);
extern void execute_503(char*, char *);
extern void execute_507(char*, char *);
extern void execute_523(char*, char *);
extern void execute_527(char*, char *);
extern void execute_543(char*, char *);
extern void execute_547(char*, char *);
extern void execute_563(char*, char *);
extern void execute_567(char*, char *);
extern void execute_583(char*, char *);
extern void execute_587(char*, char *);
extern void execute_603(char*, char *);
extern void execute_607(char*, char *);
extern void execute_623(char*, char *);
extern void execute_627(char*, char *);
extern void execute_643(char*, char *);
extern void execute_647(char*, char *);
extern void execute_663(char*, char *);
extern void execute_667(char*, char *);
extern void execute_683(char*, char *);
extern void execute_687(char*, char *);
extern void execute_703(char*, char *);
extern void execute_707(char*, char *);
extern void execute_723(char*, char *);
extern void execute_727(char*, char *);
extern void execute_743(char*, char *);
extern void execute_747(char*, char *);
extern void execute_763(char*, char *);
extern void execute_767(char*, char *);
extern void execute_783(char*, char *);
extern void execute_787(char*, char *);
extern void execute_803(char*, char *);
extern void execute_807(char*, char *);
extern void execute_823(char*, char *);
extern void execute_827(char*, char *);
extern void execute_843(char*, char *);
extern void execute_845(char*, char *);
extern void execute_846(char*, char *);
extern void execute_850(char*, char *);
extern void execute_917(char*, char *);
extern void execute_918(char*, char *);
funcp funcTab[74] = {(funcp)execute_1012, (funcp)execute_21, (funcp)execute_37, (funcp)execute_41, (funcp)execute_43, (funcp)execute_83, (funcp)execute_111, (funcp)execute_227, (funcp)execute_243, (funcp)execute_247, (funcp)execute_263, (funcp)execute_267, (funcp)execute_283, (funcp)execute_287, (funcp)execute_303, (funcp)execute_307, (funcp)execute_323, (funcp)execute_327, (funcp)execute_343, (funcp)execute_347, (funcp)execute_363, (funcp)execute_367, (funcp)execute_383, (funcp)execute_387, (funcp)execute_403, (funcp)execute_407, (funcp)execute_423, (funcp)execute_427, (funcp)execute_443, (funcp)execute_447, (funcp)execute_463, (funcp)execute_467, (funcp)execute_483, (funcp)execute_487, (funcp)execute_503, (funcp)execute_507, (funcp)execute_523, (funcp)execute_527, (funcp)execute_543, (funcp)execute_547, (funcp)execute_563, (funcp)execute_567, (funcp)execute_583, (funcp)execute_587, (funcp)execute_603, (funcp)execute_607, (funcp)execute_623, (funcp)execute_627, (funcp)execute_643, (funcp)execute_647, (funcp)execute_663, (funcp)execute_667, (funcp)execute_683, (funcp)execute_687, (funcp)execute_703, (funcp)execute_707, (funcp)execute_723, (funcp)execute_727, (funcp)execute_743, (funcp)execute_747, (funcp)execute_763, (funcp)execute_767, (funcp)execute_783, (funcp)execute_787, (funcp)execute_803, (funcp)execute_807, (funcp)execute_823, (funcp)execute_827, (funcp)execute_843, (funcp)execute_845, (funcp)execute_846, (funcp)execute_850, (funcp)execute_917, (funcp)execute_918};
const int NumRelocateId= 74;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/PearsonHashing_tb_func_synth/xsim.reloc",  (void **)funcTab, 74);
	iki_vhdl_file_variable_register(dp + 58520);
	iki_vhdl_file_variable_register(dp + 58576);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/PearsonHashing_tb_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/PearsonHashing_tb_func_synth/xsim.reloc");

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstantiate();

extern void implicit_HDL_SCcleanup();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/PearsonHashing_tb_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/PearsonHashing_tb_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/PearsonHashing_tb_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
