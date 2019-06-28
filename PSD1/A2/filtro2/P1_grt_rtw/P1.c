/*
 * P1.c
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

#include "P1.h"
#include "P1_private.h"

/* Block states (auto storage) */
DW_P1_T P1_DW;

/* External outputs (root outports fed by signals with auto storage) */
ExtY_P1_T P1_Y;

/* Real-time model */
RT_MODEL_P1_T P1_M_;
RT_MODEL_P1_T *const P1_M = &P1_M_;

/* Model step function */
void P1_step(void)
{
  real_T rtb_SineWave1;
  real_T rtb_SineWave2;

  /* S-Function (sdspsine2): '<S1>/Sine Wave' */
  rtb_SineWave1 = P1_P.SineWave_Amplitude * sin(P1_DW.SineWave_AccFreqNorm);

  /* Update accumulated normalized freq value
     for next sample.  Keep in range [0 2*pi) */
  P1_DW.SineWave_AccFreqNorm += P1_P.SineWave_Frequency * 0.00078539816339744833;
  if (P1_DW.SineWave_AccFreqNorm >= 6.2831853071795862) {
    P1_DW.SineWave_AccFreqNorm -= 6.2831853071795862;
  } else {
    if (P1_DW.SineWave_AccFreqNorm < 0.0) {
      P1_DW.SineWave_AccFreqNorm += 6.2831853071795862;
    }
  }

  /* End of S-Function (sdspsine2): '<S1>/Sine Wave' */

  /* Outport: '<Root>/Out_P1_1' incorporates:
   *  Constant: '<S1>/Constant'
   *  Gain: '<S2>/Gain1'
   *  Sum: '<S2>/Add1'
   */
  P1_Y.Out_P1_1 = (rtb_SineWave1 + P1_P.Constant_Value) * P1_P.Gain1_Gain;

  /* S-Function (sdspsine2): '<S1>/Sine Wave1' */
  rtb_SineWave1 = P1_P.SineWave1_Amplitude * sin(P1_DW.SineWave1_AccFreqNorm);

  /* Update accumulated normalized freq value
     for next sample.  Keep in range [0 2*pi) */
  P1_DW.SineWave1_AccFreqNorm += P1_P.SineWave1_Frequency *
    0.00078539816339744833;
  if (P1_DW.SineWave1_AccFreqNorm >= 6.2831853071795862) {
    P1_DW.SineWave1_AccFreqNorm -= 6.2831853071795862;
  } else {
    if (P1_DW.SineWave1_AccFreqNorm < 0.0) {
      P1_DW.SineWave1_AccFreqNorm += 6.2831853071795862;
    }
  }

  /* End of S-Function (sdspsine2): '<S1>/Sine Wave1' */

  /* S-Function (sdspsine2): '<S1>/Sine Wave2' */
  rtb_SineWave2 = P1_P.SineWave2_Amplitude * sin(P1_DW.SineWave2_AccFreqNorm);

  /* Update accumulated normalized freq value
     for next sample.  Keep in range [0 2*pi) */
  P1_DW.SineWave2_AccFreqNorm += P1_P.SineWave2_Frequency *
    0.00078539816339744833;
  if (P1_DW.SineWave2_AccFreqNorm >= 6.2831853071795862) {
    P1_DW.SineWave2_AccFreqNorm -= 6.2831853071795862;
  } else {
    if (P1_DW.SineWave2_AccFreqNorm < 0.0) {
      P1_DW.SineWave2_AccFreqNorm += 6.2831853071795862;
    }
  }

  /* End of S-Function (sdspsine2): '<S1>/Sine Wave2' */

  /* Outport: '<Root>/Out_P1_2' incorporates:
   *  Gain: '<S3>/Gain1'
   *  Sum: '<S3>/Add1'
   */
  P1_Y.Out_P1_2 = (rtb_SineWave1 + rtb_SineWave2) * P1_P.Gain1_Gain_c;

  /* Matfile logging */
  rt_UpdateTXYLogVars(P1_M->rtwLogInfo, (&P1_M->Timing.taskTime0));

  /* signal main to stop simulation */
  {                                    /* Sample time: [0.000125s, 0.0s] */
    if ((rtmGetTFinal(P1_M)!=-1) &&
        !((rtmGetTFinal(P1_M)-P1_M->Timing.taskTime0) > P1_M->Timing.taskTime0 *
          (DBL_EPSILON))) {
      rtmSetErrorStatus(P1_M, "Simulation finished");
    }
  }

  /* Update absolute time for base rate */
  /* The "clockTick0" counts the number of times the code of this task has
   * been executed. The absolute time is the multiplication of "clockTick0"
   * and "Timing.stepSize0". Size of "clockTick0" ensures timer will not
   * overflow during the application lifespan selected.
   * Timer of this task consists of two 32 bit unsigned integers.
   * The two integers represent the low bits Timing.clockTick0 and the high bits
   * Timing.clockTickH0. When the low bit overflows to 0, the high bits increment.
   */
  if (!(++P1_M->Timing.clockTick0)) {
    ++P1_M->Timing.clockTickH0;
  }

  P1_M->Timing.taskTime0 = P1_M->Timing.clockTick0 * P1_M->Timing.stepSize0 +
    P1_M->Timing.clockTickH0 * P1_M->Timing.stepSize0 * 4294967296.0;
}

