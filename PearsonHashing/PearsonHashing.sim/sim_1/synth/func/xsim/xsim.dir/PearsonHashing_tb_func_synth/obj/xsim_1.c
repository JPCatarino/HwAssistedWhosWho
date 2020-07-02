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
extern void execute_936(char*, char *);
extern void execute_21(char*, char *);
extern void execute_33(char*, char *);
extern void execute_37(char*, char *);
extern void execute_39(char*, char *);
extern void execute_69(char*, char *);
extern void execute_175(char*, char *);
extern void execute_187(char*, char *);
extern void execute_191(char*, char *);
extern void execute_203(char*, char *);
extern void execute_207(char*, char *);
extern void execute_219(char*, char *);
extern void execute_223(char*, char *);
extern void execute_235(char*, char *);
extern void execute_239(char*, char *);
extern void execute_251(char*, char *);
extern void execute_255(char*, char *);
extern void execute_267(char*, char *);
extern void execute_271(char*, char *);
extern void execute_283(char*, char *);
extern void execute_287(char*, char *);
extern void execute_299(char*, char *);
extern void execute_303(char*, char *);
extern void execute_315(char*, char *);
extern void execute_319(char*, char *);
extern void execute_331(char*, char *);
extern void execute_335(char*, char *);
extern void execute_347(char*, char *);
extern void execute_351(char*, char *);
extern void execute_363(char*, char *);
extern void execute_367(char*, char *);
extern void execute_379(char*, char *);
extern void execute_383(char*, char *);
extern void execute_395(char*, char *);
extern void execute_399(char*, char *);
extern void execute_411(char*, char *);
extern void execute_415(char*, char *);
extern void execute_427(char*, char *);
extern void execute_431(char*, char *);
extern void execute_443(char*, char *);
extern void execute_447(char*, char *);
extern void execute_459(char*, char *);
extern void execute_463(char*, char *);
extern void execute_475(char*, char *);
extern void execute_479(char*, char *);
extern void execute_491(char*, char *);
extern void execute_495(char*, char *);
extern void execute_507(char*, char *);
extern void execute_511(char*, char *);
extern void execute_523(char*, char *);
extern void execute_527(char*, char *);
extern void execute_539(char*, char *);
extern void execute_543(char*, char *);
extern void execute_555(char*, char *);
extern void execute_559(char*, char *);
extern void execute_571(char*, char *);
extern void execute_575(char*, char *);
extern void execute_587(char*, char *);
extern void execute_591(char*, char *);
extern void execute_603(char*, char *);
extern void execute_607(char*, char *);
extern void execute_619(char*, char *);
extern void execute_623(char*, char *);
extern void execute_635(char*, char *);
extern void execute_639(char*, char *);
extern void execute_651(char*, char *);
extern void execute_655(char*, char *);
extern void execute_667(char*, char *);
extern void execute_669(char*, char *);
extern void execute_670(char*, char *);
extern void execute_674(char*, char *);
extern void execute_745(char*, char *);
extern void execute_746(char*, char *);
funcp funcTab[73] = {(funcp)execute_936, (funcp)execute_21, (funcp)execute_33, (funcp)execute_37, (funcp)execute_39, (funcp)execute_69, (funcp)execute_175, (funcp)execute_187, (funcp)execute_191, (funcp)execute_203, (funcp)execute_207, (funcp)execute_219, (funcp)execute_223, (funcp)execute_235, (funcp)execute_239, (funcp)execute_251, (funcp)execute_255, (funcp)execute_267, (funcp)execute_271, (funcp)execute_283, (funcp)execute_287, (funcp)execute_299, (funcp)execute_303, (funcp)execute_315, (funcp)execute_319, (funcp)execute_331, (funcp)execute_335, (funcp)execute_347, (funcp)execute_351, (funcp)execute_363, (funcp)execute_367, (funcp)execute_379, (funcp)execute_383, (funcp)execute_395, (funcp)execute_399, (funcp)execute_411, (funcp)execute_415, (funcp)execute_427, (funcp)execute_431, (funcp)execute_443, (funcp)execute_447, (funcp)execute_459, (funcp)execute_463, (funcp)execute_475, (funcp)execute_479, (funcp)execute_491, (funcp)execute_495, (funcp)execute_507, (funcp)execute_511, (funcp)execute_523, (funcp)execute_527, (funcp)execute_539, (funcp)execute_543, (funcp)execute_555, (funcp)execute_559, (funcp)execute_571, (funcp)execute_575, (funcp)execute_587, (funcp)execute_591, (funcp)execute_603, (funcp)execute_607, (funcp)execute_619, (funcp)execute_623, (funcp)execute_635, (funcp)execute_639, (funcp)execute_651, (funcp)execute_655, (funcp)execute_667, (funcp)execute_669, (funcp)execute_670, (funcp)execute_674, (funcp)execute_745, (funcp)execute_746};
const int NumRelocateId= 73;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/PearsonHashing_tb_func_synth/xsim.reloc",  (void **)funcTab, 73);
	iki_vhdl_file_variable_register(dp + 54240);
	iki_vhdl_file_variable_register(dp + 54296);


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
