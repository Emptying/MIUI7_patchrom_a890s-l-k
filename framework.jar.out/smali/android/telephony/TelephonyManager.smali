.class public Landroid/telephony/TelephonyManager;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# static fields
.field public static final ACTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field public static final ACTION_RESPOND_VIA_MESSAGE:Ljava/lang/String; = "android.intent.action.RESPOND_VIA_MESSAGE"

.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_OFFHOOK:I = 0x2

.field public static final CALL_STATE_RINGING:I = 0x1

.field public static final DATA_ACTIVITY_DORMANT:I = 0x4

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final DATA_CONNECTED:I = 0x2

.field public static final DATA_CONNECTING:I = 0x1

.field public static final DATA_DISCONNECTED:I = 0x0

.field public static final DATA_SUSPENDED:I = 0x3

.field public static final DATA_UNKNOWN:I = -0x1

.field public static final EXTRA_INCOMING_NUMBER:Ljava/lang/String; = "incoming_number"

.field public static final EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_STATE_IDLE:Ljava/lang/String;

.field public static final EXTRA_STATE_OFFHOOK:Ljava/lang/String;

.field public static final EXTRA_STATE_RINGING:Ljava/lang/String;

.field public static final NETWORK_CLASS_2_G:I = 0x1

.field public static final NETWORK_CLASS_3_G:I = 0x2

.field public static final NETWORK_CLASS_4_G:I = 0x3

.field public static final NETWORK_CLASS_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_1xRTT:I = 0x7

.field public static final NETWORK_TYPE_CDMA:I = 0x4

.field public static final NETWORK_TYPE_EDGE:I = 0x2

.field public static final NETWORK_TYPE_EHRPD:I = 0xe

.field public static final NETWORK_TYPE_EVDO_0:I = 0x5

.field public static final NETWORK_TYPE_EVDO_A:I = 0x6

.field public static final NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final NETWORK_TYPE_GPRS:I = 0x1

.field public static final NETWORK_TYPE_GSM:I = 0x10

.field public static final NETWORK_TYPE_HSDPA:I = 0x8

.field public static final NETWORK_TYPE_HSPA:I = 0xa

.field public static final NETWORK_TYPE_HSPAP:I = 0xf

.field public static final NETWORK_TYPE_HSUPA:I = 0x9

.field public static final NETWORK_TYPE_IDEN:I = 0xb

.field public static final NETWORK_TYPE_IWLAN:I = 0x12

.field public static final NETWORK_TYPE_LTE:I = 0xd

.field public static final NETWORK_TYPE_TD_SCDMA:I = 0x11

.field public static final NETWORK_TYPE_UMTS:I = 0x3

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_NONE:I = 0x0

.field public static final PHONE_TYPE_SIP:I = 0x3

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_CARD_IO_ERROR:I = 0x6

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_PERM_DISABLED:I = 0x7

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_SIM_LOCKED:I = 0x8

.field public static final SIM_STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TelephonyManager"

.field private static networkType:I

.field private static sInstance:Landroid/telephony/TelephonyManager;

.field private static final sKernelCmdLine:Ljava/lang/String;

.field private static final sLteOnCdmaProductType:Ljava/lang/String;

.field private static final sProductTypePattern:Ljava/util/regex/Pattern;

.field private static sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# instance fields
.field private final mContext:Landroid/content/Context;

.field nvif:Lcom/android/internal/telephony/NVInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 115
    new-instance v0, Landroid/telephony/TelephonyManager;

    invoke-direct {v0}, Landroid/telephony/TelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    .line 219
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 225
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    .line 231
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    .line 539
    invoke-static {}, Landroid/telephony/TelephonyManager;->getProcCmdLine()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->sKernelCmdLine:Ljava/lang/String;

    .line 542
    const-string v0, "\\sproduct_type\\s*=\\s*(\\w+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->sProductTypePattern:Ljava/util/regex/Pattern;

    .line 546
    const-string/jumbo v0, "telephony.lteOnCdmaProductType"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->sLteOnCdmaProductType:Ljava/lang/String;

    .line 2498
    const/4 v0, 0x0

    sput v0, Landroid/telephony/TelephonyManager;->networkType:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2012
    new-instance v0, Lcom/android/internal/telephony/NVInterface;

    invoke-direct {v0}, Lcom/android/internal/telephony/NVInterface;-><init>()V

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->nvif:Lcom/android/internal/telephony/NVInterface;

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2012
    new-instance v1, Lcom/android/internal/telephony/NVInterface;

    invoke-direct {v1}, Lcom/android/internal/telephony/NVInterface;-><init>()V

    iput-object v1, p0, Landroid/telephony/TelephonyManager;->nvif:Lcom/android/internal/telephony/NVInterface;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 98
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 99
    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 104
    :goto_0
    sget-object v1, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-nez v1, :cond_0

    .line 105
    const-string/jumbo v1, "telephony.registry"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    sput-object v1, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 108
    :cond_0
    return-void

    .line 101
    :cond_1
    iput-object p1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private getCapability()Ljava/lang/String;
    .locals 7

    .prologue
    .line 2174
    iget-object v5, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 2176
    .local v3, "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 2177
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    .line 2179
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v2, :cond_4

    .line 2180
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 2181
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 2183
    .local v4, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v5, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2184
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "ollehWiFi"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    const-string v6, "QOOKnSHOW"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2186
    :cond_0
    const-string v5, "[WPA Enterprise]"

    .line 2196
    .end local v0    # "i":I
    .end local v4    # "scanResult":Landroid/net/wifi/ScanResult;
    :goto_1
    return-object v5

    .line 2188
    .restart local v0    # "i":I
    .restart local v4    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_1
    iget-object v5, v4, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2189
    const-string v5, "[Open]"

    goto :goto_1

    .line 2191
    :cond_2
    iget-object v5, v4, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    goto :goto_1

    .line 2180
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2196
    .end local v0    # "i":I
    .end local v4    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_4
    const-string/jumbo v5, "null"

    goto :goto_1
.end method

.method public static getCardHwDetect()Z
    .locals 3

    .prologue
    .line 1654
    :try_start_0
    const-string v1, "gsm.card-hw-detect.status"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1656
    .local v0, "ex":Ljava/lang/NullPointerException;
    :goto_0
    return v1

    .line 1655
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_0
    move-exception v0

    .line 1656
    .restart local v0    # "ex":Ljava/lang/NullPointerException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getCardState()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1627
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephonyStatic()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getIccCardState()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1631
    :goto_0
    return-object v1

    .line 1628
    :catch_0
    move-exception v0

    .line 1629
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1630
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1631
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method private getChannel()Ljava/lang/String;
    .locals 8

    .prologue
    .line 2045
    iget-object v5, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 2047
    .local v3, "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 2048
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    .line 2050
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v2, :cond_1

    .line 2051
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2052
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 2054
    .local v4, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v5, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2056
    const-string v5, "TelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getChannel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {p0, v7}, Landroid/telephony/TelephonyManager;->getChannelByFrequency(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    iget v5, v4, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {p0, v5}, Landroid/telephony/TelephonyManager;->getChannelByFrequency(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 2061
    .end local v0    # "i":I
    .end local v4    # "scanResult":Landroid/net/wifi/ScanResult;
    :goto_1
    return-object v5

    .line 2051
    .restart local v0    # "i":I
    .restart local v4    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2061
    .end local v0    # "i":I
    .end local v4    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_1
    const-string/jumbo v5, "null"

    goto :goto_1
.end method

.method public static getDefault()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static getDefaultSubscription()I
    .locals 2

    .prologue
    .line 647
    const-string/jumbo v0, "persist.radio.default.sub"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getISkyTelephony()Lcom/android/internal/telephony/gsm/ISkyTelephony;
    .locals 1

    .prologue
    .line 1609
    const-string v0, "iskytelephony"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/gsm/ISkyTelephony;

    move-result-object v0

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 1412
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public static getITelephonyStatic()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 1618
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public static getLteOnCdmaModeStatic()I
    .locals 7

    .prologue
    const/4 v5, -0x1

    .line 562
    const-string v2, ""

    .line 564
    .local v2, "productType":Ljava/lang/String;
    const-string/jumbo v4, "telephony.lteOnCdmaDevice"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 566
    .local v0, "curVal":I
    move v3, v0

    .line 567
    .local v3, "retVal":I
    if-ne v3, v5, :cond_0

    .line 568
    sget-object v4, Landroid/telephony/TelephonyManager;->sProductTypePattern:Ljava/util/regex/Pattern;

    sget-object v5, Landroid/telephony/TelephonyManager;->sKernelCmdLine:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 569
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 570
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 571
    sget-object v4, Landroid/telephony/TelephonyManager;->sLteOnCdmaProductType:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 572
    const/4 v3, 0x1

    .line 581
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    const-string v4, "TelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLteOnCdmaMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " curVal="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " product_type=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' lteOnCdmaProductType=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/telephony/TelephonyManager;->sLteOnCdmaProductType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    return v3

    .line 574
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 577
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getNetworkClass(I)I
    .locals 1
    .param p0, "networkType"    # I

    .prologue
    .line 796
    packed-switch p0, :pswitch_data_0

    .line 819
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 803
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 814
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 817
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 796
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 836
    packed-switch p0, :pswitch_data_0

    .line 874
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 838
    :pswitch_0
    const-string v0, "GPRS"

    goto :goto_0

    .line 840
    :pswitch_1
    const-string v0, "EDGE"

    goto :goto_0

    .line 842
    :pswitch_2
    const-string v0, "UMTS"

    goto :goto_0

    .line 844
    :pswitch_3
    const-string v0, "HSDPA"

    goto :goto_0

    .line 846
    :pswitch_4
    const-string v0, "HSUPA"

    goto :goto_0

    .line 848
    :pswitch_5
    const-string v0, "HSPA"

    goto :goto_0

    .line 850
    :pswitch_6
    const-string v0, "CDMA"

    goto :goto_0

    .line 852
    :pswitch_7
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_0

    .line 854
    :pswitch_8
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_0

    .line 856
    :pswitch_9
    const-string v0, "CDMA - EvDo rev. B"

    goto :goto_0

    .line 858
    :pswitch_a
    const-string v0, "CDMA - 1xRTT"

    goto :goto_0

    .line 860
    :pswitch_b
    const-string v0, "LTE"

    goto :goto_0

    .line 862
    :pswitch_c
    const-string v0, "CDMA - eHRPD"

    goto :goto_0

    .line 864
    :pswitch_d
    const-string v0, "iDEN"

    goto :goto_0

    .line 866
    :pswitch_e
    const-string v0, "HSPA+"

    goto :goto_0

    .line 868
    :pswitch_f
    const-string v0, "GSM"

    goto :goto_0

    .line 870
    :pswitch_10
    const-string v0, "TD-SCDMA"

    goto :goto_0

    .line 872
    :pswitch_11
    const-string v0, "IWLAN"

    goto :goto_0

    .line 836
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_d
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public static getPhoneType(I)I
    .locals 3
    .param p0, "networkMode"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 456
    packed-switch p0, :pswitch_data_0

    .line 467
    :pswitch_0
    packed-switch p0, :pswitch_data_1

    .line 506
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    move v0, v1

    .line 497
    goto :goto_0

    .line 500
    :pswitch_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    .line 501
    goto :goto_0

    .line 456
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 467
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private getPhoneTypeFromNetworkType()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 438
    const-string/jumbo v1, "ro.telephony.default_network"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 439
    .local v0, "mode":I
    if-ne v0, v2, :cond_0

    .line 440
    const/4 v1, 0x0

    .line 441
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v1

    goto :goto_0
.end method

.method private getPhoneTypeFromProperty()I
    .locals 3

    .prologue
    .line 428
    const-string v1, "gsm.current.phone-type"

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromNetworkType()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 431
    .local v0, "type":I
    return v0
.end method

