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
extern void execute_299(char*, char *);
extern void execute_22(char*, char *);
extern void execute_26(char*, char *);
extern void execute_30(char*, char *);
extern void execute_34(char*, char *);
extern void execute_38(char*, char *);
extern void execute_42(char*, char *);
extern void execute_46(char*, char *);
extern void execute_50(char*, char *);
extern void execute_54(char*, char *);
extern void execute_58(char*, char *);
extern void execute_62(char*, char *);
extern void execute_66(char*, char *);
extern void execute_70(char*, char *);
extern void execute_74(char*, char *);
extern void execute_78(char*, char *);
extern void execute_82(char*, char *);
extern void execute_86(char*, char *);
extern void execute_90(char*, char *);
extern void execute_94(char*, char *);
extern void execute_98(char*, char *);
extern void execute_102(char*, char *);
extern void execute_106(char*, char *);
extern void execute_110(char*, char *);
extern void execute_114(char*, char *);
extern void execute_118(char*, char *);
extern void execute_122(char*, char *);
extern void execute_126(char*, char *);
extern void execute_130(char*, char *);
extern void execute_134(char*, char *);
extern void execute_138(char*, char *);
extern void execute_142(char*, char *);
extern void execute_146(char*, char *);
extern void execute_150(char*, char *);
extern void execute_180(char*, char *);
extern void execute_181(char*, char *);
extern void execute_228(char*, char *);
extern void execute_229(char*, char *);
extern void execute_276(char*, char *);
extern void execute_277(char*, char *);
extern void transaction_30(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_31(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[43] = {(funcp)execute_299, (funcp)execute_22, (funcp)execute_26, (funcp)execute_30, (funcp)execute_34, (funcp)execute_38, (funcp)execute_42, (funcp)execute_46, (funcp)execute_50, (funcp)execute_54, (funcp)execute_58, (funcp)execute_62, (funcp)execute_66, (funcp)execute_70, (funcp)execute_74, (funcp)execute_78, (funcp)execute_82, (funcp)execute_86, (funcp)execute_90, (funcp)execute_94, (funcp)execute_98, (funcp)execute_102, (funcp)execute_106, (funcp)execute_110, (funcp)execute_114, (funcp)execute_118, (funcp)execute_122, (funcp)execute_126, (funcp)execute_130, (funcp)execute_134, (funcp)execute_138, (funcp)execute_142, (funcp)execute_146, (funcp)execute_150, (funcp)execute_180, (funcp)execute_181, (funcp)execute_228, (funcp)execute_229, (funcp)execute_276, (funcp)execute_277, (funcp)transaction_30, (funcp)transaction_31, (funcp)vhdl_transfunc_eventcallback};
const int NumRelocateId= 43;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/PearsonHashing128_tb_func_synth/xsim.reloc",  (void **)funcTab, 43);
	iki_vhdl_file_variable_register(dp + 71304);
	iki_vhdl_file_variable_register(dp + 71360);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/PearsonHashing128_tb_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/PearsonHashing128_tb_func_synth/xsim.reloc");

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
    iki_set_sv_type_file_path_name("xsim.dir/PearsonHashing128_tb_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/PearsonHashing128_tb_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/PearsonHashing128_tb_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
