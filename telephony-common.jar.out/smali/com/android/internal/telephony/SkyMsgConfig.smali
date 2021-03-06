.class public final Lcom/android/internal/telephony/SkyMsgConfig;
.super Ljava/lang/Object;
.source "SkyMsgConfig.java"


# static fields
.field private static final CS_FILE:Ljava/lang/String; = "/data/data/com.android.phone/factorycmd.dat"

.field public static final DEBUG:Z = true

.field public static final GSDI_CARD_TYPE_ALLOWABLE:I = 0xc

.field public static final GSDI_CARD_TYPE_FORBIDDEN:I = 0xb

.field public static final GSDI_CARD_TYPE_INIT:I = -0x1

.field public static final GSDI_CARD_TYPE_KT_EMPTY_USIM:I = 0x3

.field public static final GSDI_CARD_TYPE_LGU_USIM:I = 0x14

.field public static final GSDI_CARD_TYPE_LG_EMPTY_HOME:I = 0xd

.field public static final GSDI_CARD_TYPE_NONE:I = 0x0

.field public static final GSDI_CARD_TYPE_ONCHIP:I = 0xa

.field public static final GSDI_CARD_TYPE_OTHER_MCC_USIM:I = 0x6

.field public static final GSDI_CARD_TYPE_OTHER_MNC_USIM:I = 0x5

.field public static final GSDI_CARD_TYPE_PLMN_USIM:I = 0x1

.field public static final GSDI_CARD_TYPE_RUIM:I = 0x4

.field public static final GSDI_CARD_TYPE_SIM:I = 0x8

.field public static final GSDI_CARD_TYPE_SKT_EMPTY_USIM:I = 0x2

.field public static final GSDI_CARD_TYPE_TEST_USIM:I = 0x7

.field public static final GSDI_CARD_TYPE_UNKNOWN:I = 0x9

.field public static final LOG_TAG:Ljava/lang/String; = "SkySms"

.field private static final MCC_KR:Ljava/lang/String; = "450"

.field private static final MNC_KT:Ljava/lang/String; = "08"

.field private static final MNC_KT_2:Ljava/lang/String; = "02"

.field private static final MNC_LGU:Ljava/lang/String; = "06"

.field private static final MNC_SKT:Ljava/lang/String; = "05"

.field public static final MODEL_VENDOR:I = 0x8

.field public static final USE_ENCODING_KSC5601:Z = true

.field private static UiccCardType:I = 0x0

.field public static final UiccCard_KT:I = 0x8

.field public static final UiccCard_LG:I = 0x9

.field public static final UiccCard_NONE:I = 0x0

.field public static final UiccCard_OTHER:I = 0x63

.field public static final UiccCard_SKT:I = 0x5

.field public static VENDOR:I = 0x0

.field public static final VENDORNAME_KT:Ljava/lang/String; = "KT"

.field public static final VENDORNAME_LG:Ljava/lang/String; = "LGU+"

.field public static final VENDORNAME_SKT:Ljava/lang/String; = "SKT"