/* Model initialize function */
void P1_initialize(void)
{
  /* Registration code */

  /* initialize non-finites */
  rt_InitInfAndNaN(sizeof(real_T));

  /* initialize real-time model */
  (void) memset((void *)P1_M, 0,
                sizeof(RT_MODEL_P1_T));
  rtmSetTFinal(P1_M, 1.0);
  P1_M->Timing.stepSize0 = 0.000125;

  /* Setup for data logging */
  {
    static RTWLogInfo rt_DataLoggingInfo;
    P1_M->rtwLogInfo = &rt_DataLoggingInfo;
  }

  /* Setup for data logging */
  {
    rtliSetLogXSignalInfo(P1_M->rtwLogInfo, (NULL));
    rtliSetLogXSignalPtrs(P1_M->rtwLogInfo, (NULL));
    rtliSetLogT(P1_M->rtwLogInfo, "tout");
    rtliSetLogX(P1_M->rtwLogInfo, "");
    rtliSetLogXFinal(P1_M->rtwLogInfo, "");
    rtliSetLogVarNameModifier(P1_M->rtwLogInfo, "rt_");
    rtliSetLogFormat(P1_M->rtwLogInfo, 0);
    rtliSetLogMaxRows(P1_M->rtwLogInfo, 1000);
    rtliSetLogDecimation(P1_M->rtwLogInfo, 1);

    /*
     * Set pointers to the data and signal info for each output
     */
    {
      static void * rt_LoggedOutputSignalPtrs[] = {
        &P1_Y.Out_P1_1,
        &P1_Y.Out_P1_2
      };

      rtliSetLogYSignalPtrs(P1_M->rtwLogInfo, ((LogSignalPtrsType)
        rt_LoggedOutputSignalPtrs));
    }

    {
      static int_T rt_LoggedOutputWidths[] = {
        1,
        1
      };

      static int_T rt_LoggedOutputNumDimensions[] = {
        2,
        2
      };

      static int_T rt_LoggedOutputDimensions[] = {
        1, 1,
        1, 1
      };

      static boolean_T rt_LoggedOutputIsVarDims[] = {
        0,
        0
      };

      static void* rt_LoggedCurrentSignalDimensions[] = {
        (NULL), (NULL),
        (NULL), (NULL)
      };

      static int_T rt_LoggedCurrentSignalDimensionsSize[] = {
        4, 4,
        4, 4
      };

      static BuiltInDTypeId rt_LoggedOutputDataTypeIds[] = {
        SS_DOUBLE,
        SS_DOUBLE
      };

      static int_T rt_LoggedOutputComplexSignals[] = {
        0,
        0
      };

      static const char_T *rt_LoggedOutputLabels[] = {
        "",
        "" };

      static const char_T *rt_LoggedOutputBlockNames[] = {
        "P1/Out_P1_1",
        "P1/Out_P1_2" };

      static RTWLogDataTypeConvert rt_RTWLogDataTypeConvert[] = {
        { 0, SS_DOUBLE, SS_DOUBLE, 0, 0, 0, 1.0, 0, 0.0 },

        { 0, SS_DOUBLE, SS_DOUBLE, 0, 0, 0, 1.0, 0, 0.0 }
      };

      static RTWLogSignalInfo rt_LoggedOutputSignalInfo[] = {
        {
          2,
          rt_LoggedOutputWidths,
          rt_LoggedOutputNumDimensions,
          rt_LoggedOutputDimensions,
          rt_LoggedOutputIsVarDims,
          rt_LoggedCurrentSignalDimensions,
          rt_LoggedCurrentSignalDimensionsSize,
          rt_LoggedOutputDataTypeIds,
          rt_LoggedOutputComplexSignals,
          (NULL),

          { rt_LoggedOutputLabels },
          (NULL),
          (NULL),
          (NULL),

          { rt_LoggedOutputBlockNames },

          { (NULL) },
          (NULL),
          rt_RTWLogDataTypeConvert
        }
      };

      rtliSetLogYSignalInfo(P1_M->rtwLogInfo, rt_LoggedOutputSignalInfo);

      /* set currSigDims field */
      rt_LoggedCurrentSignalDimensions[0] = &rt_LoggedOutputWidths[0];
      rt_LoggedCurrentSignalDimensions[1] = &rt_LoggedOutputWidths[0];
      rt_LoggedCurrentSignalDimensions[2] = &rt_LoggedOutputWidths[1];
      rt_LoggedCurrentSignalDimensions[3] = &rt_LoggedOutputWidths[1];
    }

    rtliSetLogY(P1_M->rtwLogInfo, "yout");
  }

  /* states (dwork) */
  (void) memset((void *)&P1_DW, 0,
                sizeof(DW_P1_T));

  /* external outputs */
  (void) memset((void *)&P1_Y, 0,
                sizeof(ExtY_P1_T));

  /* Matfile logging */
  rt_StartDataLoggingWithStartTime(P1_M->rtwLogInfo, 0.0, rtmGetTFinal(P1_M),
    P1_M->Timing.stepSize0, (&rtmGetErrorStatus(P1_M)));

  {
    real_T arg;

    /* Start for S-Function (sdspsine2): '<S1>/Sine Wave' */
    /* Trigonometric mode: compute accumulated
       normalized trig fcn argument for each channel */
    /* Keep normalized value in range [0 2*pi) */
    for (arg = P1_P.SineWave_Phase; arg >= 6.2831853071795862; arg -=
         6.2831853071795862) {
    }

    while (arg < 0.0) {
      arg += 6.2831853071795862;
    }

    P1_DW.SineWave_AccFreqNorm = arg;

    /* End of Start for S-Function (sdspsine2): '<S1>/Sine Wave' */

    /* Start for S-Function (sdspsine2): '<S1>/Sine Wave1' */
    /* Trigonometric mode: compute accumulated
       normalized trig fcn argument for each channel */
    /* Keep normalized value in range [0 2*pi) */
    for (arg = P1_P.SineWave1_Phase; arg >= 6.2831853071795862; arg -=
         6.2831853071795862) {
    }

    while (arg < 0.0) {
      arg += 6.2831853071795862;
    }

    P1_DW.SineWave1_AccFreqNorm = arg;

    /* End of Start for S-Function (sdspsine2): '<S1>/Sine Wave1' */

    /* Start for S-Function (sdspsine2): '<S1>/Sine Wave2' */
    /* Trigonometric mode: compute accumulated
       normalized trig fcn argument for each channel */
    /* Keep normalized value in range [0 2*pi) */
    for (arg = P1_P.SineWave2_Phase; arg >= 6.2831853071795862; arg -=
         6.2831853071795862) {
    }

    while (arg < 0.0) {
      arg += 6.2831853071795862;
    }

    P1_DW.SineWave2_AccFreqNorm = arg;

    /* End of Start for S-Function (sdspsine2): '<S1>/Sine Wave2' */
  }

  {
    real_T arg;

    /* InitializeConditions for S-Function (sdspsine2): '<S1>/Sine Wave' */
    /* This code only executes when block is re-enabled in an
       enabled subsystem when the enabled subsystem states on
       re-enabling are set to 'Reset' */
    /* Reset to time zero on re-enable */
    /* Trigonometric mode: compute accumulated
       normalized trig fcn argument for each channel */
    /* Keep normalized value in range [0 2*pi) */
    for (arg = P1_P.SineWave_Phase; arg >= 6.2831853071795862; arg -=
         6.2831853071795862) {
    }

    while (arg < 0.0) {
      arg += 6.2831853071795862;
    }

    P1_DW.SineWave_AccFreqNorm = arg;

    /* End of InitializeConditions for S-Function (sdspsine2): '<S1>/Sine Wave' */

    /* InitializeConditions for S-Function (sdspsine2): '<S1>/Sine Wave1' */
    /* This code only executes when block is re-enabled in an
       enabled subsystem when the enabled subsystem states on
       re-enabling are set to 'Reset' */
    /* Reset to time zero on re-enable */
    /* Trigonometric mode: compute accumulated
       normalized trig fcn argument for each channel */
    /* Keep normalized value in range [0 2*pi) */
    for (arg = P1_P.SineWave1_Phase; arg >= 6.2831853071795862; arg -=
         6.2831853071795862) {
    }

    while (arg < 0.0) {
      arg += 6.2831853071795862;
    }

    P1_DW.SineWave1_AccFreqNorm = arg;

    /* End of InitializeConditions for S-Function (sdspsine2): '<S1>/Sine Wave1' */

    /* InitializeConditions for S-Function (sdspsine2): '<S1>/Sine Wave2' */
    /* This code only executes when block is re-enabled in an
       enabled subsystem when the enabled subsystem states on
       re-enabling are set to 'Reset' */
    /* Reset to time zero on re-enable */
    /* Trigonometric mode: compute accumulated
       normalized trig fcn argument for each channel */
    /* Keep normalized value in range [0 2*pi) */
    for (arg = P1_P.SineWave2_Phase; arg >= 6.2831853071795862; arg -=
         6.2831853071795862) {
    }

    while (arg < 0.0) {
      arg += 6.2831853071795862;
    }

    P1_DW.SineWave2_AccFreqNorm = arg;

    /* End of InitializeConditions for S-Function (sdspsine2): '<S1>/Sine Wave2' */
  }
}

/* Model terminate function */
void P1_terminate(void)
{
  /* (no terminate code required) */
}
