/*
 * P1.h
 *
 * Code generation for model "P1".
 *
 * Model version              : 1.0
 * Simulink Coder version : 8.8 (R2015a) 09-Feb-2015
 * C source code generated on : Fri Jun 28 14:13:38 2019
 *
 * Target selection: grt.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: 32-bit Generic
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_P1_h_
#define RTW_HEADER_P1_h_
#include <math.h>
#include <float.h>
#include <string.h>
#include <stddef.h>
#ifndef P1_COMMON_INCLUDES_
# define P1_COMMON_INCLUDES_
#include "rtwtypes.h"
#include "rtw_continuous.h"
#include "rtw_solver.h"
#include "rt_logging.h"
#endif                                 /* P1_COMMON_INCLUDES_ */

#include "P1_types.h"

/* Shared type includes */
#include "multiword_types.h"
#include "rt_nonfinite.h"

/* Macros for accessing real-time model data structure */
#ifndef rtmGetFinalTime
# define rtmGetFinalTime(rtm)          ((rtm)->Timing.tFinal)
#endif

#ifndef rtmGetRTWLogInfo
# define rtmGetRTWLogInfo(rtm)         ((rtm)->rtwLogInfo)
#endif

#ifndef rtmGetErrorStatus
# define rtmGetErrorStatus(rtm)        ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
# define rtmSetErrorStatus(rtm, val)   ((rtm)->errorStatus = (val))
#endif

#ifndef rtmGetStopRequested
# define rtmGetStopRequested(rtm)      ((rtm)->Timing.stopRequestedFlag)
#endif

#ifndef rtmSetStopRequested
# define rtmSetStopRequested(rtm, val) ((rtm)->Timing.stopRequestedFlag = (val))
#endif

#ifndef rtmGetStopRequestedPtr
# define rtmGetStopRequestedPtr(rtm)   (&((rtm)->Timing.stopRequestedFlag))
#endif

#ifndef rtmGetT
# define rtmGetT(rtm)                  ((rtm)->Timing.taskTime0)
#endif

#ifndef rtmGetTFinal
# define rtmGetTFinal(rtm)             ((rtm)->Timing.tFinal)
#endif

/* Block states (auto storage) for system '<Root>' */
typedef struct {
  real_T SineWave_AccFreqNorm;         /* '<S1>/Sine Wave' */
  real_T SineWave1_AccFreqNorm;        /* '<S1>/Sine Wave1' */
  real_T SineWave2_AccFreqNorm;        /* '<S1>/Sine Wave2' */
} DW_P1_T;

/* External outputs (root outports fed by signals with auto storage) */
typedef struct {
  real_T Out_P1_1;                     /* '<Root>/Out_P1_1' */
  real_T Out_P1_2;                     /* '<Root>/Out_P1_2' */
} ExtY_P1_T;

/* Parameters (auto storage) */
struct P_P1_T_ {
  real_T SineWave_Amplitude;           /* Mask Parameter: SineWave_Amplitude
                                        * Referenced by: '<S1>/Sine Wave'
                                        */
  real_T SineWave1_Amplitude;          /* Mask Parameter: SineWave1_Amplitude
                                        * Referenced by: '<S1>/Sine Wave1'
                                        */
  real_T SineWave2_Amplitude;          /* Mask Parameter: SineWave2_Amplitude
                                        * Referenced by: '<S1>/Sine Wave2'
                                        */
  real_T SineWave_Frequency;           /* Mask Parameter: SineWave_Frequency
                                        * Referenced by: '<S1>/Sine Wave'
                                        */
  real_T SineWave1_Frequency;          /* Mask Parameter: SineWave1_Frequency
                                        * Referenced by: '<S1>/Sine Wave1'
                                        */
  real_T SineWave2_Frequency;          /* Mask Parameter: SineWave2_Frequency
                                        * Referenced by: '<S1>/Sine Wave2'
                                        */
  real_T SineWave_Phase;               /* Mask Parameter: SineWave_Phase
                                        * Referenced by: '<S1>/Sine Wave'
                                        */
  real_T SineWave1_Phase;              /* Mask Parameter: SineWave1_Phase
                                        * Referenced by: '<S1>/Sine Wave1'
                                        */
  real_T SineWave2_Phase;              /* Mask Parameter: SineWave2_Phase
                                        * Referenced by: '<S1>/Sine Wave2'
                                        */
  real_T Constant_Value;               /* Expression: 1
                                        * Referenced by: '<S1>/Constant'
                                        */
  real_T Gain1_Gain;                   /* Expression: 2.5
                                        * Referenced by: '<S2>/Gain1'
                                        */
  real_T Gain1_Gain_c;                 /* Expression: 2.5
                                        * Referenced by: '<S3>/Gain1'
                                        */
};

/* Real-time Model Data Structure */
struct tag_RTM_P1_T {
  const char_T *errorStatus;
  RTWLogInfo *rtwLogInfo;

  /*
   * Timing:
   * The following substructure contains information regarding
   * the timing information for the model.
   */
  struct {
    time_T taskTime0;
    uint32_T clockTick0;
    uint32_T clockTickH0;
    time_T stepSize0;
    time_T tFinal;
    boolean_T stopRequestedFlag;
  } Timing;
};

/* Block parameters (auto storage) */
extern P_P1_T P1_P;

/* Block states (auto storage) */
extern DW_P1_T P1_DW;

/* External outputs (root outports fed by signals with auto storage) */
extern ExtY_P1_T P1_Y;

/* Model entry point functions */
extern void P1_initialize(void);
extern void P1_step(void);
extern void P1_terminate(void);

/* Real-time Model object */
extern RT_MODEL_P1_T *const P1_M;

/*-
 * The generated code includes comments that allow you to trace directly
 * back to the appropriate location in the model.  The basic format
 * is <system>/block_name, where system is the system number (uniquely
 * assigned by Simulink) and block_name is the name of the block.
 *
 * Note that this particular code originates from a subsystem build,
 * and has its own system numbers different from the parent model.
 * Refer to the system hierarchy for this subsystem below, and use the
 * MATLAB hilite_system command to trace the generated code back
 * to the parent model.  For example,
 *
 * hilite_system('Untitled/P1')    - opens subsystem Untitled/P1
 * hilite_system('Untitled/P1/Kp') - opens and selects block Kp
 *
 * Here is the system hierarchy for this model
 *
 * '<Root>' : 'Untitled'
 * '<S1>'   : 'Untitled/P1'
 * '<S2>'   : 'Untitled/P1/C1'
 * '<S3>'   : 'Untitled/P1/C2'
 */
#endif                                 /* RTW_HEADER_P1_h_ */