.field private static mSmscRead:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    sput v0, Lcom/android/internal/telephony/SkyMsgConfig;->VENDOR:I

    .line 66
    sput v0, Lcom/android/internal/telephony/SkyMsgConfig;->UiccCardType:I

    .line 74
    sput-boolean v0, Lcom/android/internal/telephony/SkyMsgConfig;->mSmscRead:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public static addSmsCallCount(Z)V
    .locals 2
    .param p0, "fSend"    # Z

    .prologue
    .line 216
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/SkyMsgConfig$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SkyMsgConfig$1;-><init>(Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 262
    return-void
.end method

.method public static getUiccCardType()I
    .locals 4

    .prologue
    .line 190
    sget v1, Lcom/android/internal/telephony/SkyMsgConfig;->UiccCardType:I

    if-nez v1, :cond_0

    .line 191
    const-string v1, "gsm.usim.cardtype"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 192
    .local v0, "CardType":I
    invoke-static {v0}, Lcom/android/internal/telephony/SkyMsgConfig;->setUiccCardType(I)V

    .line 194
    :cond_0
    const-string v1, "SkySms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUiccCardType - GSM/WCDMA UiccCardType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/SkyMsgConfig;->UiccCardType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    sget v1, Lcom/android/internal/telephony/SkyMsgConfig;->UiccCardType:I

    return v1
.end method

.method public static getVendor()I
    .locals 3

    .prologue
    .line 89
    sget v1, Lcom/android/internal/telephony/SkyMsgConfig;->VENDOR:I

    if-nez v1, :cond_3

    .line 90
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "operator":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    .line 99
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/SkyMsgConfig;->getUiccCardType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 100
    const/16 v1, 0x63

    sput v1, Lcom/android/internal/telephony/SkyMsgConfig;->VENDOR:I

    .line 116
    :goto_0
    sget v1, Lcom/android/internal/telephony/SkyMsgConfig;->VENDOR:I

    .line 118
    .end local v0    # "operator":Ljava/lang/String;
    :goto_1
    return v1

    .line 102
    .restart local v0    # "operator":Ljava/lang/String;
    :cond_1
    const/16 v1, 0x8

    sput v1, Lcom/android/internal/telephony/SkyMsgConfig;->VENDOR:I

    goto :goto_0

    .line 114
    :cond_2
    invoke-static {v0}, Lcom/android/internal/telephony/SkyMsgConfig;->procGetUsimVender(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/internal/telephony/SkyMsgConfig;->VENDOR:I

    goto :goto_0

    .line 118
    .end local v0    # "operator":Ljava/lang/String;
    :cond_3
    sget v1, Lcom/android/internal/telephony/SkyMsgConfig;->VENDOR:I

    goto :goto_1
.end method

.method public static initUiccCardType()V
    .locals 2

    .prologue
    .line 174
    const-string v0, "gsm.usim.cardtype"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/SkyMsgConfig;->setUiccCardType(I)V

    .line 176
    return-void
.end method

.method public static isKTVendor()Z
    .locals 2

    .prologue
    .line 143
    invoke-static {}, Lcom/android/internal/telephony/SkyMsgConfig;->getVendor()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLGVendor()Z
    .locals 2

    .prologue
    .line 147
    invoke-static {}, Lcom/android/internal/telephony/SkyMsgConfig;->getVendor()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOtherVendor()Z
    .locals 2

    .prologue
    .line 151
    invoke-static {}, Lcom/android/internal/telephony/SkyMsgConfig;->getVendor()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRoamingSmsCReadFail()Z
    .locals 1

    .prologue
    .line 205
    sget-boolean v0, Lcom/android/internal/telephony/SkyMsgConfig;->mSmscRead:Z

    return v0
.end method

.method public static isSKTVendor()Z
    .locals 2

    .prologue
    .line 139
    invoke-static {}, Lcom/android/internal/telephony/SkyMsgConfig;->getVendor()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static procGetUsimVender(Ljava/lang/String;)I
    .locals 2
    .param p0, "operator"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x63

    .line 123
    const-string v1, "450"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    const-string v1, "05"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    const/4 v0, 0x5

    .line 134
    :cond_0
    :goto_0
    return v0

    .line 126
    :cond_1
    const-string v1, "08"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "02"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 127
    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    .line 128
    :cond_3
    const-string v1, "06"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    const/16 v0, 0x9

    goto :goto_0
.end method

.method public static setRoamingSMSCReadFail(Z)V
    .locals 3
    .param p0, "set"    # Z

    .prologue
    .line 209
    sput-boolean p0, Lcom/android/internal/telephony/SkyMsgConfig;->mSmscRead:Z

    .line 210
    const-string v0, "SkySms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=== mSmscRead : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/SkyMsgConfig;->mSmscRead:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void
.end method

.method public static setUiccCardType(I)V
    .locals 0
    .param p0, "CardType"    # I

    .prologue
    .line 161
    sput p0, Lcom/android/internal/telephony/SkyMsgConfig;->UiccCardType:I

    .line 162
    return-void
.end method
