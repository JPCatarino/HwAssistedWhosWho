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
extern void execute_870(char*, char *);
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
extern void execute_148(char*, char *);
extern void execute_150(char*, char *);
extern void execute_199(char*, char *);
extern void execute_203(char*, char *);
extern void execute_207(char*, char *);
extern void execute_211(char*, char *);
extern void execute_215(char*, char *);
extern void execute_219(char*, char *);
extern void execute_223(char*, char *);
extern void execute_227(char*, char *);
extern void execute_231(char*, char *);
extern void execute_235(char*, char *);
extern void execute_239(char*, char *);
extern void execute_243(char*, char *);
extern void execute_247(char*, char *);
extern void execute_251(char*, char *);
extern void execute_255(char*, char *);
extern void execute_259(char*, char *);
extern void execute_263(char*, char *);
extern void execute_267(char*, char *);
extern void execute_271(char*, char *);
extern void execute_275(char*, char *);
extern void execute_279(char*, char *);
extern void execute_283(char*, char *);
extern void execute_287(char*, char *);
extern void execute_291(char*, char *);
extern void execute_295(char*, char *);
extern void execute_299(char*, char *);
extern void execute_303(char*, char *);
extern void execute_307(char*, char *);
extern void execute_311(char*, char *);
extern void execute_315(char*, char *);
extern void execute_319(char*, char *);
extern void execute_323(char*, char *);
extern void execute_325(char*, char *);
extern void execute_328(char*, char *);
extern void execute_331(char*, char *);
extern void execute_336(char*, char *);
extern void execute_340(char*, char *);
extern void execute_344(char*, char *);
extern void execute_381(char*, char *);
extern void execute_386(char*, char *);
extern void execute_390(char*, char *);
extern void execute_394(char*, char *);
extern void execute_398(char*, char *);
extern void execute_402(char*, char *);
extern void execute_406(char*, char *);
extern void execute_410(char*, char *);
extern void execute_414(char*, char *);
extern void execute_418(char*, char *);
extern void execute_422(char*, char *);
extern void execute_426(char*, char *);
extern void execute_430(char*, char *);
extern void execute_434(char*, char *);
extern void execute_438(char*, char *);
extern void execute_442(char*, char *);
extern void execute_446(char*, char *);
extern void execute_450(char*, char *);
extern void execute_454(char*, char *);
extern void execute_458(char*, char *);
extern void execute_462(char*, char *);
extern void execute_466(char*, char *);
extern void execute_470(char*, char *);
extern void execute_474(char*, char *);
extern void execute_478(char*, char *);
extern void execute_482(char*, char *);
extern void execute_486(char*, char *);
extern void execute_490(char*, char *);
extern void execute_494(char*, char *);
extern void execute_498(char*, char *);
extern void execute_502(char*, char *);
extern void execute_506(char*, char *);
extern void execute_510(char*, char *);
extern void execute_554(char*, char *);
extern void execute_693(char*, char *);
extern void execute_696(char*, char *);
extern void execute_699(char*, char *);
extern void execute_704(char*, char *);
extern void execute_708(char*, char *);
extern void execute_749(char*, char *);
extern void execute_751(char*, char *);
extern void execute_752(char*, char *);
extern void execute_847(char*, char *);
extern void execute_848(char*, char *);
extern void transaction_30(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_31(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[120] = {(funcp)execute_870, (funcp)execute_22, (funcp)execute_26, (funcp)execute_30, (funcp)execute_34, (funcp)execute_38, (funcp)execute_42, (funcp)execute_46, (funcp)execute_50, (funcp)execute_54, (funcp)execute_58, (funcp)execute_62, (funcp)execute_66, (funcp)execute_70, (funcp)execute_74, (funcp)execute_78, (funcp)execute_82, (funcp)execute_86, (funcp)execute_90, (funcp)execute_94, (funcp)execute_98, (funcp)execute_102, (funcp)execute_106, (funcp)execute_110, (funcp)execute_114, (funcp)execute_118, (funcp)execute_122, (funcp)execute_126, (funcp)execute_130, (funcp)execute_134, (funcp)execute_138, (funcp)execute_142, (funcp)execute_146, (funcp)execute_148, (funcp)execute_150, (funcp)execute_199, (funcp)execute_203, (funcp)execute_207, (funcp)execute_211, (funcp)execute_215, (funcp)execute_219, (funcp)execute_223, (funcp)execute_227, (funcp)execute_231, (funcp)execute_235, (funcp)execute_239, (funcp)execute_243, (funcp)execute_247, (funcp)execute_251, (funcp)execute_255, (funcp)execute_259, (funcp)execute_263, (funcp)execute_267, (funcp)execute_271, (funcp)execute_275, (funcp)execute_279, (funcp)execute_283, (funcp)execute_287, (funcp)execute_291, (funcp)execute_295, (funcp)execute_299, (funcp)execute_303, (funcp)execute_307, (funcp)execute_311, (funcp)execute_315, (funcp)execute_319, (funcp)execute_323, (funcp)execute_325, (funcp)execute_328, (funcp)execute_331, (funcp)execute_336, (funcp)execute_340, (funcp)execute_344, (funcp)execute_381, (funcp)execute_386, (funcp)execute_390, (funcp)execute_394, (funcp)execute_398, (funcp)execute_402, (funcp)execute_406, (funcp)execute_410, (funcp)execute_414, (funcp)execute_418, (funcp)execute_422, (funcp)execute_426, (funcp)execute_430, (funcp)execute_434, (funcp)execute_438, (funcp)execute_442, (funcp)execute_446, (funcp)execute_450, (funcp)execute_454, (funcp)execute_458, (funcp)execute_462, (funcp)execute_466, (funcp)execute_470, (funcp)execute_474, (funcp)execute_478, (funcp)execute_482, (funcp)execute_486, (funcp)execute_490, (funcp)execute_494, (funcp)execute_498, (funcp)execute_502, (funcp)execute_506, (funcp)execute_510, (funcp)execute_554, (funcp)execute_693, (funcp)execute_696, (funcp)execute_699, (funcp)execute_704, (funcp)execute_708, (funcp)execute_749, (funcp)execute_751, (funcp)execute_752, (funcp)execute_847, (funcp)execute_848, (funcp)transaction_30, (funcp)transaction_31, (funcp)vhdl_transfunc_eventcallback};
const int NumRelocateId= 120;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/PearsonHashing128_tb_func_impl/xsim.reloc",  (void **)funcTab, 120);
	iki_vhdl_file_variable_register(dp + 158208);
	iki_vhdl_file_variable_register(dp + 158264);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/PearsonHashing128_tb_func_impl/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/PearsonHashing128_tb_func_impl/xsim.reloc");

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
    iki_set_sv_type_file_path_name("xsim.dir/PearsonHashing128_tb_func_impl/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/PearsonHashing128_tb_func_impl/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/PearsonHashing128_tb_func_impl/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
