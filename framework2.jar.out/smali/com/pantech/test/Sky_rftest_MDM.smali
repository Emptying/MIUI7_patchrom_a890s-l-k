.class public Lcom/pantech/test/Sky_rftest_MDM;
.super Ljava/lang/Object;
.source "Sky_rftest_MDM.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "rf_test_mdm"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "sky_rftest"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method static native java_sky_rftest_CheckCalDone_MDM()I
.end method

.method static native java_sky_rftest_CheckInternalCal_MDM()I
.end method

.method static native java_sky_rftest_DebugScreen_MDM(I)[I
.end method

.method static native java_sky_rftest_DebugScreen_Stop_MDM()V
.end method

.method static native java_sky_rftest_GetAntTuner_MDM()[I
.end method

.method static native java_sky_rftest_GetCurChan_MDM()I
.end method

.method static native java_sky_rftest_GetMtplControl_MDM()I
.end method

.method static native java_sky_rftest_GetMultiLinData_MDM(II)[I
.end method

.method static native java_sky_rftest_GetSysMode_MDM()I
.end method

.method static native java_sky_rftest_IsFTMMode_MDM()I
.end method

.method static native java_sky_rftest_Reset_MDM()I
.end method

.method static native java_sky_rftest_SetAntTuner_MDM(IIIIII)V
.end method

.method static native java_sky_rftest_SetBand_MDM(II)V
.end method

.method static native java_sky_rftest_SetBurst_MDM()V
.end method

.method static native java_sky_rftest_SetCalState_MDM(I)V
.end method

.method static native java_sky_rftest_SetChan_MDM(I)V
.end method

.method static native java_sky_rftest_SetMtplControl_MDM(II)I
.end method

.method static native java_sky_rftest_SetPADAC_MDM(I)V
.end method

.method static native java_sky_rftest_SetPDM_MDM(I)V
.end method

.method static native java_sky_rftest_SetPaMode_MDM(I)V
.end method

.method static native java_sky_rftest_SetSecondaryChain_MDM(I)V
.end method

.method static native java_sky_rftest_SetSysMode_MDM(I)V
.end method

.method static native java_sky_rftest_SetTxMode_MDM(I)V
.end method

.method static native java_sky_rftest_SetWaveform_MDM(I)V
.end method

.method static native java_sky_rftest_lte_GetCurChan_MDM()I
.end method

.method static native java_sky_rftest_lte_RxPathControl_MDM(I)B
.end method

.method static native java_sky_rftest_lte_SetBandWidth_MDM(II)V
.end method

.method static native java_sky_rftest_lte_SetBand_MDM(I)V
.end method

.method static native java_sky_rftest_lte_SetChan_MDM(I)V
.end method

.method static native java_sky_rftest_lte_SetPaBiasOverride_MDM(I)V
.end method

.method static native java_sky_rftest_lte_SetPaBiasVal_MDM(I)V
.end method

.method static native java_sky_rftest_lte_SetPaMode_MDM(I)V
.end method

.method static native java_sky_rftest_lte_SetPwrIndex_MDM(I)V
.end method

.method static native java_sky_rftest_lte_SetTxMode_MDM(I)V
.end method

.method static native java_sky_rftest_lte_SetWaveform_MDM(I)V
.end method

.method static native java_sky_rftest_rf_nv_read_cmd_by_byte_MDM(II)[B
.end method

.method static native java_sky_rftest_rf_nv_read_cmd_by_int_MDM(II)[I
.end method

.method static native java_sky_rftest_rf_nv_read_cmd_by_short_MDM(II)[S
.end method

.method static native java_sky_rftest_rf_nv_write_cmd_by_byte_MDM(I[B)I
.end method

.method static native java_sky_rftest_rf_nv_write_cmd_by_int_MDM(I[I)I
.end method

.method static native java_sky_rftest_rf_nv_write_cmd_by_short_MDM(I[S)I
.end method


# virtual methods
.method public CheckInternalCal_MDM()I
    .locals 1

    .prologue
    .line 194
    invoke-static {}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_CheckInternalCal_MDM()I

    move-result v0

    return v0
.end method

.method public DebugScreen_MDM(I)[I
    .locals 1
    .param p1, "sys_mode"    # I

    .prologue
    .line 85
    invoke-static {p1}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_DebugScreen_MDM(I)[I

    move-result-object v0

    return-object v0
.end method

.method public DebugScreen_Stop_MDM()V
    .locals 0

    .prologue
    .line 89
    invoke-static {}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_DebugScreen_Stop_MDM()V

    .line 90
    return-void
.end method

.method public GetAntTuner_MDM()[I
    .locals 1

    .prologue
    .line 186
    invoke-static {}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_GetAntTuner_MDM()[I

    move-result-object v0

    return-object v0
.end method

.method public GetMtplControl_MDM()I
    .locals 1

    .prologue
    .line 202
    invoke-static {}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_GetMtplControl_MDM()I

    move-result v0

    return v0
.end method

.method public SetAntTuner_MDM(IIIIII)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "logic0"    # I
    .param p3, "logic1"    # I
    .param p4, "logic2"    # I
    .param p5, "logic3"    # I
    .param p6, "logic4"    # I

    .prologue
    .line 190
    invoke-static/range {p1 .. p6}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_SetAntTuner_MDM(IIIIII)V

    .line 191
    return-void
.end method

.method public SetMtplControl_MDM(II)I
    .locals 1
    .param p1, "dsi"    # I
    .param p2, "mode"    # I

    .prologue
    .line 198
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_SetMtplControl_MDM(II)I

    move-result v0

    return v0
.end method

.method public SetSecondaryChain_MDM(I)V
    .locals 0
    .param p1, "sec_onoff"    # I

    .prologue
    .line 145
    invoke-static {p1}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_SetSecondaryChain_MDM(I)V

    .line 146
    return-void
.end method

.method public checkCalDone_MDM()I
    .locals 1

    .prologue
    .line 153
    invoke-static {}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_CheckCalDone_MDM()I

    move-result v0

    return v0
.end method

.method public getCurChan_MDM()I
    .locals 1

    .prologue
    .line 137
    invoke-static {}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_GetCurChan_MDM()I

    move-result v0

    return v0
.end method

.method public getMultiLinData_MDM(II)[I
    .locals 1
    .param p1, "power"    # I
    .param p2, "sys_mode"    # I

    .prologue
    .line 117
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_GetMultiLinData_MDM(II)[I

    move-result-object v0

    return-object v0
.end method

.method public getSysMode_MDM()I
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_GetSysMode_MDM()I

    move-result v0

    return v0
.end method

.method public isFTMMode_MDM()I
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_IsFTMMode_MDM()I

    move-result v0

    return v0
.end method

.method public lte_GetCurChan_MDM()I
    .locals 1

    .prologue
    .line 247
    invoke-static {}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_lte_GetCurChan_MDM()I

    move-result v0

    return v0
.end method

.method public lte_RxPathControl_MDM(I)B
    .locals 1
    .param p1, "rw_cmd"    # I

    .prologue
    .line 251
    invoke-static {p1}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_lte_RxPathControl_MDM(I)B

    move-result v0

    return v0
.end method

.method public lte_SetBandWidth_MDM(II)V
    .locals 0
    .param p1, "rxtx"    # I
    .param p2, "bandwidth"    # I

    .prologue
    .line 215
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_lte_SetBandWidth_MDM(II)V

    .line 216
    return-void
.end method

.method public lte_SetBand_MDM(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 211
    invoke-static {p1}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_lte_SetBand_MDM(I)V

    .line 212
    return-void
.end method

.method public lte_SetChan_MDM(I)V
    .locals 0
    .param p1, "chan"    # I

    .prologue
    .line 219
    invoke-static {p1}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_lte_SetChan_MDM(I)V

    .line 220
    return-void
.end method

.method public lte_SetPaBiasOverride_MDM(I)V
    .locals 0
    .param p1, "onoff"    # I

    .prologue
    .line 235
    invoke-static {p1}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_lte_SetPaBiasOverride_MDM(I)V

    .line 236
    return-void
.end method

.method public lte_SetPaBiasVal_MDM(I)V
    .locals 0
    .param p1, "pa_bias"    # I

    .prologue
    .line 239
    invoke-static {p1}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_lte_SetPaBiasVal_MDM(I)V

    .line 240
    return-void
.end method

.method public lte_SetPaMode_MDM(I)V
    .locals 0
    .param p1, "pa_mode"    # I

    .prologue
    .line 231
    invoke-static {p1}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_lte_SetPaMode_MDM(I)V

    .line 232
    return-void
.end method

.method public lte_SetPwrIndex_MDM(I)V
    .locals 0
    .param p1, "pdm"    # I

    .prologue
    .line 243
    invoke-static {p1}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_lte_SetPwrIndex_MDM(I)V

    .line 244
    return-void
.end method

.method public lte_SetTxMode_MDM(I)V
    .locals 0
    .param p1, "tx_mode"    # I

    .prologue
    .line 223
    invoke-static {p1}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_lte_SetTxMode_MDM(I)V

    .line 224
    return-void
.end method

.method public lte_SetWaveform_MDM(I)V
    .locals 0
    .param p1, "onoff"    # I

    .prologue
    .line 227
    invoke-static {p1}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_lte_SetWaveform_MDM(I)V

    .line 228
    return-void
.end method

.method public rf_nv_read_cmd_by_byte_MDM(II)[B
    .locals 1
    .param p1, "nv_items"    # I
    .param p2, "out_len"    # I

    .prologue
    .line 157
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_rf_nv_read_cmd_by_byte_MDM(II)[B

    move-result-object v0

    return-object v0
.end method

.method public rf_nv_read_cmd_by_int_MDM(II)[I
    .locals 1
    .param p1, "nv_items"    # I
    .param p2, "out_len"    # I

    .prologue
    .line 165
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_rf_nv_read_cmd_by_int_MDM(II)[I

    move-result-object v0

    return-object v0
.end method

.method public rf_nv_read_cmd_by_short_MDM(II)[S
    .locals 1
    .param p1, "nv_items"    # I
    .param p2, "out_len"    # I

    .prologue
    .line 161
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_rf_nv_read_cmd_by_short_MDM(II)[S

    move-result-object v0

    return-object v0
.end method

.method public rf_nv_write_cmd_by_byte_MDM(I[B)I
    .locals 1
    .param p1, "nv_items"    # I
    .param p2, "buf"    # [B

    .prologue
    .line 169
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_rf_nv_write_cmd_by_byte_MDM(I[B)I

    move-result v0

    return v0
.end method

.method public rf_nv_write_cmd_by_int_MDM(I[I)I
    .locals 1
    .param p1, "nv_items"    # I
    .param p2, "buf"    # [I

    .prologue
    .line 177
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_rf_nv_write_cmd_by_int_MDM(I[I)I

    move-result v0

    return v0
.end method

.method public rf_nv_write_cmd_by_short_MDM(I[S)I
    .locals 1
    .param p1, "nv_items"    # I
    .param p2, "buf"    # [S

    .prologue
    .line 173
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_rf_nv_write_cmd_by_short_MDM(I[S)I

    move-result v0

    return v0
.end method

.method public rf_reset_MDM()I
    .locals 1

    .prologue
    .line 181
    invoke-static {}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_Reset_MDM()I

    move-result v0

    return v0
.end method

.method public setBand_MDM(II)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "system"    # I

    .prologue
    .line 149
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_SetBand_MDM(II)V

    .line 150
    return-void
.end method

.method public setBurst_MDM()V
    .locals 0

    .prologue
    .line 133
    invoke-static {}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_SetBurst_MDM()V

    .line 134
    return-void
.end method

.method public setCalState_MDM(I)V
    .locals 0
    .param p1, "cal_state"    # I

    .prologue
    .line 97
    invoke-static {p1}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_SetCalState_MDM(I)V

    .line 98
    return-void
.end method

.method public setChan_MDM(I)V
    .locals 0
    .param p1, "chan"    # I

    .prologue
    .line 141
    invoke-static {p1}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_SetChan_MDM(I)V

    .line 142
    return-void
.end method

.method public setPADAC_MDM(I)V
    .locals 0
    .param p1, "dac_value"    # I

    .prologue
    .line 129
    invoke-static {p1}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_SetPADAC_MDM(I)V

    .line 130
    return-void
.end method

.method public setPDM_MDM(I)V
    .locals 0
    .param p1, "pdm"    # I

    .prologue
    .line 121
    invoke-static {p1}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_SetPDM_MDM(I)V

    .line 122
    return-void
.end method

.method public setPaMode_MDM(I)V
    .locals 0
    .param p1, "pa_mode"    # I

    .prologue
    .line 125
    invoke-static {p1}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_SetPaMode_MDM(I)V

    .line 126
    return-void
.end method

.method public setSysMode_MDM(I)V
    .locals 0
    .param p1, "oprt_mode"    # I

    .prologue
    .line 93
    invoke-static {p1}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_SetSysMode_MDM(I)V

    .line 94
    return-void
.end method

.method public setTxMode_MDM(I)V
    .locals 0
    .param p1, "tx_mode"    # I

    .prologue
    .line 109
    invoke-static {p1}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_SetTxMode_MDM(I)V

    .line 110
    return-void
.end method

.method public setWaveform_MDM(I)V
    .locals 0
    .param p1, "waveform"    # I

    .prologue
    .line 113
    invoke-static {p1}, Lcom/pantech/test/Sky_rftest_MDM;->java_sky_rftest_SetWaveform_MDM(I)V

    .line 114
    return-void
.end method
