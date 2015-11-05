.class final enum Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;
.super Ljava/lang/Enum;
.source "SkyEventNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SkyEventNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EnumEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

.field public static final enum EVENT_CALLMGR_SIGNAL:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

.field public static final enum EVENT_OTA_DL_FAIL:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

.field public static final enum EVENT_OTA_RP_ERR:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

.field public static final enum EVENT_SRVSYS_IMMED_REJ:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

.field public static final enum EVENT_SRVSYS_LTE_A_STATUS:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

.field public static final enum EVENT_SRVSYS_MANUAL_REG_START:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

.field public static final enum EVENT_SRVSYS_MANUAL_STATUS:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

.field public static final enum EVENT_SVCMGR_CHANGED:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

.field public static final enum EVENT_SVCMGR_DISP_CLEAR:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

.field public static final enum EVENT_SVCMGR_IMMED_REJ:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

.field public static final enum EVENT_SVCMGR_NO_NETWORK_IN_GSM_ONLY:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

.field public static final enum EVENT_SVCMGR_NO_NETWORK_IN_GSM_ONLY_CLEAR:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

.field public static final enum EVENT_SVCMGR_OUTBOUND_TO_DOMESTIC:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

.field public static final enum EVENT_SVCMGR_SYSTEM_SCAN_DISP:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

.field public static final enum EVENT_SVCMGR_UICC_DISP_CLEAR:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

.field public static final enum EVENT_SVCMGR_UICC_LOCKING_DISP:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

.field public static final enum EVENT_SVCMGR_WHEN_ORIG_START:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

.field public static final enum EVENT_UNKNOWN:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

.field public static final enum EVENT_USIM_CARD_REMOVED_EVENT:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

.field public static final enum EVENT_USIM_PERSO_EVENT:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;


# instance fields
.field eventName:Ljava/lang/String;

.field intentName:Ljava/lang/String;

.field isSticky:Z