.method private static getProcCmdLine()Ljava/lang/String;
    .locals 10

    .prologue
    .line 515
    const-string v1, ""

    .line 516
    .local v1, "cmdline":Ljava/lang/String;
    const/4 v5, 0x0

    .line 518
    .local v5, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    const-string v7, "/proc/cmdline"

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    .end local v5    # "is":Ljava/io/FileInputStream;
    .local v6, "is":Ljava/io/FileInputStream;
    const/16 v7, 0x800

    :try_start_1
    new-array v0, v7, [B

    .line 520
    .local v0, "buffer":[B
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 521
    .local v3, "count":I
    if-lez v3, :cond_0

    .line 522
    new-instance v2, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v2, v0, v7, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v1    # "cmdline":Ljava/lang/String;
    .local v2, "cmdline":Ljava/lang/String;
    move-object v1, v2

    .line 527
    .end local v2    # "cmdline":Ljava/lang/String;
    .restart local v1    # "cmdline":Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_3

    .line 529
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v6

    .line 534
    .end local v0    # "buffer":[B
    .end local v3    # "count":I
    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    const-string v7, "TelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/proc/cmdline="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    return-object v1

    .line 530
    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "count":I
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :catch_0
    move-exception v7

    move-object v5, v6

    .line 531
    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    goto :goto_0

    .line 524
    .end local v0    # "buffer":[B
    .end local v3    # "count":I
    :catch_1
    move-exception v4

    .line 525
    .local v4, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v7, "TelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No /proc/cmdline exception="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 527
    if-eqz v5, :cond_1

    .line 529
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 530
    :catch_2
    move-exception v7

    goto :goto_0

    .line 527
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v5, :cond_2

    .line 529
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 531
    :cond_2
    :goto_3
    throw v7

    .line 530
    :catch_3
    move-exception v8

    goto :goto_3

    .line 527
    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    goto :goto_2

    .line 524
    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :catch_4
    move-exception v4

    move-object v5, v6

    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "count":I
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :cond_3
    move-object v5, v6

    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 1

    .prologue
    .line 1310
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "index"    # I
    .param p2, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 657
    const/4 v1, 0x0

    .line 658
    .local v1, "propVal":Ljava/lang/String;
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 659
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 660
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 661
    .local v2, "values":[Ljava/lang/String;
    if-ltz p1, :cond_0

    array-length v3, v2

    if-ge p1, v3, :cond_0

    aget-object v3, v2, p1

    if-eqz v3, :cond_0

    .line 662
    aget-object v1, v2, p1

    .line 665
    .end local v2    # "values":[Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .end local p2    # "defaultVal":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultVal":Ljava/lang/String;
    :cond_1
    move-object p2, v1

    goto :goto_0
.end method

.method public static getUsimSubscription()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1667
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getISkyTelephony()Lcom/android/internal/telephony/gsm/ISkyTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->getUsimSubscription()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1671
    :goto_0
    return v1

    .line 1668
    :catch_0
    move-exception v0

    .line 1669
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1670
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1671
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method private getWifiNetworkInformation()Ljava/lang/String;
    .locals 10

    .prologue
    .line 2018
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 2021
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget-object v8, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "wifi"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 2023
    .local v1, "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 2025
    .local v0, "mWifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    .line 2026
    .local v7, "wifi_ssid":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    .line 2027
    .local v3, "wifi_bssid":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 2029
    .local v5, "wifi_rssi":Ljava/lang/String;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getChannel()Ljava/lang/String;

    move-result-object v4

    .line 2030
    .local v4, "wifi_channel":Ljava/lang/String;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getCapability()Ljava/lang/String;

    move-result-object v6

    .line 2032
    .local v6, "wifi_security":Ljava/lang/String;
    const-string v8, "WIFI_SSID "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "WIFI_BSSID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "WIFI_RSSI "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "WIFI_CH "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "WIFI_Security "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2039
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private strMobileDebugInformationLTE()Ljava/lang/String;
    .locals 32

    .prologue
    .line 2226
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    .line 2230
    .local v28, "strMobileInfo":Ljava/lang/StringBuilder;
    const/16 v25, 0x0

    .line 2233
    .local v25, "plmn":Ljava/lang/String;
    const/16 v30, 0x3

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v25

    .line 2238
    :goto_0
    if-nez v25, :cond_0

    const-string/jumbo v25, "unknown"

    .line 2239
    :cond_0
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v30

    const/16 v31, 0x6

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_1

    .line 2241
    const/16 v30, 0x0

    const/16 v31, 0x3

    move-object/from16 v0, v25

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    .line 2242
    .local v26, "strMcc":Ljava/lang/String;
    const/16 v30, 0x3

    const/16 v31, 0x6

    move-object/from16 v0, v25

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    .line 2250
    .local v27, "strMnc":Ljava/lang/String;
    :goto_1
    const/16 v30, 0x4a

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v5

    .line 2251
    .local v5, "lteband":Ljava/lang/String;
    const/16 v30, 0x4b

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v8

    .line 2252
    .local v8, "ltedlearfcn":Ljava/lang/String;
    const/16 v30, 0x4c

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v6

    .line 2253
    .local v6, "ltebandwidth":Ljava/lang/String;
    const/16 v30, 0x4d

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v18

    .line 2254
    .local v18, "lterssi":Ljava/lang/String;
    const/16 v30, 0x4e

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v16

    .line 2255
    .local v16, "ltersrp":Ljava/lang/String;
    const/16 v30, 0x4f

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v17

    .line 2256
    .local v17, "ltersrq":Ljava/lang/String;
    const/16 v30, 0x50

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v21

    .line 2257
    .local v21, "ltesinr":Ljava/lang/String;
    const/16 v30, 0x51

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v14

    .line 2258
    .local v14, "ltepci":Ljava/lang/String;
    const/16 v30, 0x54

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v13

    .line 2259
    .local v13, "ltenumantena":Ljava/lang/String;
    const/16 v30, 0x52

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v7

    .line 2260
    .local v7, "ltecellid":Ljava/lang/String;
    const/16 v30, 0x53

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v23

    .line 2261
    .local v23, "ltetac":Ljava/lang/String;
    const/16 v30, 0x55

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v20

    .line 2262
    .local v20, "ltesib8available":Ljava/lang/String;
    const/16 v30, 0x56

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v22

    .line 2263
    .local v22, "ltesrvstatus":Ljava/lang/String;
    const/16 v30, 0x57

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v12

    .line 2264
    .local v12, "ltenasrejcause":Ljava/lang/String;
    const/16 v30, 0x58

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v11

    .line 2265
    .local v11, "lteesmcause":Ljava/lang/String;
    const/16 v30, 0x5c

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v9

    .line 2266
    .local v9, "lteemmstate":Ljava/lang/String;
    const/16 v30, 0x5d

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v10

    .line 2267
    .local v10, "lteemmsubstate":Ljava/lang/String;
    const/16 v30, 0x5b

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v15

    .line 2268
    .local v15, "lterrcstate":Ljava/lang/String;
    const/16 v30, 0x5a

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v24

    .line 2269
    .local v24, "ltetxpower":Ljava/lang/String;
    const/16 v30, 0x56

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v19

    .line 2271
    .local v19, "lteservice":Ljava/lang/String;
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v4

    .line 2272
    .local v4, "imsi":Ljava/lang/String;
    const/16 v30, 0x18

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v29

    .line 2274
    .local v29, "tmsi":Ljava/lang/String;
    const-string v30, "MCC "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " MNC "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "; "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "LTE_BAND "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "; "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "LTE_DL_Earfcn "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "; "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "LTE_DL_Bandwidth "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "; "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "LTE_RSSI "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "; "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "LTE_RSRP "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "; "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "LTE_RSRQ "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "; "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "LTE_SINR "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "; "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "LTE_PCI "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "; "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "LTE_NUM_ANTENA "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "; "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "LTE_CELL_ID "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "; "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "LTE_TAC "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "; "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "LTE_SIB8 "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "; "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "LTE_SRV_STATUS "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "; "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "LTE_NAS_REJCAUSE "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "; "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "LTE_ESM_CAUSE "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "; "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "Tx "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "; "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "LTE_IMSI "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "; "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "LTE_TMSI "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "; "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "LTE_RRC_STATUS "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "; "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2296
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    return-object v30

    .line 2234
    .end local v4    # "imsi":Ljava/lang/String;
    .end local v5    # "lteband":Ljava/lang/String;
    .end local v6    # "ltebandwidth":Ljava/lang/String;
    .end local v7    # "ltecellid":Ljava/lang/String;
    .end local v8    # "ltedlearfcn":Ljava/lang/String;
    .end local v9    # "lteemmstate":Ljava/lang/String;
    .end local v10    # "lteemmsubstate":Ljava/lang/String;
    .end local v11    # "lteesmcause":Ljava/lang/String;
    .end local v12    # "ltenasrejcause":Ljava/lang/String;
    .end local v13    # "ltenumantena":Ljava/lang/String;
    .end local v14    # "ltepci":Ljava/lang/String;
    .end local v15    # "lterrcstate":Ljava/lang/String;
    .end local v16    # "ltersrp":Ljava/lang/String;
    .end local v17    # "ltersrq":Ljava/lang/String;
    .end local v18    # "lterssi":Ljava/lang/String;
    .end local v19    # "lteservice":Ljava/lang/String;
    .end local v20    # "ltesib8available":Ljava/lang/String;
    .end local v21    # "ltesinr":Ljava/lang/String;
    .end local v22    # "ltesrvstatus":Ljava/lang/String;
    .end local v23    # "ltetac":Ljava/lang/String;
    .end local v24    # "ltetxpower":Ljava/lang/String;
    .end local v26    # "strMcc":Ljava/lang/String;
    .end local v27    # "strMnc":Ljava/lang/String;
    .end local v29    # "tmsi":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 2236
    .local v3, "e":Ljava/lang/Exception;
    const-string v30, "@@@"

    const-string/jumbo v31, "strMobileDebugInformationLTE() access fail !"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2246
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const/16 v30, 0x0

    const/16 v31, 0x3

    move-object/from16 v0, v25

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    .line 2247
    .restart local v26    # "strMcc":Ljava/lang/String;
    const/16 v30, 0x3

    const/16 v31, 0x5

    move-object/from16 v0, v25

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    .restart local v27    # "strMnc":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method private strMobileDebugInformationWCDMA()Ljava/lang/String;
    .locals 48

    .prologue
    .line 2300
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 2309
    .local v22, "strMobileInfo":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 2314
    .local v3, "local_lac":Ljava/lang/String;
    const/16 v44, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v13

    .line 2315
    .local v13, "strImsi":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/TelephonyManager;->getMsisdn()Ljava/lang/String;

    move-result-object v24

    .line 2316
    .local v24, "strMsisdn":Ljava/lang/String;
    const/16 v44, 0x18

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v37

    .line 2317
    .local v37, "strTmsi":Ljava/lang/String;
    const/16 v44, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v39

    .line 2318
    .local v39, "strUarfcn":Ljava/lang/String;
    const/16 v44, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v28

    .line 2319
    .local v28, "strPsc":Ljava/lang/String;
    const/16 v44, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v27

    .line 2320
    .local v27, "strPlmn":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v44

    const/16 v45, 0x6

    move/from16 v0, v44

    move/from16 v1, v45

    if-lt v0, v1, :cond_0

    .line 2322
    const/16 v44, 0x0

    const/16 v45, 0x3

    move-object/from16 v0, v27

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 2323
    .local v20, "strMcc":Ljava/lang/String;
    const/16 v44, 0x3

    const/16 v45, 0x6

    move-object/from16 v0, v27

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 2331
    .local v21, "strMnc":Ljava/lang/String;
    :goto_0
    const/16 v44, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Int(I)I

    move-result v43

    .line 2332
    .local v43, "tx_agc_int":I
    const/16 v44, 0x21

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Float(I)F

    move-result v4

    .line 2333
    .local v4, "pathloss_f":F
    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v5

    .line 2334
    .local v5, "rrc_state":Ljava/lang/String;
    const-string v44, "CELL_DCH"

    move-object/from16 v0, v44

    if-ne v5, v0, :cond_1

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v44, v0

    sub-float v44, v44, v4

    move/from16 v0, v44

    float-to-double v0, v0

    move-wide/from16 v44, v0

    const-wide v46, 0x4059c00000000000L    # 103.0

    add-double v44, v44, v46

    const-wide v46, 0x4035800000000000L    # 21.5

    add-double v41, v44, v46

    .line 2335
    .local v41, "tmp_kt_adj":D
    :goto_1
    invoke-static/range {v41 .. v42}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v14

    .line 2336
    .local v14, "strKtfadj":Ljava/lang/String;
    const/16 v44, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v8

    .line 2337
    .local v8, "strCid":Ljava/lang/String;
    const/16 v44, 0x1b

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v17

    .line 2338
    .local v17, "strLac":Ljava/lang/String;
    const/16 v44, 0x1c

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v30

    .line 2339
    .local v30, "strRac":Ljava/lang/String;
    const/16 v44, 0x2e

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v18

    .line 2340
    .local v18, "strLsa":Ljava/lang/String;
    const/16 v44, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v35

    .line 2341
    .local v35, "strRx":Ljava/lang/String;
    const/16 v44, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v34

    .line 2342
    .local v34, "strRssi":Ljava/lang/String;
    const/16 v44, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v38

    .line 2343
    .local v38, "strTx":Ljava/lang/String;
    const/16 v44, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v11

    .line 2344
    .local v11, "strEcio":Ljava/lang/String;
    const/16 v44, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v33

    .line 2345
    .local v33, "strRscp":Ljava/lang/String;
    const/16 v44, 0x11

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v15

    .line 2346
    .local v15, "strL1":Ljava/lang/String;
    const/16 v44, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v29

    .line 2347
    .local v29, "strRRC":Ljava/lang/String;
    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v32

    .line 2348
    .local v32, "strRrcState":Ljava/lang/String;
    const/16 v44, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v16

    .line 2349
    .local v16, "strLU":Ljava/lang/String;
    const/16 v44, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v31

    .line 2350
    .local v31, "strReg_dom":Ljava/lang/String;
    const/16 v44, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v36

    .line 2351
    .local v36, "strService":Ljava/lang/String;
    const/16 v44, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v25

    .line 2352
    .local v25, "strNom":Ljava/lang/String;
    const/16 v44, 0x2d

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v9

    .line 2353
    .local v9, "strCn_id":Ljava/lang/String;
    const/16 v44, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v23

    .line 2354
    .local v23, "strMsOpMode":Ljava/lang/String;
    const/16 v44, 0x1d

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v10

    .line 2355
    .local v10, "strDrx":Ljava/lang/String;
    const/16 v44, 0x20

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v7

    .line 2356
    .local v7, "strBler":Ljava/lang/String;
    const/16 v44, 0x43

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v19

    .line 2357
    .local v19, "strMM":Ljava/lang/String;
    const/16 v44, 0x42

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v12

    .line 2359
    .local v12, "strGMM":Ljava/lang/String;
    const/16 v44, 0x1f

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v6

    .line 2360
    .local v6, "strAset":Ljava/lang/String;
    const/16 v44, 0x1e

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v26

    .line 2363
    .local v26, "strNset":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Landroid/telephony/TelephonyManager;->getWifiNetworkInformation()Ljava/lang/String;

    move-result-object v40

    .line 2365
    .local v40, "strWifiNetwork":Ljava/lang/String;
    const-string v44, "IMSI "

    move-object/from16 v0, v22

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "; "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "MSISDN "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "; "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "TMSI "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "; "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "UARFCN "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "; "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "PSC "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "; "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "MCC "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " MNC "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "; "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "KT ADJ "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "; "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "CID "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "; "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "LAC "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "; "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "RAC "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "; "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "LSA "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "; "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "Rx "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "; "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "RSSI "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "; "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "TX "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "; "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "ECIO "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "; "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "RSCP "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "; "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "L1 "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "; "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "RRC "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "; "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "RRC_S "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "; "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "LU "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "; "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "REG_DOM "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "; "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "SERVICE "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "; "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "NOM "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "; "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "CN_ID "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "; "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "MS OP MODE "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "; "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "DRX "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "; "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "BLER "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "; "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "MM "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "; "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "GMM "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "; "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "ACTIVE_SET "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "; "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "NEIGHBOR_SET "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "; "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2398
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    return-object v44

    .line 2327
    .end local v4    # "pathloss_f":F
    .end local v5    # "rrc_state":Ljava/lang/String;
    .end local v6    # "strAset":Ljava/lang/String;
    .end local v7    # "strBler":Ljava/lang/String;
    .end local v8    # "strCid":Ljava/lang/String;
    .end local v9    # "strCn_id":Ljava/lang/String;
    .end local v10    # "strDrx":Ljava/lang/String;
    .end local v11    # "strEcio":Ljava/lang/String;
    .end local v12    # "strGMM":Ljava/lang/String;
    .end local v14    # "strKtfadj":Ljava/lang/String;
    .end local v15    # "strL1":Ljava/lang/String;
    .end local v16    # "strLU":Ljava/lang/String;
    .end local v17    # "strLac":Ljava/lang/String;
    .end local v18    # "strLsa":Ljava/lang/String;
    .end local v19    # "strMM":Ljava/lang/String;
    .end local v20    # "strMcc":Ljava/lang/String;
    .end local v21    # "strMnc":Ljava/lang/String;
    .end local v23    # "strMsOpMode":Ljava/lang/String;
    .end local v25    # "strNom":Ljava/lang/String;
    .end local v26    # "strNset":Ljava/lang/String;
    .end local v29    # "strRRC":Ljava/lang/String;
    .end local v30    # "strRac":Ljava/lang/String;
    .end local v31    # "strReg_dom":Ljava/lang/String;
    .end local v32    # "strRrcState":Ljava/lang/String;
    .end local v33    # "strRscp":Ljava/lang/String;
    .end local v34    # "strRssi":Ljava/lang/String;
    .end local v35    # "strRx":Ljava/lang/String;
    .end local v36    # "strService":Ljava/lang/String;
    .end local v38    # "strTx":Ljava/lang/String;
    .end local v40    # "strWifiNetwork":Ljava/lang/String;
    .end local v41    # "tmp_kt_adj":D
    .end local v43    # "tx_agc_int":I
    :cond_0
    const/16 v44, 0x0

    const/16 v45, 0x3

    move-object/from16 v0, v27

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 2328
    .restart local v20    # "strMcc":Ljava/lang/String;
    const/16 v44, 0x3

    const/16 v45, 0x5

    move-object/from16 v0, v27

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .restart local v21    # "strMnc":Ljava/lang/String;
    goto/16 :goto_0

    .line 2334
    .restart local v4    # "pathloss_f":F
    .restart local v5    # "rrc_state":Ljava/lang/String;
    .restart local v43    # "tx_agc_int":I
    :cond_1
    const-wide/16 v41, 0x0

    goto/16 :goto_1
.end method

.method public static verifyPck(Ljava/lang/String;I)Z
    .locals 3
    .param p0, "keyPck"    # Ljava/lang/String;
    .param p1, "persoFeature"    # I

    .prologue
    const/4 v1, 0x0

    .line 1642
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getISkyTelephony()Lcom/android/internal/telephony/gsm/ISkyTelephony;

    move-result-object v2

    invoke-interface {v2, p0, p1}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->verifyPck(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1646
    :goto_0
    return v1

    .line 1643
    :catch_0
    move-exception v0

    .line 1644
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1645
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1646
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method


# virtual methods
.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;

    .prologue
    .line 2799
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2804
    :goto_0
    return v0

    .line 2801
    :catch_0
    move-exception v0

    .line 2804
    :goto_1
    const/4 v0, -0x1

    goto :goto_0

    .line 2800
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public changePersoDck2(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p1, "oldDck"    # Ljava/lang/String;
    .param p2, "newDck"    # Ljava/lang/String;
    .param p3, "perso_feature"    # I

    .prologue
    .line 2825
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->changePersoDck2(Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2830
    :goto_0
    return v0

    .line 2827
    :catch_0
    move-exception v0

    .line 2830
    :goto_1
    const/4 v0, -0x1

    goto :goto_0

    .line 2826
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 344
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->disableLocationUpdates()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :goto_0
    return-void

    .line 346
    :catch_0
    move-exception v0

    goto :goto_0

    .line 345
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 327
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->enableLocationUpdates()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_0
    return-void

    .line 329
    :catch_0
    move-exception v0

    goto :goto_0

    .line 328
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1568
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getAllCellInfo()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1572
    :goto_0
    return-object v1

    .line 1569
    :catch_0
    move-exception v0

    .line 1570
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1571
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1572
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCallState()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1330
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1336
    :goto_0
    return v1

    .line 1331
    :catch_0
    move-exception v0

    .line 1333
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1334
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1336
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriIconIndex()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1463
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconIndex()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1468
    :goto_0
    return v1

    .line 1464
    :catch_0
    move-exception v0

    .line 1466
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1467
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1468
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriIconMode()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1481
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1486
    :goto_0
    return v1

    .line 1482
    :catch_0
    move-exception v0

    .line 1484
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1485
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1486
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1497
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriText()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1502
    :goto_0
    return-object v1

    .line 1498
    :catch_0
    move-exception v0

    .line 1500
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1501
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1502
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 303
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->getCellLocation()Landroid/os/Bundle;

    move-result-object v0

    .line 304
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v3

    .line 312
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-object v1

    .line 305
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 306
    .local v1, "cl":Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/CellLocation;->isEmpty()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 307
    goto :goto_0

    .line 309
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "cl":Landroid/telephony/CellLocation;
    :catch_0
    move-exception v2

    .local v2, "ex":Landroid/os/RemoteException;
    move-object v1, v3

    .line 310
    goto :goto_0

    .line 311
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .local v2, "ex":Ljava/lang/NullPointerException;
    move-object v1, v3

    .line 312
    goto :goto_0
.end method

.method getChannelByFrequency(I)I
    .locals 1
    .param p1, "frequency"    # I

    .prologue
    .line 2070
    sparse-switch p1, :sswitch_data_0

    .line 2165
    move v0, p1

    .line 2168
    .local v0, "nCh":I
    :goto_0
    return v0

    .line 2073
    .end local v0    # "nCh":I
    :sswitch_0
    const/4 v0, 0x1

    .line 2074
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 2076
    .end local v0    # "nCh":I
    :sswitch_1
    const/4 v0, 0x2

    .line 2077
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 2079
    .end local v0    # "nCh":I
    :sswitch_2
    const/4 v0, 0x3

    .line 2080
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 2082
    .end local v0    # "nCh":I
    :sswitch_3
    const/4 v0, 0x4

    .line 2083
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 2085
    .end local v0    # "nCh":I
    :sswitch_4
    const/4 v0, 0x5

    .line 2086
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 2088
    .end local v0    # "nCh":I
    :sswitch_5
    const/4 v0, 0x6

    .line 2089
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 2091
    .end local v0    # "nCh":I
    :sswitch_6
    const/4 v0, 0x7

    .line 2092
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 2094
    .end local v0    # "nCh":I
    :sswitch_7
    const/16 v0, 0x8

    .line 2095
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 2097
    .end local v0    # "nCh":I
    :sswitch_8
    const/16 v0, 0x9

    .line 2098
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 2100
    .end local v0    # "nCh":I
    :sswitch_9
    const/16 v0, 0xa

    .line 2101
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 2103
    .end local v0    # "nCh":I
    :sswitch_a
    const/16 v0, 0xb

    .line 2104
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 2106
    .end local v0    # "nCh":I
    :sswitch_b
    const/16 v0, 0xc

    .line 2107
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 2109
    .end local v0    # "nCh":I
    :sswitch_c
    const/16 v0, 0xd

    .line 2110
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 2112
    .end local v0    # "nCh":I
    :sswitch_d
    const/16 v0, 0xe

    .line 2113
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 2116
    .end local v0    # "nCh":I
    :sswitch_e
    const/16 v0, 0x28

    .line 2117
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 2119
    .end local v0    # "nCh":I
    :sswitch_f
    const/16 v0, 0x24

    .line 2120
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 2122
    .end local v0    # "nCh":I
    :sswitch_10
    const/16 v0, 0x2c

    .line 2123
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 2125
    .end local v0    # "nCh":I
    :sswitch_11
    const/16 v0, 0x30

    .line 2126
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 2128
    .end local v0    # "nCh":I
    :sswitch_12
    const/16 v0, 0x34

    .line 2129
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 2131
    .end local v0    # "nCh":I
    :sswitch_13
    const/16 v0, 0x38

    .line 2132
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 2134
    .end local v0    # "nCh":I
    :sswitch_14
    const/16 v0, 0x3c

    .line 2135
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 2137
    .end local v0    # "nCh":I
    :sswitch_15
    const/16 v0, 0x40

    .line 2138
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 2140
    .end local v0    # "nCh":I
    :sswitch_16
    const/16 v0, 0x95

    .line 2141
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 2143
    .end local v0    # "nCh":I
    :sswitch_17
    const/16 v0, 0x99

    .line 2144
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 2146
    .end local v0    # "nCh":I
    :sswitch_18
    const/16 v0, 0x9d

    .line 2147
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 2149
    .end local v0    # "nCh":I
    :sswitch_19
    const/16 v0, 0xa1

    .line 2150
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 2153
    .end local v0    # "nCh":I
    :sswitch_1a
    const/16 v0, 0x22

    .line 2154
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 2156
    .end local v0    # "nCh":I
    :sswitch_1b
    const/16 v0, 0x26

    .line 2157
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 2159
    .end local v0    # "nCh":I
    :sswitch_1c
    const/16 v0, 0x2a

    .line 2160
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 2162
    .end local v0    # "nCh":I
    :sswitch_1d
    const/16 v0, 0x2e

    .line 2163
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 2070
    :sswitch_data_0
    .sparse-switch
        0x96c -> :sswitch_0
        0x971 -> :sswitch_1
        0x976 -> :sswitch_2
        0x97b -> :sswitch_3
        0x980 -> :sswitch_4
        0x985 -> :sswitch_5
        0x98a -> :sswitch_6
        0x98f -> :sswitch_7
        0x994 -> :sswitch_8
        0x999 -> :sswitch_9
        0x99e -> :sswitch_a
        0x9a3 -> :sswitch_b
        0x9a8 -> :sswitch_c
        0x9b4 -> :sswitch_d
        0x1432 -> :sswitch_1a
        0x143c -> :sswitch_f
        0x1446 -> :sswitch_1b
        0x1450 -> :sswitch_e
        0x145a -> :sswitch_1c
        0x1464 -> :sswitch_10
        0x146e -> :sswitch_1d
        0x1478 -> :sswitch_11
        0x148c -> :sswitch_12
        0x14a0 -> :sswitch_13
        0x14b4 -> :sswitch_14
        0x14c8 -> :sswitch_15
        0x1671 -> :sswitch_16
        0x1685 -> :sswitch_17
        0x1699 -> :sswitch_18
        0x16ad -> :sswitch_19
    .end sparse-switch
.end method

.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1179
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getCompleteVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1184
    :goto_0
    return-object v1

    .line 1180
    :catch_0
    move-exception v0

    .line 1181
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1182
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1184
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCurrentPhoneType()I
    .locals 3

    .prologue
    .line 393
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 394
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 395
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v2

    .line 407
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 398
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 400
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 403
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0

    .line 404
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 407
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0
.end method

.method public getDataActivity()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1366
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataActivity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1372
    :goto_0
    return v1

    .line 1367
    :catch_0
    move-exception v0

    .line 1369
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1370
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1372
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDataNetworkType()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 741
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 742
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 743
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDataNetworkType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 753
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 748
    :catch_0
    move-exception v0

    .line 750
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 751
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 753
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDataState()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1402
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1407
    :goto_0
    return v1

    .line 1403
    :catch_0
    move-exception v0

    .line 1405
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1406
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1407
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 278
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 282
    :goto_0
    return-object v1

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 281
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 282
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDeviceSoftwareVersion()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 261
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceSvn()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 265
    :goto_0
    return-object v1

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 264
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 265
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getFreqChannel()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2408
    :try_start_0
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->nvif:Lcom/android/internal/telephony/NVInterface;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getISkyTelephony()Lcom/android/internal/telephony/gsm/ISkyTelephony;

    move-result-object v2

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->getQcNvRead_int(II)I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/NVInterface;->sel_uarfcn_scan_type:I

    .line 2409
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->nvif:Lcom/android/internal/telephony/NVInterface;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getISkyTelephony()Lcom/android/internal/telephony/gsm/ISkyTelephony;

    move-result-object v2

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->getQcNvRead_int(II)I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/NVInterface;->wcdma_dl_freq_enabled:I

    .line 2410
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->nvif:Lcom/android/internal/telephony/NVInterface;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getISkyTelephony()Lcom/android/internal/telephony/gsm/ISkyTelephony;

    move-result-object v2

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->getQcNvRead_int(II)I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/NVInterface;->wcdma_dl_freq:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2416
    :goto_0
    const-string v1, "TelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFreqChannelInternal : enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->nvif:Lcom/android/internal/telephony/NVInterface;

    iget v3, v3, Lcom/android/internal/telephony/NVInterface;->wcdma_dl_freq_enabled:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    const-string v1, "TelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dlFreqChannel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->nvif:Lcom/android/internal/telephony/NVInterface;

    iget v3, v3, Lcom/android/internal/telephony/NVInterface;->wcdma_dl_freq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->nvif:Lcom/android/internal/telephony/NVInterface;

    iget v1, v1, Lcom/android/internal/telephony/NVInterface;->wcdma_dl_freq_enabled:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/telephony/TelephonyManager;->nvif:Lcom/android/internal/telephony/NVInterface;

    iget v1, v1, Lcom/android/internal/telephony/NVInterface;->wcdma_dl_freq:I

    if-nez v1, :cond_0

    .line 2422
    const-string v1, "TelephonyManager"

    const-string v2, "kt pref channel."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2423
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->nvif:Lcom/android/internal/telephony/NVInterface;

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->nvif:Lcom/android/internal/telephony/NVInterface;

    iget v2, v2, Lcom/android/internal/telephony/NVInterface;->sel_uarfcn_scan_type:I

    iput v2, v1, Lcom/android/internal/telephony/NVInterface;->wcdma_dl_freq:I

    .line 2426
    :cond_0
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->nvif:Lcom/android/internal/telephony/NVInterface;

    iget v1, v1, Lcom/android/internal/telephony/NVInterface;->wcdma_dl_freq:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2411
    :catch_0
    move-exception v0

    .line 2412
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "@@@"

    const-string v2, "TelephonyManager : access Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1085
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getGroupIdLevel1()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1090
    :goto_0
    return-object v1

    .line 1086
    :catch_0
    move-exception v0

    .line 1087
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1088
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1090
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIccLockEnabled()Z
    .locals 1

    .prologue
    .line 2775
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->getIccLockEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2780
    :goto_0
    return v0

    .line 2777
    :catch_0
    move-exception v0

    .line 2780
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2776
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public getIccPin1RetryCount()I
    .locals 1

    .prologue
    .line 2811
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->getIccPin1RetryCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2816
    :goto_0
    return v0

    .line 2813
    :catch_0
    move-exception v0

    .line 2816
    :goto_1
    const/4 v0, -0x1

    goto :goto_0

    .line 2812
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public getIsimDomain()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1247
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimDomain()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1252
    :goto_0
    return-object v1

    .line 1248
    :catch_0
    move-exception v0

    .line 1249
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1250
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1252
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIsimImpi()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1231
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpi()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1236
    :goto_0
    return-object v1

    .line 1232
    :catch_0
    move-exception v0

    .line 1233
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1234
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1236
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1264
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpu()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1269
    :goto_0
    return-object v1

    .line 1265
    :catch_0
    move-exception v0

    .line 1266
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1267
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1269
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIsimIst()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1298
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimIst()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1303
    :goto_0
    return-object v1

    .line 1299
    :catch_0
    move-exception v0

    .line 1300
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1301
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1303
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIsimPcscf()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1282
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimPcscf()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1287
    :goto_0
    return-object v1

    .line 1283
    :catch_0
    move-exception v0

    .line 1284
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1285
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1287
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1123
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1AlphaTag()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1128
    :goto_0
    return-object v1

    .line 1124
    :catch_0
    move-exception v0

    .line 1125
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1126
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1128
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1103
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1Number()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1108
    :goto_0
    return-object v1

    .line 1104
    :catch_0
    move-exception v0

    .line 1105
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1106
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1108
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLocalDbInfo_Float(I)F
    .locals 3
    .param p1, "db_num"    # I

    .prologue
    const/4 v1, 0x0

    .line 1991
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getISkyTelephony()Lcom/android/internal/telephony/gsm/ISkyTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->getLocalDbInfo_Float(I)F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1995
    :goto_0
    return v1

    .line 1992
    :catch_0
    move-exception v0

    .line 1993
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1994
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1995
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLocalDbInfo_Int(I)I
    .locals 3
    .param p1, "db_num"    # I

    .prologue
    const/4 v1, 0x0

    .line 1965
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getISkyTelephony()Lcom/android/internal/telephony/gsm/ISkyTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->getLocalDbInfo_Int(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1969
    :goto_0
    return v1

    .line 1966
    :catch_0
    move-exception v0

    .line 1967
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1968
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1969
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLocalDbInfo_Ints(I)[I
    .locals 3
    .param p1, "db_num"    # I

    .prologue
    const/4 v1, 0x0

    .line 1978
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getISkyTelephony()Lcom/android/internal/telephony/gsm/ISkyTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->getLocalDbInfo_Ints(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1982
    :goto_0
    return-object v1

    .line 1979
    :catch_0
    move-exception v0

    .line 1980
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1981
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1982
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLocalDbInfo_String(I)Ljava/lang/String;
    .locals 3
    .param p1, "db_num"    # I

    .prologue
    const/4 v1, 0x0

    .line 1952
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getISkyTelephony()Lcom/android/internal/telephony/gsm/ISkyTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->getLocalDbInfo_String(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1956
    :goto_0
    return-object v1

    .line 1953
    :catch_0
    move-exception v0

    .line 1954
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1955
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1956
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLteOnCdmaMode()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1042
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getLteOnCdmaMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1048
    :goto_0
    return v1

    .line 1043
    :catch_0
    move-exception v0

    .line 1045
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1046
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1048
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getMmsUAProfUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2763
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2764
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMmsUserAgent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2754
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2755
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMobileDebugInformation()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2205
    const-string v1, ""

    .line 2207
    .local v1, "retValue":Ljava/lang/String;
    const/16 v2, 0x45

    invoke-virtual {p0, v2}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Int(I)I

    move-result v0

    .line 2208
    .local v0, "rat_type":I
    packed-switch v0, :pswitch_data_0

    .line 2222
    :goto_0
    :pswitch_0
    return-object v1

    .line 2213
    :pswitch_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->strMobileDebugInformationWCDMA()Ljava/lang/String;

    move-result-object v1

    .line 2214
    goto :goto_0

    .line 2216
    :pswitch_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->strMobileDebugInformationLTE()Ljava/lang/String;

    move-result-object v1

    .line 2217
    goto :goto_0

    .line 2208
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getMobileQualityInformation()Ljava/util/HashMap;
    .locals 57

    .prologue
    .line 1691
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 1699
    .local v22, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v21, 0x0

    .line 1711
    .local v21, "lte_tx":I
    const/4 v6, 0x0

    .line 1714
    .local v6, "antenna_tech":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v34

    .line 1715
    .local v34, "networkOperator":Ljava/lang/String;
    const/16 v24, 0x0

    .local v24, "mnc":I
    move/from16 v23, v24

    .line 1716
    .local v23, "mcc":I
    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v55

    const/16 v56, 0x5

    move/from16 v0, v55

    move/from16 v1, v56

    if-lt v0, v1, :cond_0

    .line 1717
    const/16 v55, 0x0

    const/16 v56, 0x3

    move-object/from16 v0, v34

    move/from16 v1, v55

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 1718
    const/16 v55, 0x3

    move-object/from16 v0, v34

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 1721
    :cond_0
    const-string v55, "LTE"

    invoke-virtual/range {p0 .. p0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-eqz v55, :cond_d

    .line 1724
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v35

    .line 1725
    .local v35, "network_mode":Ljava/lang/String;
    const/16 v55, 0x53

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Int(I)I

    move-result v45

    .line 1726
    .local v45, "tac":I
    const/16 v55, 0x4b

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Int(I)I

    move-result v15

    .line 1727
    .local v15, "earfcn_downlink":I
    const/16 v55, 0x4a

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Int(I)I

    move-result v7

    .line 1728
    .local v7, "band":I
    if-eqz v15, :cond_1

    if-nez v7, :cond_5

    .line 1729
    :cond_1
    const/16 v16, 0x0

    .line 1737
    .local v16, "earfcn_uplink":I
    :goto_0
    const/16 v55, 0x4c

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Int(I)I

    move-result v8

    .line 1738
    .local v8, "bandwidth":I
    const/16 v55, 0x52

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Int(I)I

    move-result v17

    .line 1739
    .local v17, "lte_cell_id":I
    const/16 v55, 0x51

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Int(I)I

    move-result v37

    .line 1740
    .local v37, "pci":I
    const/16 v55, 0x4d

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Int(I)I

    move-result v20

    .line 1741
    .local v20, "lte_rssi":I
    const/16 v55, 0x4e

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Int(I)I

    move-result v39

    .line 1742
    .local v39, "rsrp":I
    const/16 v55, 0x4f

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Int(I)I

    move-result v40

    .line 1743
    .local v40, "rsrq":I
    const/16 v55, 0x5a

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Int(I)I

    move-result v21

    .line 1744
    const/16 v55, 0x50

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Float(I)F

    move-result v44

    .line 1745
    .local v44, "sinr":F
    const/16 v55, 0x5f

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Ints(I)[I

    move-result-object v18

    .line 1746
    .local v18, "lte_nbr":[I
    const/16 v55, 0x65

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Int(I)I

    move-result v13

    .line 1749
    .local v13, "cqi":I
    const/16 v55, 0x63

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v46

    .line 1750
    .local v46, "temp_ca":Ljava/lang/String;
    const/16 v55, 0x66

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Int(I)I

    move-result v38

    .line 1753
    .local v38, "ri":I
    const/16 v55, 0x62

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v49

    .line 1756
    .local v49, "temp_pci_freq":Ljava/lang/String;
    :try_start_0
    const-string v55, "PCI : "

    move-object/from16 v0, v49

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v55

    add-int/lit8 v55, v55, 0x6

    const-string v56, " \n"

    move-object/from16 v0, v49

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v56

    move-object/from16 v0, v49

    move/from16 v1, v55

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v48

    .line 1757
    .local v48, "temp_pci":Ljava/lang/String;
    const-string v55, "CH : "

    move-object/from16 v0, v49

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v55

    add-int/lit8 v55, v55, 0x5

    const-string v56, "          PCI"

    move-object/from16 v0, v49

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v56

    move-object/from16 v0, v49

    move/from16 v1, v55

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v47

    .line 1763
    .local v47, "temp_freq":Ljava/lang/String;
    :goto_1
    const-string v55, " - "

    move-object/from16 v0, v46

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-eqz v55, :cond_7

    .line 1764
    const/4 v10, 0x0

    .line 1775
    .local v10, "ca":I
    :goto_2
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v43

    .line 1776
    .local v43, "s_pci":I
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v42

    .line 1782
    .local v42, "s_freq":I
    const-string v19, "IDLE"

    .line 1785
    .local v19, "lte_rrc_state":Ljava/lang/String;
    const/16 v25, 0x0

    .line 1786
    .local v25, "neighborset_pci":I
    const/16 v26, 0x0

    .line 1787
    .local v26, "neighborset_pci_2":I
    const/16 v27, 0x0

    .line 1788
    .local v27, "neighborset_pci_3":I
    const/16 v28, 0x0

    .line 1789
    .local v28, "neighborset_rsrp":I
    const/16 v29, 0x0

    .line 1790
    .local v29, "neighborset_rsrp_2":I
    const/16 v30, 0x0

    .line 1791
    .local v30, "neighborset_rsrp_3":I
    const/16 v31, 0x0

    .line 1792
    .local v31, "neighborset_rsrq":I
    const/16 v32, 0x0

    .line 1793
    .local v32, "neighborset_rsrq_2":I
    const/16 v33, 0x0

    .line 1794
    .local v33, "neighborset_rsrq_3":I
    if-eqz v18, :cond_4

    const/16 v55, 0x0

    aget v55, v18, v55

    if-lez v55, :cond_4

    .line 1795
    const/16 v55, 0x0

    aget v55, v18, v55

    const/16 v56, 0x1

    move/from16 v0, v55

    move/from16 v1, v56

    if-ne v0, v1, :cond_2

    .line 1797
    const/16 v55, 0x1

    aget v25, v18, v55

    .line 1798
    const/16 v55, 0x9

    aget v28, v18, v55

    .line 1799
    const/16 v55, 0x11

    aget v31, v18, v55

    .line 1802
    :cond_2
    const/16 v55, 0x0

    aget v55, v18, v55

    const/16 v56, 0x2

    move/from16 v0, v55

    move/from16 v1, v56

    if-lt v0, v1, :cond_3

    .line 1804
    const/16 v55, 0x2

    aget v26, v18, v55

    .line 1805
    const/16 v55, 0xa

    aget v29, v18, v55

    .line 1806
    const/16 v55, 0x12

    aget v32, v18, v55

    .line 1808
    :cond_3
    const/16 v55, 0x0

    aget v55, v18, v55

    const/16 v56, 0x3

    move/from16 v0, v55

    move/from16 v1, v56

    if-lt v0, v1, :cond_4

    .line 1810
    const/16 v55, 0x3

    aget v27, v18, v55

    .line 1811
    const/16 v55, 0xb

    aget v30, v18, v55

    .line 1812
    const/16 v55, 0x13

    aget v33, v18, v55

    .line 1817
    :cond_4
    const-string/jumbo v55, "network_mode"

    new-instance v56, Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1818
    const-string/jumbo v55, "mcc"

    new-instance v56, Ljava/lang/Integer;

    move-object/from16 v0, v56

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1819
    const-string/jumbo v55, "mnc"

    new-instance v56, Ljava/lang/Integer;

    move-object/from16 v0, v56

    move/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1820
    const-string/jumbo v55, "tac"

    new-instance v56, Ljava/lang/Integer;

    move-object/from16 v0, v56

    move/from16 v1, v45

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1821
    const-string v55, "earfcn_downlink"

    new-instance v56, Ljava/lang/Integer;

    move-object/from16 v0, v56

    invoke-direct {v0, v15}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1822
    const-string v55, "earfcn_uplink"

    new-instance v56, Ljava/lang/Integer;

    move-object/from16 v0, v56

    move/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1823
    const-string v55, "band"

    new-instance v56, Ljava/lang/Integer;

    move-object/from16 v0, v56

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1824
    const-string v55, "bandwidth"

    new-instance v56, Ljava/lang/Integer;

    move-object/from16 v0, v56

    invoke-direct {v0, v8}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1825
    const-string v55, "cell_id"

    new-instance v56, Ljava/lang/Integer;

    move-object/from16 v0, v56

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1826
    const-string/jumbo v55, "pci"

    new-instance v56, Ljava/lang/Integer;

    move-object/from16 v0, v56

    move/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1827
    const-string/jumbo v55, "rssi"

    new-instance v56, Ljava/lang/Integer;

    move-object/from16 v0, v56

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1828
    const-string/jumbo v55, "rsrp"

    new-instance v56, Ljava/lang/Integer;

    move-object/from16 v0, v56

    move/from16 v1, v39

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1829
    const-string/jumbo v55, "rsrq"

    new-instance v56, Ljava/lang/Integer;

    move-object/from16 v0, v56

    move/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1831
    const/16 v55, 0x3e8

    move/from16 v0, v21

    move/from16 v1, v55

    if-eq v0, v1, :cond_8

    .line 1832
    const-string/jumbo v55, "tx_power"

    new-instance v56, Ljava/lang/Integer;

    move-object/from16 v0, v56

    move/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1836
    :goto_3
    const-string/jumbo v55, "sinr"

    new-instance v56, Ljava/lang/Float;

    move-object/from16 v0, v56

    move/from16 v1, v44

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1837
    const-string/jumbo v55, "rrc"

    new-instance v56, Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1838
    const-string v55, "cqi"

    new-instance v56, Ljava/lang/Integer;

    move-object/from16 v0, v56

    invoke-direct {v0, v13}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1839
    const-string v55, "antenna_tech"

    const/16 v56, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1841
    const-string/jumbo v55, "neighborset_pci"

    new-instance v56, Ljava/lang/Integer;

    move-object/from16 v0, v56

    move/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1842
    const-string/jumbo v55, "neighborset_pci_2"

    new-instance v56, Ljava/lang/Integer;

    move-object/from16 v0, v56

    move/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1843
    const-string/jumbo v55, "neighborset_pci_3"

    new-instance v56, Ljava/lang/Integer;

    move-object/from16 v0, v56

    move/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1845
    const-string/jumbo v55, "neighborset_rsrp"

    new-instance v56, Ljava/lang/Integer;

    move-object/from16 v0, v56

    move/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1846
    const-string/jumbo v55, "neighborset_rsrp_2"

    new-instance v56, Ljava/lang/Integer;

    move-object/from16 v0, v56

    move/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1847
    const-string/jumbo v55, "neighborset_rsrp_3"

    new-instance v56, Ljava/lang/Integer;

    move-object/from16 v0, v56

    move/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1849
    const-string/jumbo v55, "neighborset_rsrq"

    new-instance v56, Ljava/lang/Integer;

    move-object/from16 v0, v56

    move/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1850
    const-string/jumbo v55, "neighborset_rsrq_2"

    new-instance v56, Ljava/lang/Integer;

    move-object/from16 v0, v56

    move/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1851
    const-string/jumbo v55, "neighborset_rsrq_3"

    new-instance v56, Ljava/lang/Integer;

    move-object/from16 v0, v56

    move/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1854
    const/16 v55, 0xff

    move/from16 v0, v38

    move/from16 v1, v55

    if-ne v0, v1, :cond_9

    .line 1855
    const-string/jumbo v55, "ri"

    const/16 v56, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1860
    :goto_4
    if-nez v10, :cond_a

    .line 1861
    const-string v55, "ca"

    const/16 v56, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1866
    :goto_5
    if-nez v43, :cond_b

    .line 1867
    const-string/jumbo v55, "s_pci"

    const/16 v56, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1872
    :goto_6
    if-nez v42, :cond_c

    .line 1873
    const-string/jumbo v55, "s_freq"

    const/16 v56, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1939
    .end local v7    # "band":I
    .end local v8    # "bandwidth":I
    .end local v10    # "ca":I
    .end local v15    # "earfcn_downlink":I
    .end local v16    # "earfcn_uplink":I
    .end local v17    # "lte_cell_id":I
    .end local v18    # "lte_nbr":[I
    .end local v19    # "lte_rrc_state":Ljava/lang/String;
    .end local v20    # "lte_rssi":I
    .end local v25    # "neighborset_pci":I
    .end local v26    # "neighborset_pci_2":I
    .end local v27    # "neighborset_pci_3":I
    .end local v28    # "neighborset_rsrp":I
    .end local v29    # "neighborset_rsrp_2":I
    .end local v30    # "neighborset_rsrp_3":I
    .end local v31    # "neighborset_rsrq":I
    .end local v32    # "neighborset_rsrq_2":I
    .end local v33    # "neighborset_rsrq_3":I
    .end local v37    # "pci":I
    .end local v38    # "ri":I
    .end local v39    # "rsrp":I
    .end local v40    # "rsrq":I
    .end local v42    # "s_freq":I
    .end local v43    # "s_pci":I
    .end local v44    # "sinr":F
    .end local v45    # "tac":I
    .end local v46    # "temp_ca":Ljava/lang/String;
    .end local v47    # "temp_freq":Ljava/lang/String;
    .end local v48    # "temp_pci":Ljava/lang/String;
    .end local v49    # "temp_pci_freq":Ljava/lang/String;
    :goto_7
    return-object v22

    .line 1732
    .end local v13    # "cqi":I
    .restart local v7    # "band":I
    .restart local v15    # "earfcn_downlink":I
    .restart local v45    # "tac":I
    :cond_5
    const/16 v55, 0x1

    move/from16 v0, v55

    if-lt v7, v0, :cond_6

    const/16 v55, 0x11

    move/from16 v0, v55

    if-gt v7, v0, :cond_6

    .line 1733
    add-int/lit16 v0, v15, 0x4650

    move/from16 v16, v0

    .restart local v16    # "earfcn_uplink":I
    goto/16 :goto_0

    .line 1734
    .end local v16    # "earfcn_uplink":I
    :cond_6
    move/from16 v16, v15

    .restart local v16    # "earfcn_uplink":I
    goto/16 :goto_0

    .line 1758
    .restart local v8    # "bandwidth":I
    .restart local v13    # "cqi":I
    .restart local v17    # "lte_cell_id":I
    .restart local v18    # "lte_nbr":[I
    .restart local v20    # "lte_rssi":I
    .restart local v37    # "pci":I
    .restart local v38    # "ri":I
    .restart local v39    # "rsrp":I
    .restart local v40    # "rsrq":I
    .restart local v44    # "sinr":F
    .restart local v46    # "temp_ca":Ljava/lang/String;
    .restart local v49    # "temp_pci_freq":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 1759
    .local v14, "e":Ljava/lang/Exception;
    const-string v48, "0"

    .line 1760
    .restart local v48    # "temp_pci":Ljava/lang/String;
    const-string v47, "0"

    .restart local v47    # "temp_freq":Ljava/lang/String;
    goto/16 :goto_1

    .line 1768
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_7
    :try_start_1
    const-string v55, "ADD("

    move-object/from16 v0, v46

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v55

    add-int/lit8 v55, v55, 0x4

    const-string v56, ")"

    move-object/from16 v0, v46

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v56

    move-object/from16 v0, v46

    move/from16 v1, v55

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 1769
    .local v11, "ca_string":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    .restart local v10    # "ca":I
    goto/16 :goto_2

    .line 1770
    .end local v10    # "ca":I
    .end local v11    # "ca_string":Ljava/lang/String;
    :catch_1
    move-exception v14

    .line 1771
    .restart local v14    # "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    .restart local v10    # "ca":I
    goto/16 :goto_2

    .line 1834
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v19    # "lte_rrc_state":Ljava/lang/String;
    .restart local v25    # "neighborset_pci":I
    .restart local v26    # "neighborset_pci_2":I
    .restart local v27    # "neighborset_pci_3":I
    .restart local v28    # "neighborset_rsrp":I
    .restart local v29    # "neighborset_rsrp_2":I
    .restart local v30    # "neighborset_rsrp_3":I
    .restart local v31    # "neighborset_rsrq":I
    .restart local v32    # "neighborset_rsrq_2":I
    .restart local v33    # "neighborset_rsrq_3":I
    .restart local v42    # "s_freq":I
    .restart local v43    # "s_pci":I
    :cond_8
    const-string/jumbo v55, "tx_power"

    const/16 v56, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1857
    :cond_9
    const-string/jumbo v55, "ri"

    new-instance v56, Ljava/lang/Integer;

    move-object/from16 v0, v56

    move/from16 v1, v38

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 1863
    :cond_a
    const-string v55, "ca"

    new-instance v56, Ljava/lang/Integer;

    move-object/from16 v0, v56

    invoke-direct {v0, v10}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 1869
    :cond_b
    const-string/jumbo v55, "s_pci"

    new-instance v56, Ljava/lang/Integer;

    move-object/from16 v0, v56

    move/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 1875
    :cond_c
    const-string/jumbo v55, "s_freq"

    new-instance v56, Ljava/lang/Integer;

    move-object/from16 v0, v56

    move/from16 v1, v42

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 1886
    .end local v7    # "band":I
    .end local v8    # "bandwidth":I
    .end local v10    # "ca":I
    .end local v13    # "cqi":I
    .end local v15    # "earfcn_downlink":I
    .end local v16    # "earfcn_uplink":I
    .end local v17    # "lte_cell_id":I
    .end local v18    # "lte_nbr":[I
    .end local v19    # "lte_rrc_state":Ljava/lang/String;
    .end local v20    # "lte_rssi":I
    .end local v25    # "neighborset_pci":I
    .end local v26    # "neighborset_pci_2":I
    .end local v27    # "neighborset_pci_3":I
    .end local v28    # "neighborset_rsrp":I
    .end local v29    # "neighborset_rsrp_2":I
    .end local v30    # "neighborset_rsrp_3":I
    .end local v31    # "neighborset_rsrq":I
    .end local v32    # "neighborset_rsrq_2":I
    .end local v33    # "neighborset_rsrq_3":I
    .end local v35    # "network_mode":Ljava/lang/String;
    .end local v37    # "pci":I
    .end local v38    # "ri":I
    .end local v39    # "rsrp":I
    .end local v40    # "rsrq":I
    .end local v42    # "s_freq":I
    .end local v43    # "s_pci":I
    .end local v44    # "sinr":F
    .end local v45    # "tac":I
    .end local v46    # "temp_ca":Ljava/lang/String;
    .end local v47    # "temp_freq":Ljava/lang/String;
    .end local v48    # "temp_pci":Ljava/lang/String;
    .end local v49    # "temp_pci_freq":Ljava/lang/String;
    :cond_d
    const-string v35, "WCDMA"

    .line 1895
    .restart local v35    # "network_mode":Ljava/lang/String;
    const/16 v55, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Int(I)I

    move-result v12

    .line 1897
    .local v12, "cell_id":I
    const/16 v55, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Int(I)I

    move-result v50

    .line 1898
    .local v50, "tx_agc":I
    const/16 v55, 0x49

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Int(I)I

    move-result v51

    .line 1899
    .local v51, "ul_inter":I
    const/16 v55, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Int(I)I

    move-result v4

    .line 1900
    .local v4, "active_psc":I
    const/16 v55, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Int(I)I

    move-result v5

    .line 1901
    .local v5, "active_rscp":I
    const/16 v55, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Int(I)I

    move-result v3

    .line 1902
    .local v3, "active_ecio":I
    const/16 v55, 0x2b

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Int(I)I

    move-result v13

    .line 1903
    .restart local v13    # "cqi":I
    const/16 v55, 0x20

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Float(I)F

    move-result v9

    .line 1905
    .local v9, "bler":F
    sub-int v41, v5, v3

    .line 1906
    .local v41, "rssi":I
    const/16 v55, 0x1e

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Ints(I)[I

    move-result-object v36

    .line 1907
    .local v36, "nset":[I
    const/16 v53, 0x0

    .line 1908
    .local v53, "w_nset_psc":I
    const/16 v54, 0x0

    .line 1909
    .local v54, "w_nset_rscp":I
    const/16 v52, 0x0

    .line 1910
    .local v52, "w_nset_ecio":I
    if-eqz v36, :cond_e

    const/16 v55, 0x0

    aget v55, v36, v55

    if-lez v55, :cond_e

    .line 1911
    const/16 v55, 0x1

    aget v53, v36, v55

    .line 1912
    const/16 v55, 0x8

    aget v54, v36, v55

    .line 1913
    const/16 v55, 0xf

    aget v52, v36, v55

    .line 1916
    :cond_e
    const-string/jumbo v55, "network_mode"

    new-instance v56, Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1917
    const-string/jumbo v55, "mcc"

    new-instance v56, Ljava/lang/Integer;

    move-object/from16 v0, v56

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1918
    const-string/jumbo v55, "mnc"

    new-instance v56, Ljava/lang/Integer;

    move-object/from16 v0, v56

    move/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1921
    const-string v55, "cell_id"

    new-instance v56, Ljava/lang/Integer;

    move-object/from16 v0, v56

    invoke-direct {v0, v12}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1922
    const-string/jumbo v55, "rssi"

    new-instance v56, Ljava/lang/Integer;

    move-object/from16 v0, v56

    move/from16 v1, v41

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1924
    const/16 v55, 0x3e8

    move/from16 v0, v50

    move/from16 v1, v55

    if-eq v0, v1, :cond_f

    .line 1925
    const-string/jumbo v55, "tx_power"

    new-instance v56, Ljava/lang/Integer;

    move-object/from16 v0, v56

    move/from16 v1, v50

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1929
    :goto_8
    const-string/jumbo v55, "ul_interference"

    new-instance v56, Ljava/lang/Integer;

    move-object/from16 v0, v56

    move/from16 v1, v51

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1930
    const-string v55, "activeset_psc"

    new-instance v56, Ljava/lang/Integer;

    move-object/from16 v0, v56

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1931
    const-string v55, "activeset_rscp"

    new-instance v56, Ljava/lang/Integer;

    move-object/from16 v0, v56

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1932
    const-string v55, "activeset_ecio"

    new-instance v56, Ljava/lang/Integer;

    move-object/from16 v0, v56

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1933
    const-string/jumbo v55, "neighborset_psc"

    new-instance v56, Ljava/lang/Integer;

    move-object/from16 v0, v56

    move/from16 v1, v53

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1934
    const-string/jumbo v55, "neighborset_rscp"

    new-instance v56, Ljava/lang/Integer;

    move-object/from16 v0, v56

    move/from16 v1, v54

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1935
    const-string/jumbo v55, "neighborset_ecio"

    new-instance v56, Ljava/lang/Integer;

    move-object/from16 v0, v56

    move/from16 v1, v52

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1936
    const-string v55, "cqi"

    new-instance v56, Ljava/lang/Integer;

    move-object/from16 v0, v56

    invoke-direct {v0, v13}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1937
    const-string v55, "bler"

    new-instance v56, Ljava/lang/Float;

    move-object/from16 v0, v56

    invoke-direct {v0, v9}, Ljava/lang/Float;-><init>(F)V

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 1927
    :cond_f
    const-string/jumbo v55, "tx_power"

    const/16 v56, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8
.end method

.method public getModemDb_strArray(I)[Ljava/lang/String;
    .locals 3
    .param p1, "db_item"    # I

    .prologue
    const/4 v1, 0x0

    .line 2004
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getISkyTelephony()Lcom/android/internal/telephony/gsm/ISkyTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->getModemDb_strArray(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2008
    :goto_0
    return-object v1

    .line 2005
    :catch_0
    move-exception v0

    .line 2006
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2007
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2008
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getModemDbgInfo()Ljava/util/HashMap;
    .locals 40

    .prologue
    .line 2508
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 2511
    .local v19, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v23, " - "

    .line 2514
    .local v23, "unknown":Ljava/lang/String;
    const/16 v37, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Int(I)I

    move-result v22

    .line 2515
    .local v22, "srv_type":I
    const-string v37, "TelephonyManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "service_Type = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2517
    const/16 v37, 0x1

    move/from16 v0, v22

    move/from16 v1, v37

    if-ge v0, v1, :cond_1

    const/16 v37, 0x3

    move/from16 v0, v22

    move/from16 v1, v37

    if-le v0, v1, :cond_1

    .line 2519
    const-string/jumbo v37, "plmn"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2522
    const-string/jumbo v37, "wcdma_dl_uarfcn"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2523
    const-string/jumbo v37, "wcdma_cell_id"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2524
    const-string/jumbo v37, "wcdma_psc"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2525
    const-string/jumbo v37, "wcdma_drx"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2528
    const-string v37, "lte_band"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2529
    const-string v37, "lte_bandwidth"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2530
    const-string v37, "lte_earfcn"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2531
    const-string v37, "lte_pci"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2532
    const-string v37, "lte_rssi"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2533
    const-string v37, "lte_rsrp"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2534
    const-string v37, "lte_rsrq"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2535
    const-string v37, "lte_sinr"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2536
    const-string v37, "lte_cell_id"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2537
    const-string v37, "lte_tx_power"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2721
    :cond_0
    :goto_0
    return-object v19

    .line 2542
    :cond_1
    const/16 v37, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v21

    .line 2543
    .local v21, "srv_status":Ljava/lang/String;
    const-string/jumbo v37, "service_status"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2552
    const/16 v37, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v25

    .line 2553
    .local v25, "wcdma_dl_uarfcn":Ljava/lang/String;
    const/16 v37, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v24

    .line 2554
    .local v24, "wcdma_cell_id":Ljava/lang/String;
    const/16 v37, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v31

    .line 2555
    .local v31, "wcdma_psc":Ljava/lang/String;
    const/16 v37, 0x1d

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v26

    .line 2556
    .local v26, "wcdma_drx":Ljava/lang/String;
    const/16 v37, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v32

    .line 2557
    .local v32, "wcdma_rrc_s":Ljava/lang/String;
    const/16 v37, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v35

    .line 2558
    .local v35, "wcdma_rx_agc":Ljava/lang/String;
    const/16 v37, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v36

    .line 2559
    .local v36, "wcdma_tx_agc":Ljava/lang/String;
    const/16 v37, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v27

    .line 2560
    .local v27, "wcdma_ecio":Ljava/lang/String;
    const/16 v37, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v34

    .line 2561
    .local v34, "wcdma_rssi":Ljava/lang/String;
    const/16 v37, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v33

    .line 2562
    .local v33, "wcdma_rscp":Ljava/lang/String;
    const/16 v37, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v30

    .line 2563
    .local v30, "wcdma_msop":Ljava/lang/String;
    const/16 v37, 0x43

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v29

    .line 2564
    .local v29, "wcdma_mm_rej":Ljava/lang/String;
    const/16 v37, 0x42

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v28

    .line 2572
    .local v28, "wcdma_gmm_rej":Ljava/lang/String;
    const-string/jumbo v37, "wcdma_dl_uarfcn"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2573
    const-string/jumbo v37, "wcdma_cell_id"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2574
    const-string/jumbo v37, "wcdma_psc"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2575
    const-string/jumbo v37, "wcdma_drx"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2576
    const-string/jumbo v37, "wcdma_rrc_s"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2577
    const-string/jumbo v37, "wcdma_rx_agc"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2578
    const-string/jumbo v37, "wcdma_tx_agc"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2579
    const-string/jumbo v37, "wcdma_ecio"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2580
    const-string/jumbo v37, "wcdma_rssi"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2581
    const-string/jumbo v37, "wcdma_rscp"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2582
    const-string/jumbo v37, "wcdma_msop"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2583
    const-string/jumbo v37, "wcdma_mm_rej"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2584
    const-string/jumbo v37, "wcdma_gmm_rej"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2588
    const/16 v37, 0x1e

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Ints(I)[I

    move-result-object v20

    .line 2589
    .local v20, "nset":[I
    if-eqz v20, :cond_f

    .line 2590
    const/16 v37, 0x0

    aget v37, v20, v37

    const/16 v38, 0x6

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_2

    const/16 v37, 0x0

    const/16 v38, 0x6

    aput v38, v20, v37

    .line 2591
    :cond_2
    const-string/jumbo v37, "wcdma_nset_cnt"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x0

    aget v39, v20, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2593
    const/16 v37, 0x0

    aget v37, v20, v37

    if-lez v37, :cond_3

    .line 2594
    const-string/jumbo v37, "wcdma_nset_psc1"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x1

    aget v39, v20, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2595
    const-string/jumbo v37, "wcdma_nset_rscp1"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x8

    aget v39, v20, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2596
    const-string/jumbo v37, "wcdma_nset_ecio1"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0xf

    aget v39, v20, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2598
    :cond_3
    const/16 v37, 0x0

    aget v37, v20, v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_4

    .line 2599
    const-string/jumbo v37, "wcdma_nset_psc2"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x2

    aget v39, v20, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2600
    const-string/jumbo v37, "wcdma_nset_rscp2"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x9

    aget v39, v20, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2601
    const-string/jumbo v37, "wcdma_nset_ecio2"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x10

    aget v39, v20, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2603
    :cond_4
    const/16 v37, 0x0

    aget v37, v20, v37

    const/16 v38, 0x2

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_5

    .line 2604
    const-string/jumbo v37, "wcdma_nset_psc3"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x3

    aget v39, v20, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2605
    const-string/jumbo v37, "wcdma_nset_rscp3"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0xa

    aget v39, v20, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2606
    const-string/jumbo v37, "wcdma_nset_ecio3"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x11

    aget v39, v20, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2608
    :cond_5
    const/16 v37, 0x0

    aget v37, v20, v37

    const/16 v38, 0x3

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_6

    .line 2609
    const-string/jumbo v37, "wcdma_nset_psc4"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x4

    aget v39, v20, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2610
    const-string/jumbo v37, "wcdma_nset_rscp4"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0xb

    aget v39, v20, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2611
    const-string/jumbo v37, "wcdma_nset_ecio4"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x12

    aget v39, v20, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2613
    :cond_6
    const/16 v37, 0x0

    aget v37, v20, v37

    const/16 v38, 0x4

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_7

    .line 2614
    const-string/jumbo v37, "wcdma_nset_psc5"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x5

    aget v39, v20, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2615
    const-string/jumbo v37, "wcdma_nset_rscp5"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0xc

    aget v39, v20, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2616
    const-string/jumbo v37, "wcdma_nset_ecio5"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x13

    aget v39, v20, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2618
    :cond_7
    const/16 v37, 0x0

    aget v37, v20, v37

    const/16 v38, 0x5

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_8

    .line 2619
    const-string/jumbo v37, "wcdma_nset_psc6"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x6

    aget v39, v20, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2620
    const-string/jumbo v37, "wcdma_nset_rscp6"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0xd

    aget v39, v20, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2621
    const-string/jumbo v37, "wcdma_nset_ecio6"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x14

    aget v39, v20, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2636
    :cond_8
    :goto_1
    const/16 v37, 0x4a

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v3

    .line 2637
    .local v3, "lte_band":Ljava/lang/String;
    const/16 v37, 0x4c

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v4

    .line 2638
    .local v4, "lte_bandwidth":Ljava/lang/String;
    const/16 v37, 0x4b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v6

    .line 2639
    .local v6, "lte_earfcn":Ljava/lang/String;
    const/16 v37, 0x51

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v12

    .line 2640
    .local v12, "lte_pci":Ljava/lang/String;
    const/16 v37, 0x4d

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v16

    .line 2641
    .local v16, "lte_rssi":Ljava/lang/String;
    const/16 v37, 0x4e

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v14

    .line 2642
    .local v14, "lte_rsrp":Ljava/lang/String;
    const/16 v37, 0x4f

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v15

    .line 2643
    .local v15, "lte_rsrq":Ljava/lang/String;
    const/16 v37, 0x50

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v17

    .line 2644
    .local v17, "lte_sinr":Ljava/lang/String;
    const/16 v37, 0x52

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v5

    .line 2645
    .local v5, "lte_cell_id":Ljava/lang/String;
    const/16 v37, 0x57

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v7

    .line 2646
    .local v7, "lte_emm_cause":Ljava/lang/String;
    const/16 v37, 0x58

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v10

    .line 2647
    .local v10, "lte_esm_cause":Ljava/lang/String;
    const/16 v37, 0x5a

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v18

    .line 2648
    .local v18, "lte_tx_power":Ljava/lang/String;
    const/16 v37, 0x5b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v13

    .line 2649
    .local v13, "lte_rrc_state":Ljava/lang/String;
    const/16 v37, 0x5c

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v8

    .line 2650
    .local v8, "lte_emm_state":Ljava/lang/String;
    const/16 v37, 0x5d

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v9

    .line 2657
    .local v9, "lte_emm_substate":Ljava/lang/String;
    const-string v37, "lte_band"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2658
    const-string v37, "lte_bandwidth"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2659
    const-string v37, "lte_earfcn"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2660
    const-string v37, "lte_pci"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-direct {v0, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2661
    const-string v37, "lte_rssi"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2662
    const-string v37, "lte_rsrp"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-direct {v0, v14}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2663
    const-string v37, "lte_rsrq"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-direct {v0, v15}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2664
    const-string v37, "lte_sinr"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2665
    const-string v37, "lte_cell_id"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2666
    const-string v37, "lte_emm_cause"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2667
    const-string v37, "lte_esm_cause"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2668
    const-string v37, "lte_tx_power"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2669
    const-string v37, "lte_rrc_state"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-direct {v0, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2670
    const-string v37, "lte_emm_state"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2671
    const-string v37, "lte_emm_substate"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-direct {v0, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2675
    const/16 v37, 0x5f

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Ints(I)[I

    move-result-object v11

    .line 2676
    .local v11, "lte_nset":[I
    if-eqz v11, :cond_10

    .line 2677
    const/16 v37, 0x0

    aget v37, v11, v37

    const/16 v38, 0x6

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_9

    const/16 v37, 0x0

    const/16 v38, 0x6

    aput v38, v11, v37

    .line 2678
    :cond_9
    const-string v37, "lte_nset_cnt"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x0

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2680
    const/16 v37, 0x0

    aget v37, v11, v37

    if-lez v37, :cond_a

    .line 2681
    const-string v37, "lte_nset_pci1"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x1

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2682
    const-string v37, "lte_nset_rsrq1"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x9

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2683
    const-string v37, "lte_nset_rsrp1"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x11

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2684
    const-string v37, "lte_nset_rssi1"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x19

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2686
    :cond_a
    const/16 v37, 0x0

    aget v37, v11, v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_b

    .line 2687
    const-string v37, "lte_nset_pci2"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x2

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2688
    const-string v37, "lte_nset_rsrq2"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0xa

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2689
    const-string v37, "lte_nset_rsrp2"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x12

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2690
    const-string v37, "lte_nset_rssi2"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x1a

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2692
    :cond_b
    const/16 v37, 0x0

    aget v37, v11, v37

    const/16 v38, 0x2

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_c

    .line 2693
    const-string v37, "lte_nset_pci3"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x3

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2694
    const-string v37, "lte_nset_rsrq3"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0xb

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2695
    const-string v37, "lte_nset_rsrp3"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x13

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2696
    const-string v37, "lte_nset_rssi3"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x1b

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2698
    :cond_c
    const/16 v37, 0x0

    aget v37, v11, v37

    const/16 v38, 0x3

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_d

    .line 2699
    const-string v37, "lte_nset_pci4"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x4

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2700
    const-string v37, "lte_nset_rsrq4"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0xc

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2701
    const-string v37, "lte_nset_rsrp4"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x14

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2702
    const-string v37, "lte_nset_rssi4"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x1c

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2704
    :cond_d
    const/16 v37, 0x0

    aget v37, v11, v37

    const/16 v38, 0x4

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_e

    .line 2705
    const-string v37, "lte_nset_pci5"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x5

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2706
    const-string v37, "lte_nset_rsrq5"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0xd

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2707
    const-string v37, "lte_nset_rsrp5"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x15

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2708
    const-string v37, "lte_nset_rssi5"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x1d

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2710
    :cond_e
    const/16 v37, 0x0

    aget v37, v11, v37

    const/16 v38, 0x5

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_0

    .line 2711
    const-string v37, "lte_nset_pci6"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x6

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2712
    const-string v37, "lte_nset_rsrq6"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0xe

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2713
    const-string v37, "lte_nset_rsrp6"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x16

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2714
    const-string v37, "lte_nset_rssi6"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x1e

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2625
    .end local v3    # "lte_band":Ljava/lang/String;
    .end local v4    # "lte_bandwidth":Ljava/lang/String;
    .end local v5    # "lte_cell_id":Ljava/lang/String;
    .end local v6    # "lte_earfcn":Ljava/lang/String;
    .end local v7    # "lte_emm_cause":Ljava/lang/String;
    .end local v8    # "lte_emm_state":Ljava/lang/String;
    .end local v9    # "lte_emm_substate":Ljava/lang/String;
    .end local v10    # "lte_esm_cause":Ljava/lang/String;
    .end local v11    # "lte_nset":[I
    .end local v12    # "lte_pci":Ljava/lang/String;
    .end local v13    # "lte_rrc_state":Ljava/lang/String;
    .end local v14    # "lte_rsrp":Ljava/lang/String;
    .end local v15    # "lte_rsrq":Ljava/lang/String;
    .end local v16    # "lte_rssi":Ljava/lang/String;
    .end local v17    # "lte_sinr":Ljava/lang/String;
    .end local v18    # "lte_tx_power":Ljava/lang/String;
    :cond_f
    const-string/jumbo v37, "wcdma_nset_cnt"

    const-string v38, "0"

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2718
    .restart local v3    # "lte_band":Ljava/lang/String;
    .restart local v4    # "lte_bandwidth":Ljava/lang/String;
    .restart local v5    # "lte_cell_id":Ljava/lang/String;
    .restart local v6    # "lte_earfcn":Ljava/lang/String;
    .restart local v7    # "lte_emm_cause":Ljava/lang/String;
    .restart local v8    # "lte_emm_state":Ljava/lang/String;
    .restart local v9    # "lte_emm_substate":Ljava/lang/String;
    .restart local v10    # "lte_esm_cause":Ljava/lang/String;
    .restart local v11    # "lte_nset":[I
    .restart local v12    # "lte_pci":Ljava/lang/String;
    .restart local v13    # "lte_rrc_state":Ljava/lang/String;
    .restart local v14    # "lte_rsrp":Ljava/lang/String;
    .restart local v15    # "lte_rsrq":Ljava/lang/String;
    .restart local v16    # "lte_rssi":Ljava/lang/String;
    .restart local v17    # "lte_sinr":Ljava/lang/String;
    .restart local v18    # "lte_tx_power":Ljava/lang/String;
    :cond_10
    const-string v37, "lte_nset_cnt"

    const-string v38, "0"

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1143
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getMsisdn()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1148
    :goto_0
    return-object v1

    .line 1144
    :catch_0
    move-exception v0

    .line 1145
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1146
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1148
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 363
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 367
    :goto_0
    return-object v1

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 366
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 367
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .locals 3

    .prologue
    .line 637
    const-string v0, "gsm.operator.iso-country"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 3

    .prologue
    .line 613
    const-string v0, "gsm.operator.numeric"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 601
    const-string v0, "gsm.operator.alpha"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorSky()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1681
    const-string v0, "gsm.operator.sky_numeric"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType()I
    .locals 1

    .prologue
    .line 711
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    return v0
.end method

.method public getNetworkTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 831
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPersoIndEnabled2(I)Z
    .locals 1
    .param p1, "perso_feature"    # I

    .prologue
    .line 2849
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getPersoIndEnabled2(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2854
    :goto_0
    return v0

    .line 2851
    :catch_0
    move-exception v0

    .line 2854
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2850
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 421
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    const/4 v0, 0x0

    .line 424
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    goto :goto_0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1008
    const-string v0, "gsm.sim.operator.iso-country"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 3

    .prologue
    .line 988
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1000
    const-string v0, "gsm.sim.operator.alpha"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1021
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1026
    :goto_0
    return-object v1

    .line 1022
    :catch_0
    move-exception v0

    .line 1023
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1024
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1026
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSimState()I
    .locals 4

    .prologue
    .line 944
    const-string v1, "gsm.sim.state"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v2

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 946
    .local v0, "prop":Ljava/lang/String;
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 947
    const/4 v1, 0x1

    .line 975
    :goto_0
    return v1

    .line 949
    :cond_0
    const-string v1, "PIN_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 950
    const/4 v1, 0x2

    goto :goto_0

    .line 952
    :cond_1
    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 953
    const/4 v1, 0x3

    goto :goto_0

    .line 955
    :cond_2
    const-string v1, "PERSO_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 956
    const/4 v1, 0x4

    goto :goto_0

    .line 958
    :cond_3
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 959
    const/4 v1, 0x5

    goto :goto_0

    .line 961
    :cond_4
    const-string v1, "CARD_IO_ERROR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 962
    const/4 v1, 0x6

    goto :goto_0

    .line 965
    :cond_5
    const-string v1, "PERM_DISABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 966
    const/4 v1, 0x7

    goto :goto_0

    .line 970
    :cond_6
    const-string v1, "SIM SIM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 971
    const/16 v1, 0x8

    goto :goto_0

    .line 975
    :cond_7
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSmscAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1583
    :try_start_0
    const-string v1, "iskytelephony"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/gsm/ISkyTelephony;

    move-result-object v0

    .line 1584
    .local v0, "_iSkyTelephony":Lcom/android/internal/telephony/gsm/ISkyTelephony;
    invoke-interface {v0}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->getSmscAddress()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1588
    .end local v0    # "_iSkyTelephony":Lcom/android/internal/telephony/gsm/ISkyTelephony;
    :goto_0
    return-object v1

    .line 1586
    :catch_0
    move-exception v1

    .line 1588
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1585
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1067
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1072
    :goto_0
    return-object v1

    .line 1068
    :catch_0
    move-exception v0

    .line 1069
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1070
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1072
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1215
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailAlphaTag()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1220
    :goto_0
    return-object v1

    .line 1216
    :catch_0
    move-exception v0

    .line 1217
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1218
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1220
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1160
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1165
    :goto_0
    return-object v1

    .line 1161
    :catch_0
    move-exception v0

    .line 1162
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1163
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1165
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMessageCount()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1197
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getVoiceMessageCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1202
    :goto_0
    return v1

    .line 1198
    :catch_0
    move-exception v0

    .line 1199
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1200
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1202
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceNetworkType()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 764
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 765
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 766
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getVoiceNetworkType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 776
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 771
    :catch_0
    move-exception v0

    .line 773
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 774
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 776
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public hasIccCard()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 921
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->hasIccCard()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 927
    :goto_0
    return v1

    .line 922
    :catch_0
    move-exception v0

    .line 924
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 925
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 927
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isNetworkRoaming()Z
    .locals 4

    .prologue
    .line 624
    const-string/jumbo v0, "true"

    const-string v1, "gsm.operator.isroaming"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v2

    const-string v3, "false"

    invoke-static {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSmsCapable()Z
    .locals 2

    .prologue
    .line 1540
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1541
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isVoiceCapable()Z
    .locals 2

    .prologue
    .line 1523
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1524
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 5
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I

    .prologue
    .line 1445
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1447
    .local v1, "pkgForDebug":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x1

    :try_start_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1448
    .local v0, "notifyNow":Ljava/lang/Boolean;
    sget-object v2, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-nez v2, :cond_miui_0

    const-string v2, "telephony.registry"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v2

    sput-object v2, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    :cond_miui_0
    sget-object v2, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v3, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v2, v1, v3, p2, v4}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1454
    .end local v0    # "notifyNow":Ljava/lang/Boolean;
    :goto_1
    return-void

    .line 1445
    .end local v1    # "pkgForDebug":Ljava/lang/String;
    :cond_0
    const-string v1, "<unknown>"

    goto :goto_0

    .line 1451
    .restart local v1    # "pkgForDebug":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 1449
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public setCellInfoListRate(I)V
    .locals 1
    .param p1, "rateInMillis"    # I

    .prologue
    .line 2744
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setCellInfoListRate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2748
    :goto_0
    return-void

    .line 2746
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2745
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setFANumber(I)Z
    .locals 1
    .param p1, "uarfcn"    # I

    .prologue
    .line 2468
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->setFreqChannel(I)Z

    move-result v0

    return v0
.end method

.method public setFreqChannel(I)Z
    .locals 6
    .param p1, "uarfcn"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2435
    const-string v3, "TelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setFreqChannelInternal request uarfcn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    if-lez p1, :cond_0

    .line 2438
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->nvif:Lcom/android/internal/telephony/NVInterface;

    iput v1, v2, Lcom/android/internal/telephony/NVInterface;->wcdma_dl_freq_enabled:I

    .line 2439
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->nvif:Lcom/android/internal/telephony/NVInterface;

    iput p1, v2, Lcom/android/internal/telephony/NVInterface;->wcdma_dl_freq:I

    .line 2448
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getISkyTelephony()Lcom/android/internal/telephony/gsm/ISkyTelephony;

    move-result-object v2

    const/16 v3, 0xb

    iget-object v4, p0, Landroid/telephony/TelephonyManager;->nvif:Lcom/android/internal/telephony/NVInterface;

    iget v4, v4, Lcom/android/internal/telephony/NVInterface;->wcdma_dl_freq_enabled:I

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->setQcNvWrite_int(III)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2453
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getISkyTelephony()Lcom/android/internal/telephony/gsm/ISkyTelephony;

    move-result-object v2

    const/16 v3, 0xa

    iget-object v4, p0, Landroid/telephony/TelephonyManager;->nvif:Lcom/android/internal/telephony/NVInterface;

    iget v4, v4, Lcom/android/internal/telephony/NVInterface;->wcdma_dl_freq:I

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->setQcNvWrite_int(III)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2458
    :goto_1
    return v1

    .line 2443
    :cond_0
    const-string v1, "TelephonyManager"

    const-string v3, "Please Enter Valid Channel Number!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 2444
    goto :goto_1

    .line 2449
    :catch_0
    move-exception v0

    .line 2450
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2454
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2455
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public setIccLockEnabled(ZLjava/lang/String;)I
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 2787
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setIccLockEnabled(ZLjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2792
    :goto_0
    return v0

    .line 2789
    :catch_0
    move-exception v0

    .line 2792
    :goto_1
    const/4 v0, -0x1

    goto :goto_0

    .line 2788
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public setNetworkKInd(I)Z
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 2476
    packed-switch p1, :pswitch_data_0

    .line 2489
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getISkyTelephony()Lcom/android/internal/telephony/gsm/ISkyTelephony;

    move-result-object v2

    sget v3, Landroid/telephony/TelephonyManager;->networkType:I

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->setNetworkKindInternal(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2493
    :goto_1
    return v1

    .line 2478
    :pswitch_0
    const/4 v2, 0x2

    sput v2, Landroid/telephony/TelephonyManager;->networkType:I

    goto :goto_0

    .line 2481
    :pswitch_1
    sput v1, Landroid/telephony/TelephonyManager;->networkType:I

    goto :goto_0

    .line 2484
    :pswitch_2
    const/16 v2, 0x9

    sput v2, Landroid/telephony/TelephonyManager;->networkType:I

    goto :goto_0

    .line 2490
    :catch_0
    move-exception v0

    .line 2491
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_1

    .line 2492
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2493
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_1

    .line 2476
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setPersoInd2(Ljava/lang/String;ZI)I
    .locals 1
    .param p1, "dck"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "perso_feature"    # I

    .prologue
    .line 2837
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setPersoInd2(Ljava/lang/String;ZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2842
    :goto_0
    return v0

    .line 2839
    :catch_0
    move-exception v0

    .line 2842
    :goto_1
    const/4 v0, -0x1

    goto :goto_0

    .line 2838
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public setSmscAddress(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1593
    :try_start_0
    const-string v1, "iskytelephony"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/gsm/ISkyTelephony;

    move-result-object v0

    .line 1594
    .local v0, "_iSkyTelephony":Lcom/android/internal/telephony/gsm/ISkyTelephony;
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->setSmscAddress(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1598
    .end local v0    # "_iSkyTelephony":Lcom/android/internal/telephony/gsm/ISkyTelephony;
    :goto_0
    return-void

    .line 1596
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1595
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public answerRingingCall()V
    .locals 3

    .prologue
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#answerRingingCall"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->call(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public cancelMissedCallsNotification()V
    .locals 3

    .prologue
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->cancelMissedCallsNotification()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#cancelMissedCallsNotification"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dial(Ljava/lang/String;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->dial(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#dial"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public disableDataConnectivity()Z
    .locals 3

    .prologue
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#disableDataConnectivity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableDataConnectivity()Z
    .locals 3

    .prologue
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#enableDataConnectivity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public endCall()Z
    .locals 3

    .prologue
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#endCall"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method
.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->handlePinMmi(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#handlePinMmi"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method
.method public isDataConnectivityPossible()Z
    .locals 3

    .prologue
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isDataConnectivityPossible()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isDataConnectivityPossible"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isIdle()Z
    .locals 3

    .prologue
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isIdle"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isOffhook()Z
    .locals 3

    .prologue
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isOffhook"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRadioOn()Z
    .locals 3

    .prologue
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isRadioOn"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRinging()Z
    .locals 3

    .prologue
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isRinging"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSimPinEnabled()Z
    .locals 3

    .prologue
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isSimPinEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isSimPinEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 3

    .prologue
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->needsOtaServiceProvisioning()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#needsOtaServiceProvisioning"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    iput-object p1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setRadio(Z)Z
    .locals 3
    .param p1, "turnOn"    # Z

    .prologue
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#setRadio"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRadioPower(Z)Z
    .locals 3
    .param p1, "turnOn"    # Z

    .prologue
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setRadioPower(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#setRadioPower"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public silenceRinger()V
    .locals 3

    .prologue
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#silenceRinger"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public toggleRadioOnOff()V
    .locals 3

    .prologue
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->toggleRadioOnOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#toggleRadioOnOff"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateServiceLocation()V
    .locals 3

    .prologue
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->updateServiceLocation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#updateServiceLocation"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
