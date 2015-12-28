/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "F:/VHDLProject/CPUfinal/Memory.vhd";
extern char *IEEE_P_2592010699;



static void work_a_3392787015_3212880686_p_0(char *t0)
{
    char t33[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    char *t13;
    int t14;
    char *t15;
    int t17;
    char *t18;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    int t29;
    char *t30;
    char *t31;
    char *t32;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;

LAB0:    xsi_set_current_line(20, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(32, ng0);
    t1 = (t0 + 1132U);
    t2 = *((char **)t1);
    t1 = (t0 + 1928);
    t5 = (t1 + 32U);
    t9 = *((char **)t5);
    t10 = (t9 + 40U);
    t12 = *((char **)t10);
    memcpy(t12, t2, 9U);
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 1884);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(21, ng0);
    t1 = (t0 + 776U);
    t5 = *((char **)t1);
    t6 = (15 - 15);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t5 + t8);
    t9 = (t0 + 3275);
    t11 = xsi_mem_cmp(t9, t1, 5U);
    if (t11 == 1)
        goto LAB6;

LAB14:    t12 = (t0 + 3280);
    t14 = xsi_mem_cmp(t12, t1, 5U);
    if (t14 == 1)
        goto LAB7;

LAB15:    t15 = (t0 + 3285);
    t17 = xsi_mem_cmp(t15, t1, 5U);
    if (t17 == 1)
        goto LAB8;

LAB16:    t18 = (t0 + 3290);
    t20 = xsi_mem_cmp(t18, t1, 5U);
    if (t20 == 1)
        goto LAB9;

LAB17:    t21 = (t0 + 3295);
    t23 = xsi_mem_cmp(t21, t1, 5U);
    if (t23 == 1)
        goto LAB10;

LAB18:    t24 = (t0 + 3300);
    t26 = xsi_mem_cmp(t24, t1, 5U);
    if (t26 == 1)
        goto LAB11;

LAB19:    t27 = (t0 + 3305);
    t29 = xsi_mem_cmp(t27, t1, 5U);
    if (t29 == 1)
        goto LAB12;

LAB20:
LAB13:    xsi_set_current_line(29, ng0);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(22, ng0);
    t30 = (t0 + 684U);
    t31 = *((char **)t30);
    t30 = (t0 + 1132U);
    t32 = *((char **)t30);
    t30 = (t32 + 0);
    memcpy(t30, t31, 9U);
    goto LAB5;

LAB7:    xsi_set_current_line(23, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t1 = (t0 + 1132U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    memcpy(t1, t2, 9U);
    goto LAB5;

LAB8:    xsi_set_current_line(24, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t1 = (t0 + 1132U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    memcpy(t1, t2, 9U);
    goto LAB5;

LAB9:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t1 = (t0 + 1132U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    memcpy(t1, t2, 9U);
    goto LAB5;

LAB10:    xsi_set_current_line(26, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t11 = (8 - 8);
    t6 = (t11 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 868U);
    t9 = *((char **)t5);
    t10 = ((IEEE_P_2592010699) + 2332);
    t12 = (t0 + 3176U);
    t5 = xsi_base_array_concat(t5, t33, t10, (char)99, t3, (char)97, t9, t12, (char)101);
    t13 = (t0 + 1132U);
    t15 = *((char **)t13);
    t13 = (t15 + 0);
    t34 = (1U + 8U);
    memcpy(t13, t5, t34);
    goto LAB5;

LAB11:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t11 = (8 - 8);
    t6 = (t11 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 1132U);
    t9 = *((char **)t5);
    t14 = (8 - 8);
    t34 = (t14 * -1);
    t35 = (1U * t34);
    t36 = (0 + t35);
    t5 = (t9 + t36);
    *((unsigned char *)t5) = t3;
    goto LAB5;

LAB12:    xsi_set_current_line(28, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t11 = (8 - 8);
    t6 = (t11 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 1132U);
    t9 = *((char **)t5);
    t14 = (8 - 8);
    t34 = (t14 * -1);
    t35 = (1U * t34);
    t36 = (0 + t35);
    t5 = (t9 + t36);
    *((unsigned char *)t5) = t3;
    goto LAB5;

LAB21:;
}


extern void work_a_3392787015_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3392787015_3212880686_p_0};
	xsi_register_didat("work_a_3392787015_3212880686", "isim/test_final_isim_beh.exe.sim/work/a_3392787015_3212880686.didat");
	xsi_register_executes(pe);
}
