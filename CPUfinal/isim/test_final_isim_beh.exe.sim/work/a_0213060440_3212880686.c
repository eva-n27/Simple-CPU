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
static const char *ng0 = "F:/VHDLProject/CPUfinal/clock.vhd";



static void work_a_0213060440_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned char t16;
    char *t17;

LAB0:    xsi_set_current_line(29, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1212U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 2092);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(30, ng0);
    t1 = (t0 + 1144U);
    t5 = *((char **)t1);
    t6 = (0 - 3);
    t7 = (t6 * -1);
    t8 = (1U * t7);
    t9 = (0 + t8);
    t1 = (t5 + t9);
    t10 = *((unsigned char *)t1);
    t11 = (t0 + 2136);
    t12 = (t11 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 40U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = t10;
    xsi_driver_first_trans_fast_port(t11);
    xsi_set_current_line(31, ng0);
    t1 = (t0 + 1144U);
    t2 = *((char **)t1);
    t6 = (1 - 3);
    t7 = (t6 * -1);
    t8 = (1U * t7);
    t9 = (0 + t8);
    t1 = (t2 + t9);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 2172);
    t11 = (t5 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = t3;
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(32, ng0);
    t1 = (t0 + 1144U);
    t2 = *((char **)t1);
    t6 = (2 - 3);
    t7 = (t6 * -1);
    t8 = (1U * t7);
    t9 = (0 + t8);
    t1 = (t2 + t9);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 2208);
    t11 = (t5 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = t3;
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(33, ng0);
    t1 = (t0 + 1144U);
    t2 = *((char **)t1);
    t6 = (3 - 3);
    t7 = (t6 * -1);
    t8 = (1U * t7);
    t9 = (0 + t8);
    t1 = (t2 + t9);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 2244);
    t11 = (t5 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = t3;
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(34, ng0);
    t1 = (t0 + 3659);
    t5 = (t0 + 2280);
    t11 = (t5 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 1144U);
    t11 = *((char **)t2);
    t7 = (3 - 2);
    t8 = (t7 * 1U);
    t9 = (0 + t8);
    t2 = (t11 + t9);
    t12 = (t0 + 2280);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t17 = *((char **)t15);
    memcpy(t17, t2, 3U);
    xsi_driver_first_trans_delta(t12, 0U, 3U, 0LL);
    xsi_set_current_line(37, ng0);
    t1 = (t0 + 1144U);
    t2 = *((char **)t1);
    t6 = (3 - 3);
    t7 = (t6 * -1);
    t8 = (1U * t7);
    t9 = (0 + t8);
    t1 = (t2 + t9);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 2280);
    t11 = (t5 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = t3;
    xsi_driver_first_trans_delta(t5, 3U, 1, 0LL);
    xsi_set_current_line(38, ng0);
    t1 = (t0 + 1144U);
    t2 = *((char **)t1);
    t6 = (0 - 3);
    t7 = (t6 * -1);
    t8 = (1U * t7);
    t9 = (0 + t8);
    t1 = (t2 + t9);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 2136);
    t11 = (t5 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = t3;
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1144U);
    t2 = *((char **)t1);
    t6 = (1 - 3);
    t7 = (t6 * -1);
    t8 = (1U * t7);
    t9 = (0 + t8);
    t1 = (t2 + t9);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 2172);
    t11 = (t5 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = t3;
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(40, ng0);
    t1 = (t0 + 1144U);
    t2 = *((char **)t1);
    t6 = (2 - 3);
    t7 = (t6 * -1);
    t8 = (1U * t7);
    t9 = (0 + t8);
    t1 = (t2 + t9);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 2208);
    t11 = (t5 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = t3;
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(41, ng0);
    t1 = (t0 + 1144U);
    t2 = *((char **)t1);
    t6 = (3 - 3);
    t7 = (t6 * -1);
    t8 = (1U * t7);
    t9 = (0 + t8);
    t1 = (t2 + t9);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 2244);
    t11 = (t5 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = t3;
    xsi_driver_first_trans_fast_port(t5);
    goto LAB3;

LAB7:    t2 = (t0 + 1236U);
    t5 = *((char **)t2);
    t10 = *((unsigned char *)t5);
    t16 = (t10 == (unsigned char)3);
    t3 = t16;
    goto LAB9;

}


extern void work_a_0213060440_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0213060440_3212880686_p_0};
	xsi_register_didat("work_a_0213060440_3212880686", "isim/test_final_isim_beh.exe.sim/work/a_0213060440_3212880686.didat");
	xsi_register_executes(pe);
}
