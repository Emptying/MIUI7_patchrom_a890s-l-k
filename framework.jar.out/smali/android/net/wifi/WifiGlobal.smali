.class public Landroid/net/wifi/WifiGlobal;
.super Ljava/lang/Object;
.source "WifiGlobal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiGlobal$PantechWifiFeature;,
        Landroid/net/wifi/WifiGlobal$PantechWifiUxtheme;,
        Landroid/net/wifi/WifiGlobal$PantechWifiModel;,
        Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    }
.end annotation


# static fields
.field public static final ALL_LOG_LEVEL:I = 0x0

.field public static final PACKAGE_STRING:Ljava/lang/String; = "android.net.wifi"

.field public static final PANTECH_WIFIINFO_FEATURE_INDEX:I = 0x3

.field public static final PANTECH_WIFIINFO_MODEL_INDEX:I = 0x1

.field public static final PANTECH_WIFIINFO_UXTHEME_INDEX:I = 0x2

.field public static final PANTECH_WIFIINFO_VENDOR_INDEX:I = 0x0

.field public static PantechWifiFeatureTable:[C = null

.field public static final TAG:Ljava/lang/String; = "WifiGlobal"

.field public static final WFLAG_OFF:C = '0'

.field public static final WFLAG_ON:C = '1'

.field public static final WFLAG_TBD:C = 'X'

.field public static WifiFeatureTable:[C

.field public static WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

.field public static WifiUxtheme:Landroid/net/wifi/WifiGlobal$PantechWifiUxtheme;

.field public static WifiVendor:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

.field public static WifiVendorStr:Ljava/lang/String;

.field public static bInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    sget-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_NONE:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    sput-object v0, Landroid/net/wifi/WifiGlobal;->WifiVendor:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Landroid/net/wifi/WifiGlobal;->bInitialized:Z

    .line 106
    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/net/wifi/WifiGlobal;->PantechWifiFeatureTable:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x58s
        0x58s
        0x31s
        0x58s
        0x31s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method public static checkFeature(Landroid/net/wifi/WifiGlobal$PantechWifiFeature;)Z
    .locals 3
    .param p0, "f"    # Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    .prologue
    .line 215
    invoke-virtual {p0}, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->ordinal()I

    move-result v0

    .line 216
    .local v0, "index":I
    sget-object v1, Landroid/net/wifi/WifiGlobal;->PantechWifiFeatureTable:[C

    aget-char v1, v1, v0

    const/16 v2, 0x31

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 218
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static checkVendor(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;)Z
    .locals 1
    .param p0, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    .prologue
    .line 186
    invoke-static {}, Landroid/net/wifi/WifiGlobal;->getVendor()Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 188
    const/4 v0, 0x1

    .line 191
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAllowLogLevel()I
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public static getGuaranteedVendor(Landroid/content/Context;)Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 168
    invoke-static {p0}, Landroid/net/wifi/WifiGlobal;->guaranteeInitVal(Landroid/content/Context;)V

    .line 169
    const-string v0, "WifiGlobal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getGuaranteedVendor :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiGlobal;->WifiVendor:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    sget-object v0, Landroid/net/wifi/WifiGlobal;->WifiVendor:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    return-object v0
.end method

.method public static getModel()Landroid/net/wifi/WifiGlobal$PantechWifiModel;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Landroid/net/wifi/WifiGlobal;->WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    return-object v0
.end method

.method public static getMyModelInfo(C)C
    .locals 2
    .param p0, "m"    # C

    .prologue
    .line 207
    const/16 v0, 0x30

    .line 208
    .local v0, "modelInfoBase":C
    add-int/lit8 v1, p0, -0x30

    int-to-char v1, v1

    return v1
.end method

.method public static getTheme()I
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public static getVendor()Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .locals 1

    .prologue
    .line 175
    sget-object v0, Landroid/net/wifi/WifiGlobal;->WifiVendor:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    return-object v0
.end method

.method public static getVendorStr(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 224
    const-string v2, ""

    sput-object v2, Landroid/net/wifi/WifiGlobal;->WifiVendorStr:Ljava/lang/String;

    .line 226
    if-eqz p0, :cond_1

    .line 228
    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 229
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "vnd":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 232
    const-string v2, "45005"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "45011"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 234
    :cond_0
    const-string v2, "SKT"

    sput-object v2, Landroid/net/wifi/WifiGlobal;->WifiVendorStr:Ljava/lang/String;

    .line 247
    .end local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v1    # "vnd":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v2, "WifiGlobal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getVendorStr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/net/wifi/WifiGlobal;->WifiVendorStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    sget-object v2, Landroid/net/wifi/WifiGlobal;->WifiVendorStr:Ljava/lang/String;

    return-object v2

    .line 236
    .restart local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .restart local v1    # "vnd":Ljava/lang/String;
    :cond_2
    const-string v2, "45002"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "45004"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "45008"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 238
    :cond_3
    const-string v2, "KT"

    sput-object v2, Landroid/net/wifi/WifiGlobal;->WifiVendorStr:Ljava/lang/String;

    goto :goto_0

    .line 240
    :cond_4
    const-string v2, "45006"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    const-string v2, "LGU"

    sput-object v2, Landroid/net/wifi/WifiGlobal;->WifiVendorStr:Ljava/lang/String;

    goto :goto_0
.end method

.method public static guaranteeInitVal(Landroid/content/Context;)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 153
    sget-boolean v3, Landroid/net/wifi/WifiGlobal;->bInitialized:Z

    if-nez v3, :cond_1

    .line 155
    const-string v1, ""

    .line 156
    .local v1, "str":Ljava/lang/String;
    new-instance v0, Landroid/net/wifi/WifiNative;

    const-string/jumbo v3, "wtemp"

    invoke-direct {v0, v3}, Landroid/net/wifi/WifiNative;-><init>(Ljava/lang/String;)V

    .line 157
    .local v0, "mNative":Landroid/net/wifi/WifiNative;
    invoke-static {p0}, Landroid/net/wifi/WifiGlobal;->getVendorStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "vnd":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiNative;->getPantechWifiInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    :cond_0
    invoke-static {v1, p0}, Landroid/net/wifi/WifiGlobal;->setWifiInfo(Ljava/lang/String;Landroid/content/Context;)V

    .line 163
    .end local v0    # "mNative":Landroid/net/wifi/WifiNative;
    .end local v1    # "str":Ljava/lang/String;
    .end local v2    # "vnd":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static printWifiInfo()V
    .locals 3

    .prologue
    .line 443
    const-string v0, "WifiGlobal"

    const-string v1, "----------------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const-string v0, "WifiGlobal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " WifiVendor  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiGlobal;->WifiVendor:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const-string v0, "WifiGlobal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " WifiModel   : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiGlobal;->WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const-string v0, "WifiGlobal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " WifiUxtheme : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiGlobal;->WifiUxtheme:Landroid/net/wifi/WifiGlobal$PantechWifiUxtheme;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return-void
.end method

.method public static setFeatureFromJni(Landroid/net/wifi/WifiGlobal$PantechWifiFeature;C)V
    .locals 4
    .param p0, "f"    # Landroid/net/wifi/WifiGlobal$PantechWifiFeature;
    .param p1, "v"    # C

    .prologue
    .line 253
    invoke-virtual {p0}, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->ordinal()I

    move-result v0

    .line 254
    .local v0, "index":I
    const-string v1, "WifiGlobal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setFeatureFromJni  PantechWifiFeature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string v1, "WifiGlobal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setFeatureFromJni  Value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    sget-object v1, Landroid/net/wifi/WifiGlobal;->PantechWifiFeatureTable:[C

    aput-char p1, v1, v0

    .line 257
    return-void
.end method

.method public static setWifiInfo(Ljava/lang/String;Landroid/content/Context;)V
    .locals 32
    .param p0, "wi"    # Ljava/lang/String;
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 262
    const/16 v26, 0x0

    .line 268
    .local v26, "i":I
    const/16 v22, 0x31

    .line 269
    .local v22, "VENDOR_SKT":C
    const/16 v20, 0x32

    .line 270
    .local v20, "VENDOR_KT":C
    const/16 v21, 0x33

    .line 272
    .local v21, "VENDOR_LGU":C
    const/4 v4, 0x1

    .line 273
    .local v4, "MODELINFO_EF52S":C
    const/4 v2, 0x2

    .line 274
    .local v2, "MODELINFO_EF52K":C
    const/4 v3, 0x3

    .line 276
    .local v3, "MODELINFO_EF52L":C
    const/4 v5, 0x4

    .line 277
    .local v5, "MODELINFO_EF56S":C
    const/4 v6, 0x5

    .line 278
    .local v6, "MODELINFO_EF57K":C
    const/4 v7, 0x6

    .line 279
    .local v7, "MODELINFO_EF58L":C
    const/4 v10, 0x7

    .line 280
    .local v10, "MODELINFO_EF59S":C
    const/16 v8, 0x8

    .line 281
    .local v8, "MODELINFO_EF59K":C
    const/16 v9, 0x9

    .line 283
    .local v9, "MODELINFO_EF59L":C
    const/16 v11, 0xa

    .line 284
    .local v11, "MODELINFO_EF60S":C
    const/16 v12, 0xb

    .line 285
    .local v12, "MODELINFO_EF61K":C
    const/16 v13, 0xc

    .line 286
    .local v13, "MODELINFO_EF62L":C
    const/16 v16, 0xd

    .line 287
    .local v16, "MODELINFO_EF63S":C
    const/16 v14, 0xe

    .line 288
    .local v14, "MODELINFO_EF63K":C
    const/16 v15, 0xf

    .line 291
    .local v15, "MODELINFO_EF63L":C
    const/16 v18, 0x31

    .line 292
    .local v18, "UXTHEME_DEFAULT":C
    const/16 v17, 0x32

    .line 293
    .local v17, "UXTHEME_BLACK":C
    const/16 v19, 0x33

    .line 295
    .local v19, "UXTHEME_WHITE":C
    if-nez p0, :cond_0

    .line 296
    const-string v29, "WifiGlobal"

    const-string v30, " setWifiInfo is NULL!!"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v29

    add-int/lit8 v23, v29, -0x3

    .line 302
    .local v23, "_WifiFeatureTableLen":I
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v25

    .line 303
    .local v25, "_WifiVendor":C
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v29

    invoke-static/range {v29 .. v29}, Landroid/net/wifi/WifiGlobal;->getMyModelInfo(C)C

    move-result v24

    .line 306
    .local v24, "_WifiModel":C
    packed-switch v25, :pswitch_data_0

    .line 321
    :goto_1
    packed-switch v24, :pswitch_data_1

    .line 404
    :goto_2
    sget-object v29, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_REQ_AUTO_RETRY_AFTER_CONNECTION_FAIL:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    const/16 v30, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v30

    invoke-static/range {v29 .. v30}, Landroid/net/wifi/WifiGlobal;->setFeatureFromJni(Landroid/net/wifi/WifiGlobal$PantechWifiFeature;C)V

    .line 405
    add-int/lit8 v26, v26, 0x1

    .line 406
    sget-object v29, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_BUGFIX_WPS_CONNECTION:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    const/16 v30, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v30

    invoke-static/range {v29 .. v30}, Landroid/net/wifi/WifiGlobal;->setFeatureFromJni(Landroid/net/wifi/WifiGlobal$PantechWifiFeature;C)V

    .line 407
    add-int/lit8 v26, v26, 0x1

    .line 408
    sget-object v29, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_BUGFIX_SETBAND_POLICY:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    const/16 v30, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v30

    invoke-static/range {v29 .. v30}, Landroid/net/wifi/WifiGlobal;->setFeatureFromJni(Landroid/net/wifi/WifiGlobal$PantechWifiFeature;C)V

    .line 409
    add-int/lit8 v26, v26, 0x1

    .line 410
    sget-object v29, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_ADDON_DHCP_REQUEST_BY_CACHED_IP:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    const/16 v30, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v30

    invoke-static/range {v29 .. v30}, Landroid/net/wifi/WifiGlobal;->setFeatureFromJni(Landroid/net/wifi/WifiGlobal$PantechWifiFeature;C)V

    .line 412
    if-eqz p1, :cond_2

    .line 414
    const-string/jumbo v29, "phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/telephony/TelephonyManager;

    .line 415
    .local v27, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v28

    .line 416
    .local v28, "vnd":Ljava/lang/String;
    const-string v29, "WifiGlobal"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, " getSimOperator  : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    if-eqz v28, :cond_2

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_2

    .line 419
    const-string v29, "45005"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_1

    const-string v29, "45011"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 421
    :cond_1
    sget-object v29, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_SKT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    sput-object v29, Landroid/net/wifi/WifiGlobal;->WifiVendor:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    .line 434
    .end local v27    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v28    # "vnd":Ljava/lang/String;
    :cond_2
    :goto_3
    const/16 v29, 0x1

    sput-boolean v29, Landroid/net/wifi/WifiGlobal;->bInitialized:Z

    .line 435
    const-string v29, "WifiGlobal"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, " _WifiModel : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-static {}, Landroid/net/wifi/WifiGlobal;->printWifiInfo()V

    goto/16 :goto_0

    .line 309
    :pswitch_0
    sget-object v29, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_SKT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    sput-object v29, Landroid/net/wifi/WifiGlobal;->WifiVendor:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    goto/16 :goto_1

    .line 313
    :pswitch_1
    sget-object v29, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_KT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    sput-object v29, Landroid/net/wifi/WifiGlobal;->WifiVendor:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    goto/16 :goto_1

    .line 317
    :pswitch_2
    sget-object v29, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_LGU:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    sput-object v29, Landroid/net/wifi/WifiGlobal;->WifiVendor:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    goto/16 :goto_1

    .line 324
    :pswitch_3
    sget-object v29, Landroid/net/wifi/WifiGlobal$PantechWifiModel;->MODELINFO_EF52S:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    sput-object v29, Landroid/net/wifi/WifiGlobal;->WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    goto/16 :goto_2

    .line 328
    :pswitch_4
    sget-object v29, Landroid/net/wifi/WifiGlobal$PantechWifiModel;->MODELINFO_EF52K:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    sput-object v29, Landroid/net/wifi/WifiGlobal;->WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    goto/16 :goto_2

    .line 332
    :pswitch_5
    sget-object v29, Landroid/net/wifi/WifiGlobal$PantechWifiModel;->MODELINFO_EF52L:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    sput-object v29, Landroid/net/wifi/WifiGlobal;->WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    goto/16 :goto_2

    .line 336
    :pswitch_6
    sget-object v29, Landroid/net/wifi/WifiGlobal$PantechWifiModel;->MODELINFO_EF56S:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    sput-object v29, Landroid/net/wifi/WifiGlobal;->WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    goto/16 :goto_2

    .line 340
    :pswitch_7
    sget-object v29, Landroid/net/wifi/WifiGlobal$PantechWifiModel;->MODELINFO_EF57K:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    sput-object v29, Landroid/net/wifi/WifiGlobal;->WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    goto/16 :goto_2

    .line 344
    :pswitch_8
    sget-object v29, Landroid/net/wifi/WifiGlobal$PantechWifiModel;->MODELINFO_EF58L:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    sput-object v29, Landroid/net/wifi/WifiGlobal;->WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    goto/16 :goto_2

    .line 347
    :pswitch_9
    sget-object v29, Landroid/net/wifi/WifiGlobal$PantechWifiModel;->MODELINFO_EF59S:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    sput-object v29, Landroid/net/wifi/WifiGlobal;->WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    goto/16 :goto_2

    .line 351
    :pswitch_a
    sget-object v29, Landroid/net/wifi/WifiGlobal$PantechWifiModel;->MODELINFO_EF59K:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    sput-object v29, Landroid/net/wifi/WifiGlobal;->WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    goto/16 :goto_2

    .line 355
    :pswitch_b
    sget-object v29, Landroid/net/wifi/WifiGlobal$PantechWifiModel;->MODELINFO_EF59L:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    sput-object v29, Landroid/net/wifi/WifiGlobal;->WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    goto/16 :goto_2

    .line 360
    :pswitch_c
    sget-object v29, Landroid/net/wifi/WifiGlobal$PantechWifiModel;->MODELINFO_EF60S:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    sput-object v29, Landroid/net/wifi/WifiGlobal;->WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    goto/16 :goto_2

    .line 364
    :pswitch_d
    sget-object v29, Landroid/net/wifi/WifiGlobal$PantechWifiModel;->MODELINFO_EF61K:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    sput-object v29, Landroid/net/wifi/WifiGlobal;->WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    goto/16 :goto_2

    .line 368
    :pswitch_e
    sget-object v29, Landroid/net/wifi/WifiGlobal$PantechWifiModel;->MODELINFO_EF62L:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    sput-object v29, Landroid/net/wifi/WifiGlobal;->WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    goto/16 :goto_2

    .line 372
    :pswitch_f
    sget-object v29, Landroid/net/wifi/WifiGlobal$PantechWifiModel;->MODELINFO_EF63S:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    sput-object v29, Landroid/net/wifi/WifiGlobal;->WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    goto/16 :goto_2

    .line 376
    :pswitch_10
    sget-object v29, Landroid/net/wifi/WifiGlobal$PantechWifiModel;->MODELINFO_EF63K:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    sput-object v29, Landroid/net/wifi/WifiGlobal;->WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    goto/16 :goto_2

    .line 380
    :pswitch_11
    sget-object v29, Landroid/net/wifi/WifiGlobal$PantechWifiModel;->MODELINFO_EF63L:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    sput-object v29, Landroid/net/wifi/WifiGlobal;->WifiModel:Landroid/net/wifi/WifiGlobal$PantechWifiModel;

    goto/16 :goto_2

    .line 423
    .restart local v27    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .restart local v28    # "vnd":Ljava/lang/String;
    :cond_3
    const-string v29, "45002"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_4

    const-string v29, "45004"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_4

    const-string v29, "45008"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_5

    .line 425
    :cond_4
    sget-object v29, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_KT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    sput-object v29, Landroid/net/wifi/WifiGlobal;->WifiVendor:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    goto/16 :goto_3

    .line 427
    :cond_5
    const-string v29, "45006"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2

    .line 429
    sget-object v29, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_LGU:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    sput-object v29, Landroid/net/wifi/WifiGlobal;->WifiVendor:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    goto/16 :goto_3

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 321
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method