.field p:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 42
    new-instance v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    const-string v1, "EVENT_SVCMGR_CHANGED"

    const-string v2, "SVCMGR.SERVICE_CHANGED"

    const-string v3, "com.android.internal.telephony.gsm.SkySvcMgr.SERVICE_CHANGED_EVENT"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->EVENT_SVCMGR_CHANGED:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    .line 43
    new-instance v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    const-string v1, "EVENT_SVCMGR_IMMED_REJ"

    const-string v2, "SVCMGR.IMMED_REJ_EVENT"

    const-string v3, "com.android.internal.telephony.gsm.SkySvcMgr.IMMED_REJ_EVENT"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->EVENT_SVCMGR_IMMED_REJ:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    .line 44
    new-instance v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    const-string v1, "EVENT_SVCMGR_WHEN_ORIG_START"

    const-string v2, "SVCMGR.WHEN_ORIG_START_EVENT"

    const-string v3, "com.android.internal.telephony.gsm.SkySvcMgr.WHEN_ORIG_START_EVENT"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->EVENT_SVCMGR_WHEN_ORIG_START:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    .line 45
    new-instance v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    const-string v1, "EVENT_SVCMGR_DISP_CLEAR"

    const-string v2, "SVCMGR.DISP_CLEAR_EVENT"

    const-string v3, "com.android.internal.telephony.gsm.SkySvcMgr.DISP_CLEAR_EVENT"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->EVENT_SVCMGR_DISP_CLEAR:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    .line 46
    new-instance v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    const-string v1, "EVENT_SVCMGR_SYSTEM_SCAN_DISP"

    const-string v2, "SVCMGR.SYSTEM_SCAN_DISP_EVENT"

    const-string v3, "com.android.internal.telephony.gsm.SkySvcMgr.SYSTEM_SCAN_DISP_EVENT"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->EVENT_SVCMGR_SYSTEM_SCAN_DISP:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    .line 47
    new-instance v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    const-string v1, "EVENT_SVCMGR_UICC_LOCKING_DISP"

    const/4 v2, 0x5

    const-string v3, "SVCMGR.UICC_LOCKING_DISP_EVENT"

    const-string v4, "com.android.internal.telephony.gsm.SkySvcMgr.UICC_LOCKING_DISP_EVENT"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->EVENT_SVCMGR_UICC_LOCKING_DISP:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    .line 48
    new-instance v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    const-string v1, "EVENT_SVCMGR_UICC_DISP_CLEAR"

    const/4 v2, 0x6

    const-string v3, "SVCMGR.UICC_DISP_CLEAR_EVENT"

    const-string v4, "com.android.internal.telephony.gsm.SkySvcMgr.UICC_DISP_CLEAR_EVENT"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->EVENT_SVCMGR_UICC_DISP_CLEAR:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    .line 52
    new-instance v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    const-string v1, "EVENT_SVCMGR_NO_NETWORK_IN_GSM_ONLY"

    const/4 v2, 0x7

    const-string v3, "SVCMGR.NO_NETWORK_IN_GSM_ONLY"

    const-string v4, "com.android.internal.telephony.gsm.SkySvcMgr.NO_NETWORK_IN_GSM_ONLY"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->EVENT_SVCMGR_NO_NETWORK_IN_GSM_ONLY:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    .line 53
    new-instance v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    const-string v1, "EVENT_SVCMGR_NO_NETWORK_IN_GSM_ONLY_CLEAR"

    const/16 v2, 0x8

    const-string v3, "SVCMGR.NO_NETWORK_IN_GSM_ONLY_CLEAR"

    const-string v4, "com.android.internal.telephony.gsm.SkySvcMgr.NO_NETWORK_IN_GSM_ONLY_CLEAR"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->EVENT_SVCMGR_NO_NETWORK_IN_GSM_ONLY_CLEAR:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    .line 57
    new-instance v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    const-string v1, "EVENT_SRVSYS_IMMED_REJ"

    const/16 v2, 0x9

    const-string v3, "SRVSYS.IMMED_REJ_EVENT"

    const-string v4, "com.android.internal.telephony.gsm.IMMED_REJ_EVENT"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->EVENT_SRVSYS_IMMED_REJ:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    .line 58
    new-instance v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    const-string v1, "EVENT_SRVSYS_MANUAL_STATUS"

    const/16 v2, 0xa

    const-string v3, "SRVSYS.MANUAL_STATUS_SRV"

    const-string v4, "com.android.internal.telephony.gsm.MANUAL_STATUS_SRV"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->EVENT_SRVSYS_MANUAL_STATUS:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    .line 59
    new-instance v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    const-string v1, "EVENT_SRVSYS_MANUAL_REG_START"

    const/16 v2, 0xb

    const-string v3, "SRVSYS.MANUAL_REG_START"

    const-string v4, "com.android.internal.telephony.gsm.MANUAL_REG_START"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->EVENT_SRVSYS_MANUAL_REG_START:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    .line 63
    new-instance v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    const-string v1, "EVENT_USIM_PERSO_EVENT"

    const/16 v2, 0xc

    const-string v3, "USIM.PERSO_EVENT_RECEIVED"

    const-string v4, "com.android.internal.telephony.gsm.SkyUsimPerso.PERSO_EVENT"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->EVENT_USIM_PERSO_EVENT:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    .line 67
    new-instance v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    const-string v1, "EVENT_OTA_DL_FAIL"

    const/16 v2, 0xd

    const-string v3, "OTA.DL_FAIL"

    const-string v4, "com.android.internal.telephony.gsm.SkyOtaSubs.OTA_DATA_DOWNLOAD_FAIL_EVENT"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->EVENT_OTA_DL_FAIL:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    .line 68
    new-instance v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    const-string v1, "EVENT_OTA_RP_ERR"

    const/16 v2, 0xe

    const-string v3, "OTA.RP_ERR"

    const-string v4, "com.android.internal.telephony.gsm.SkyOtaSubs.OTA_RP_ERR_EVENT"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->EVENT_OTA_RP_ERR:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    .line 72
    new-instance v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    const-string v1, "EVENT_USIM_CARD_REMOVED_EVENT"

    const/16 v2, 0xf

    const-string v3, "USIM.CARD_REMOVED"

    const-string v4, "com.android.internal.telephony.gsm.SkyUsimPerso.CARD_REMOVED_EVENT"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->EVENT_USIM_CARD_REMOVED_EVENT:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    .line 76
    new-instance v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    const-string v1, "EVENT_CALLMGR_SIGNAL"

    const/16 v2, 0x10

    const-string v3, "CALLMGR.SIGNAL_EVENT"

    const-string v4, "com.android.internal.telephony.gsm.SIGNAL_EVENT"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->EVENT_CALLMGR_SIGNAL:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    .line 80
    new-instance v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    const-string v1, "EVENT_SRVSYS_LTE_A_STATUS"

    const/16 v2, 0x11

    const-string v3, "SRVSYS.LTE_A_STATUS"

    const-string v4, "com.android.internal.telephony.gsm.LTE_A_STATUS_EVENT"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->EVENT_SRVSYS_LTE_A_STATUS:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    .line 84
    new-instance v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    const-string v1, "EVENT_SVCMGR_OUTBOUND_TO_DOMESTIC"

    const/16 v2, 0x12

    const-string v3, "SVCMGR.OUTBOUND_TO_DOMESTIC_EVENT"

    const-string v4, "com.android.internal.telephony.gsm.SkySvcMgr.OUTBOUND_TO_DOMESTIC_EVENT"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->EVENT_SVCMGR_OUTBOUND_TO_DOMESTIC:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    .line 89
    new-instance v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    const-string v1, "EVENT_UNKNOWN"

    const/16 v2, 0x13

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->EVENT_UNKNOWN:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    .line 39
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    sget-object v1, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->EVENT_SVCMGR_CHANGED:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->EVENT_SVCMGR_IMMED_REJ:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->EVENT_SVCMGR_WHEN_ORIG_START:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->EVENT_SVCMGR_DISP_CLEAR:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->EVENT_SVCMGR_SYSTEM_SCAN_DISP:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->EVENT_SVCMGR_UICC_LOCKING_DISP:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->EVENT_SVCMGR_UICC_DISP_CLEAR:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->EVENT_SVCMGR_NO_NETWORK_IN_GSM_ONLY:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->EVENT_SVCMGR_NO_NETWORK_IN_GSM_ONLY_CLEAR:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->EVENT_SRVSYS_IMMED_REJ:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->EVENT_SRVSYS_MANUAL_STATUS:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->EVENT_SRVSYS_MANUAL_REG_START:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->EVENT_USIM_PERSO_EVENT:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->EVENT_OTA_DL_FAIL:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->EVENT_OTA_RP_ERR:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->EVENT_USIM_CARD_REMOVED_EVENT:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->EVENT_CALLMGR_SIGNAL:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->EVENT_SRVSYS_LTE_A_STATUS:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->EVENT_SVCMGR_OUTBOUND_TO_DOMESTIC:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->EVENT_UNKNOWN:Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->$VALUES:[Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p3, "eventName"    # Ljava/lang/String;
    .param p4, "intentName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 94
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->isSticky:Z

    .line 121
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->eventName:Ljava/lang/String;

    .line 122
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->intentName:Ljava/lang/String;

    .line 123
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->isSticky:Z

    .line 124
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p3, "eventName"    # Ljava/lang/String;
    .param p4, "intentName"    # Ljava/lang/String;
    .param p5, "isSticky"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 94
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->isSticky:Z

    .line 128
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->eventName:Ljava/lang/String;

    .line 129
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->intentName:Ljava/lang/String;

    .line 130
    if-lez p5, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->isSticky:Z

    .line 132
    :goto_0
    return-void

    .line 131
    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->isSticky:Z

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->$VALUES:[Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;

    return-object v0
.end method


# virtual methods
.method public notify(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 103
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->intentName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 105
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 106
    .local v0, "ar":Landroid/os/AsyncResult;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->intentName:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    const-string v3, "data"

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 108
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->isSticky:Z

    if-eqz v2, :cond_2

    .line 110
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->p:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 117
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 114
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->p:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method setPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .param p1, "p"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SkyEventNotifier$EnumEvent;->p:Lcom/android/internal/telephony/Phone;

    .line 137
    return-void
.end method
