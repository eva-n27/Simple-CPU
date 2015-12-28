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
static const char *ng0 = "F:/VHDLProject/CPUfinal/WB.vhd";



static void work_a_2199296449_3212880686_p_0(char *t0)
{
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
    int t32;
    char *t33;
    int t35;
    char *t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;

LAB0:    xsi_set_current_line(23, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB26;

LAB27:
LAB3:    t1 = (t0 + 2184);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 868U);
    t5 = *((char **)t1);
    t6 = (15 - 15);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t5 + t8);
    t9 = (t0 + 3870);
    t11 = xsi_mem_cmp(t9, t1, 5U);
    if (t11 == 1)
        goto LAB6;

LAB16:    t12 = (t0 + 3875);
    t14 = xsi_mem_cmp(t12, t1, 5U);
    if (t14 == 1)
        goto LAB7;

LAB17:    t15 = (t0 + 3880);
    t17 = xsi_mem_cmp(t15, t1, 5U);
    if (t17 == 1)
        goto LAB8;

LAB18:    t18 = (t0 + 3885);
    t20 = xsi_mem_cmp(t18, t1, 5U);
    if (t20 == 1)
        goto LAB9;

LAB19:    t21 = (t0 + 3890);
    t23 = xsi_mem_cmp(t21, t1, 5U);
    if (t23 == 1)
        goto LAB10;

LAB20:    t24 = (t0 + 3895);
    t26 = xsi_mem_cmp(t24, t1, 5U);
    if (t26 == 1)
        goto LAB11;

LAB21:    t27 = (t0 + 3900);
    t29 = xsi_mem_cmp(t27, t1, 5U);
    if (t29 == 1)
        goto LAB12;

LAB22:    t30 = (t0 + 3905);
    t32 = xsi_mem_cmp(t30, t1, 5U);
    if (t32 == 1)
        goto LAB13;

LAB23:    t33 = (t0 + 3910);
    t35 = xsi_mem_cmp(t33, t1, 5U);
    if (t35 == 1)
        goto LAB14;

LAB24:
LAB15:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 2264);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t9 = (t5 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB5:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 2336);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t9 = (t5 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t1 = (t0 + 2372);
    t5 = (t1 + 32U);
    t9 = *((char **)t5);
    t10 = (t9 + 40U);
    t12 = *((char **)t10);
    memcpy(t12, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB6:    xsi_set_current_line(27, ng0);
    t36 = (t0 + 684U);
    t37 = *((char **)t36);
    t38 = (8 - 7);
    t39 = (t38 * 1U);
    t40 = (0 + t39);
    t36 = (t37 + t40);
    t41 = (t0 + 2228);
    t42 = (t41 + 32U);
    t43 = *((char **)t42);
    t44 = (t43 + 40U);
    t45 = *((char **)t44);
    memcpy(t45, t36, 8U);
    xsi_driver_first_trans_fast_port(t41);
    xsi_set_current_line(28, ng0);
    t1 = (t0 + 2264);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t9 = (t5 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(29, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t11 = (8 - 8);
    t6 = (t11 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 2300);
    t9 = (t5 + 32U);
    t10 = *((char **)t9);
    t12 = (t10 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t3;
    xsi_driver_first_trans_fast_port(t5);
    goto LAB5;

LAB7:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t6 = (8 - 7);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t5 = (t0 + 2228);
    t9 = (t5 + 32U);
    t10 = *((char **)t9);
    t12 = (t10 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(32, ng0);
    t1 = (t0 + 2264);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t9 = (t5 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(33, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t11 = (8 - 8);
    t6 = (t11 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 2300);
    t9 = (t5 + 32U);
    t10 = *((char **)t9);
    t12 = (t10 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t3;
    xsi_driver_first_trans_fast_port(t5);
    goto LAB5;

LAB8:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t6 = (8 - 7);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t5 = (t0 + 2228);
    t9 = (t5 + 32U);
    t10 = *((char **)t9);
    t12 = (t10 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(36, ng0);
    t1 = (t0 + 2264);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t9 = (t5 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(37, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t11 = (8 - 8);
    t6 = (t11 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 2300);
    t9 = (t5 + 32U);
    t10 = *((char **)t9);
    t12 = (t10 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t3;
    xsi_driver_first_trans_fast_port(t5);
    goto LAB5;

LAB9:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t6 = (8 - 7);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t5 = (t0 + 2228);
    t9 = (t5 + 32U);
    t10 = *((char **)t9);
    t12 = (t10 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(40, ng0);
    t1 = (t0 + 2264);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t9 = (t5 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(41, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t11 = (8 - 8);
    t6 = (t11 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 2300);
    t9 = (t5 + 32U);
    t10 = *((char **)t9);
    t12 = (t10 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t3;
    xsi_driver_first_trans_fast_port(t5);
    goto LAB5;

LAB10:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t6 = (8 - 7);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t5 = (t0 + 2228);
    t9 = (t5 + 32U);
    t10 = *((char **)t9);
    t12 = (t10 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(44, ng0);
    t1 = (t0 + 2264);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t9 = (t5 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(45, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t11 = (8 - 8);
    t6 = (t11 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 2300);
    t9 = (t5 + 32U);
    t10 = *((char **)t9);
    t12 = (t10 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t3;
    xsi_driver_first_trans_fast_port(t5);
    goto LAB5;

LAB11:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 2264);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t9 = (t5 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(47, ng0);
    t1 = (t0 + 2300);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t9 = (t5 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB12:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 2264);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t9 = (t5 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(49, ng0);
    t1 = (t0 + 2300);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t9 = (t5 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB13:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t11 = (8 - 8);
    t6 = (t11 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 2300);
    t9 = (t5 + 32U);
    t10 = *((char **)t9);
    t12 = (t10 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t3;
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 2264);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t9 = (t5 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB14:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t11 = (8 - 8);
    t6 = (t11 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 2300);
    t9 = (t5 + 32U);
    t10 = *((char **)t9);
    t12 = (t10 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t3;
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 2264);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t9 = (t5 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB25:;
LAB26:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 2336);
    t5 = (t1 + 32U);
    t9 = *((char **)t5);
    t10 = (t9 + 40U);
    t12 = *((char **)t10);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 2264);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t9 = (t5 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

}


extern void work_a_2199296449_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2199296449_3212880686_p_0};
	xsi_register_didat("work_a_2199296449_3212880686", "isim/test_final_isim_beh.exe.sim/work/a_2199296449_3212880686.didat");
	xsi_register_executes(pe);
}
