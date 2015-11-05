.class public interface abstract Lcom/android/internal/telephony/IQcRilHook;
.super Ljava/lang/Object;
.source "IQcRilHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IQcRilHook$QcRilExtendedDbmIntlKddiAocr;
    }
.end annotation


# static fields
.field public static final QCRILHOOK_BASE:I = 0x80000

.field public static final QCRILHOOK_DMS_GET_DEVICE_SERIAL_NUMBERS:I = 0x8100a

.field public static final QCRILHOOK_DMS_GET_FTM_MODE:I = 0x81007

.field public static final QCRILHOOK_DMS_GET_SPC_CHANGE_ENABLED:I = 0x8100b

.field public static final QCRILHOOK_DMS_GET_SW_VERSION:I = 0x81008

.field public static final QCRILHOOK_DMS_SET_SPC_CHANGE_ENABLED:I = 0x8100c

.field public static final QCRILHOOK_DMS_UPDATE_SERVICE_PROGRAMING_CODE:I = 0x81009

.field public static final QCRILHOOK_GO_DORMANT:I = 0x80003

.field public static final QCRILHOOK_ME_DEPERSONALIZATION:I = 0x80004

.field public static final QCRILHOOK_NAS_GET_3GPP2_SUBSCRIPTION_INFO:I = 0x81001

.field public static final QCRILHOOK_NAS_GET_MOB_CAI_REV:I = 0x81003

.field public static final QCRILHOOK_NAS_GET_RTRE_CONFIG:I = 0x81005

.field public static final QCRILHOOK_NAS_SET_3GPP2_SUBSCRIPTION_INFO:I = 0x81002

.field public static final QCRILHOOK_NAS_SET_MOB_CAI_REV:I = 0x81004

.field public static final QCRILHOOK_NAS_SET_RTRE_CONFIG:I = 0x81006

.field public static final QCRILHOOK_NAS_UPDATE_AKEY:I = 0x81000

.field public static final QCRILHOOK_NV_READ:I = 0x80001

.field public static final QCRILHOOK_NV_WRITE:I = 0x80002

.field public static final QCRILHOOK_QMI_OEMHOOK_REQUEST_ID:I = 0x80064

.field public static final QCRILHOOK_SKY_BASE:I = 0x90000

.field public static final QCRILHOOK_UNSOL_CDMA_BURST_DTMF:I = 0x803e9

.field public static final QCRILHOOK_UNSOL_CDMA_CONT_DTMF_START:I = 0x803ea

.field public static final QCRILHOOK_UNSOL_CDMA_CONT_DTMF_STOP:I = 0x803eb

.field public static final QCRILHOOK_UNSOL_EXTENDED_DBM_INTL:I = 0x803e8

.field public static final QCRILHOOK_UNSOL_LOCAL_RINGBACK_START:I = 0x803ec

.field public static final QCRILHOOK_UNSOL_LOCAL_RINGBACK_STOP:I = 0x803ed

.field public static final QCRILHOOK_UNSOL_OEMHOOK:I = 0x8044c

.field public static final QCRILHOOK_VOICE_GET_CONFIG:I = 0x8100e

.field public static final QCRILHOOK_VOICE_SET_CONFIG:I = 0x8100d

.field public static final QCRIL_EVT_HOOK_GET_PAGING_PRIORITY:I = 0x80008

.field public static final QCRIL_EVT_HOOK_GET_TUNEAWAY:I = 0x80006

.field public static final QCRIL_EVT_HOOK_INFORM_SHUTDOWN:I = 0x8000a

.field public static final QCRIL_EVT_HOOK_SET_PAGING_PRIORITY:I = 0x80007

.field public static final QCRIL_EVT_HOOK_SET_TUNEAWAY:I = 0x80005

.field public static final QCRIL_EVT_HOOK_SKY_PROTOCOL:I = 0x90001

.field public static final SERVICE_PROGRAMMING_BASE:I = 0x1000


# virtual methods
.method public abstract registerForExtendedDbmIntl(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForFieldTestData(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract sendQcRilHookMsg(I)Landroid/os/AsyncResult;
.end method

.method public abstract sendQcRilHookMsg(IB)Landroid/os/AsyncResult;
.end method

.method public abstract sendQcRilHookMsg(II)Landroid/os/AsyncResult;
.end method

.method public abstract sendQcRilHookMsg(ILjava/lang/String;)Landroid/os/AsyncResult;
.end method

.method public abstract sendQcRilHookMsg(I[B)Landroid/os/AsyncResult;
.end method

.method public abstract unregisterForExtendedDbmIntl(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForFieldTestData(Landroid/os/Handler;)V
.end method
