.class public Landroid/net/wifi/WifiWatchdogStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiWatchdogStateMachine$4;,
        Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;,
        Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;,
        Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;,
        Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;,
        Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x21000

.field private static final BSSID_STAT_CACHE_SIZE:I = 0x14

.field private static final BSSID_STAT_EMPTY_COUNT:I = 0x3

.field private static final BSSID_STAT_RANGE_HIGH_DBM:I = -0x2d

.field private static final BSSID_STAT_RANGE_LOW_DBM:I = -0x69

.field private static final CHECK_POOR_INTERNET_INTERVAL_TIME_MS:I = 0x3e8

.field static final CMD_CHECK_POOR_INTERNET:I = 0x21019

.field private static final CMD_PING_CHECK:I = 0x2101a

.field private static final CMD_RSSI_FETCH:I = 0x2100b

.field private static DBG:Z = false

.field private static final DEFAULT_DNS_PING_TIMEOUT_MS:I = 0x7d0

.field private static final DEFAULT_MIN_DNS_RESPONSES:I = 0x1

.field private static final DEFAULT_NUM_DNS_PINGS:I = 0x5

.field public static final DEFAULT_POOR_NETWORK_AVOIDANCE_ENABLED:Z = false

.field private static final DEFAULT_WALLED_GARDEN_INTERVAL_MS:J = 0x1b7740L

.field private static final DEFAULT_WALLED_GARDEN_URL:Ljava/lang/String; = "http://clients3.google.com/generate_204"

.field private static final DNS_INTRATEST_PING_INTERVAL_MS:I = 0xc8

.field private static final DNS_START_DELAY_MS:I = 0xbb8

.field private static final EVENT_BSSID_CHANGE:I = 0x21007

.field private static final EVENT_NETWORK_STATE_CHANGE:I = 0x21002

.field private static final EVENT_RSSI_CHANGE:I = 0x21003

.field private static final EVENT_SCREEN_OFF:I = 0x21009

.field private static final EVENT_SCREEN_ON:I = 0x21008

.field private static final EVENT_SUPPLICANT_STATE_CHANGE:I = 0x21004

.field private static final EVENT_WATCHDOG_SETTINGS_CHANGE:I = 0x21006

.field private static final EVENT_WATCHDOG_TOGGLED:I = 0x21001

.field private static final EVENT_WIFI_RADIO_STATE_CHANGE:I = 0x21005

.field private static final EXP_COEFFICIENT_MONITOR:D = 0.5

.field private static final EXP_COEFFICIENT_RECORD:D = 0.1

.field static final GOOD_LINK_DETECTED:I = 0x21016

.field private static final GOOD_LINK_LOSS_THRESHOLD:D = 0.1

.field private static final GOOD_LINK_RSSI_RANGE_MAX:I = 0x14

.field private static final GOOD_LINK_RSSI_RANGE_MIN:I = 0x3

.field private static final GOOD_LINK_TARGET:[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

.field private static final LINK_MONITOR_LEVEL_THRESHOLD:I = 0x4

.field private static final LINK_SAMPLING_INTERVAL_MS:J = 0x3e8L

.field private static final MAX_AVOID_TIME:[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

.field private static final PING_START_DELAY_MS:I = 0x2710

.field static final POOR_LINK_DETECTED:I = 0x21015

.field private static final POOR_LINK_LOSS_THRESHOLD:D = 0.5

.field private static final POOR_LINK_MIN_VOLUME:D = 2.0

.field private static final POOR_LINK_SAMPLE_COUNT:I = 0x3

.field private static final WALLED_GARDEN_SOCKET_TIMEOUT_MS:I = 0x2710

.field private static mTryNumFail:I

.field private static sPresetLoss:[D

.field private static sWifiOnly:Z


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBssidCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

.field private mConnectionInfo:Landroid/net/wifi/WifiInfo;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

.field private mCurrentLoss:Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

.field private mCurrentSignalLevel:I

.field private mDefaultState:Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

.field private mDnsCheckShortIntervalMs:J

.field private mDnsCheckingState:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;

.field private mDnsPingTimeoutMs:I

.field private mDnsPinger:Landroid/net/DnsPinger;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mInternetConnectionResult:Z

.field private mIsCaptiveNetwork:Z

.field private mIsScreenOn:Z

.field private mLinkMonitoringState:Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mMinDnsResponses:I

.field private mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

.field private mNumDnsPings:I

.field private mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

.field private mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

.field private mPingToken:I

.field private mPoorNetworkDetectionEnabled:Z

.field private mRssiFetchToken:I

.field private mVerifyingLinkState:Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

.field private mWalledGardenIntervalMs:J

.field private mWalledGardenUrl:Ljava/lang/String;

.field private mWatchdogDisabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

.field private mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWsmChannel:Lcom/android/internal/util/AsyncChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const v9, 0x493e0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 100
    sput-boolean v7, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    .line 264
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    new-instance v1, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    const v2, 0x1b7740

    invoke-direct {v1, v5, v6, v2}, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;-><init>(III)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    const/4 v2, 0x5

    invoke-direct {v1, v6, v2, v9}, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;-><init>(III)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    const/4 v2, 0x6

    const/16 v3, 0xa

    const v4, 0xea60

    invoke-direct {v1, v2, v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;-><init>(III)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    const/16 v2, 0x9

    const/16 v3, 0x1e

    invoke-direct {v1, v2, v3, v5}, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;-><init>(III)V

    aput-object v1, v0, v6

    sput-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->GOOD_LINK_TARGET:[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    .line 282
    new-array v0, v6, [Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    new-instance v1, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    const v2, 0x1b7740

    const/16 v3, -0xc8

    invoke-direct {v1, v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;-><init>(II)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    const/16 v2, -0x46

    invoke-direct {v1, v9, v2}, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;-><init>(II)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    const/16 v2, -0x37

    invoke-direct {v1, v5, v2}, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;-><init>(II)V

    aput-object v1, v0, v8

    sput-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->MAX_AVOID_TIME:[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    .line 300
    sput-boolean v5, Landroid/net/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    .line 318
    sput v5, Landroid/net/wifi/WifiWatchdogStateMachine;->mTryNumFail:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 369
    const-string v0, "WifiWatchdogStateMachine"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 295
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    .line 304
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mBssidCache:Landroid/util/LruCache;

    .line 306
    iput v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I

    .line 310
    iput-boolean v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z

    .line 319
    iput-boolean v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mInternetConnectionResult:Z

    .line 334
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDefaultState:Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

    .line 335
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    .line 336
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    .line 337
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    .line 338
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    .line 339
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    .line 341
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheckingState:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;

    .line 343
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    .line 344
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkMonitoringState:Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    .line 345
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    .line 354
    iput v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPingToken:I

    .line 355
    iput-boolean v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsCaptiveNetwork:Z

    .line 370
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    .line 371
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    .line 372
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 373
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiStateMachineMessenger()Landroid/os/Messenger;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    .line 377
    new-instance v0, Landroid/net/DnsPinger;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    const-string v2, "WifiWatchdogStateMachine.DnsPinger"

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Landroid/net/DnsPinger;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;Landroid/os/Handler;I)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsPinger:Landroid/net/DnsPinger;

    .line 382
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->setupNetworkReceiver()V

    .line 385
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->registerForSettingsChanges()V

    .line 386
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->registerForWatchdogToggle()V

    .line 387
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDefaultState:Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 388
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDefaultState:Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 389
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDefaultState:Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 390
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 391
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 392
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 394
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheckingState:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 396
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 397
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkMonitoringState:Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 398
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 400
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->isWatchdogEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 405
    :goto_0
    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->setLogRecSize(I)V

    .line 406
    invoke-virtual {p0, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->setLogOnlyTransitions(Z)V

    .line 407
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->updateSettings()V

    .line 408
    sget-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_COM_TEST_PRINT_SM_COMMAND:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    invoke-static {v0}, Landroid/net/wifi/WifiGlobal;->checkFeature(Landroid/net/wifi/WifiGlobal$PantechWifiFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->enableWiFiDbgMsg()V

    .line 411
    :cond_0
    return-void

    .line 403
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 96
    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsCaptiveNetwork:Z

    return v0
.end method

.method static synthetic access$002(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsCaptiveNetwork:Z

    return p1
.end method

.method static synthetic access$100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/net/wifi/WifiWatchdogStateMachine;I)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->calculateSignalLevel(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$10000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10100(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10600(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10800(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 96
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMinDnsResponses:I

    return v0
.end method

.method static synthetic access$10900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 96
    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z

    return v0
.end method

.method static synthetic access$11000(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1102(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$11100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11300(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11700(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11800(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 96
    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12000(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12500()[D
    .locals 1

    .prologue
    .line 96
    sget-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->sPresetLoss:[D

    return-object v0
.end method

.method static synthetic access$12502([D)[D
    .locals 0
    .param p0, "x0"    # [D

    .prologue
    .line 96
    sput-object p0, Landroid/net/wifi/WifiWatchdogStateMachine;->sPresetLoss:[D

    return-object p0
.end method

.method static synthetic access$12600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12700()[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->GOOD_LINK_TARGET:[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    return-object v0
.end method

.method static synthetic access$12800()[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->MAX_AVOID_TIME:[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    return-object v0
.end method

.method static synthetic access$12900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->isWatchdogEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/net/wifi/WifiWatchdogStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 96
    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    return v0
.end method

.method static synthetic access$2000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$2402(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 96
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object p1
.end method

.method static synthetic access$2500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->updateCurrentBssid(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectionInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$2602(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 96
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectionInfo:Landroid/net/wifi/WifiInfo;

    return-object p1
.end method

.method static synthetic access$2700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/LinkProperties;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$2702(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Landroid/net/LinkProperties;

    .prologue
    .line 96
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$2800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$3100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    return-object v0
.end method

.method static synthetic access$3600(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3700(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3800(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->updateSettings()V

    return-void
.end method

.method static synthetic access$4000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4100(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 96
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I

    return v0
.end method

.method static synthetic access$4104(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 96
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I

    return v0
.end method

.method static synthetic access$4200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    return-object v0
.end method

.method static synthetic access$4300(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5300(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5500(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5700()I
    .locals 1

    .prologue
    .line 96
    sget v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mTryNumFail:I

    return v0
.end method

.method static synthetic access$5702(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 96
    sput p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mTryNumFail:I

    return p0
.end method

.method static synthetic access$5800(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 96
    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mInternetConnectionResult:Z

    return v0
.end method

.method static synthetic access$5802(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mInternetConnectionResult:Z

    return p1
.end method

.method static synthetic access$5900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 96
    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    return v0
.end method

.method static synthetic access$6000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheckingState:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;

    return-object v0
.end method

.method static synthetic access$6100(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6300(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkMonitoringState:Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    return-object v0
.end method

.method static synthetic access$6500(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6800(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->isInternetReachable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7100(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->isWiFiConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7400(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7800(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendPoorInternetConnectionBroadcast()V

    return-void
.end method

.method static synthetic access$7900(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$8000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    return-object v0
.end method

.method static synthetic access$8302(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    .prologue
    .line 96
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    return-object p1
.end method

.method static synthetic access$8400(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8500(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8600(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 96
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I

    return v0
.end method

.method static synthetic access$902(Landroid/net/wifi/WifiWatchdogStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 96
    iput p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I

    return p1
.end method

.method static synthetic access$9100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/DnsPinger;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsPinger:Landroid/net/DnsPinger;

    return-object v0
.end method

.method static synthetic access$9400(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/InetAddress;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getDefaultDns()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9700(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 96
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNumDnsPings:I

    return v0
.end method

.method static synthetic access$9800(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 96
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsPingTimeoutMs:I

    return v0
.end method

.method static synthetic access$9900(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 96
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPingToken:I

    return v0
.end method

.method private calculateSignalLevel(I)I
    .locals 3
    .param p1, "rssi"    # I

    .prologue
    .line 1363
    const/4 v1, 0x5

    invoke-static {p1, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    .line 1364
    .local v0, "signalLevel":I
    sget-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    .line 1365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RSSI current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 1366
    :cond_0
    return v0
.end method

.method private getDefaultDns()Ljava/net/InetAddress;
    .locals 4

    .prologue
    .line 612
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 615
    .local v0, "dns":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 618
    :goto_0
    return-object v2

    .line 616
    :catch_0
    move-exception v1

    .line 617
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "getDefaultDns::malformed default dns address"

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    .line 618
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1400
    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private isInternetReachable(Ljava/lang/String;)Z
    .locals 15
    .param p1, "wifiSSID"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 551
    sget-boolean v9, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[isInternetReachable] ssid = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 554
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 555
    .local v5, "startTime":J
    const-string v9, "8.8.8.8"

    invoke-static {v9}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 557
    .local v4, "pingCheck":Ljava/net/InetAddress;
    sget-boolean v9, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isWalledGardenConnection pingCheck : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v11, 0x2710

    invoke-virtual {v4, v11}, Ljava/net/InetAddress;->isReachable(I)Z

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 559
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 561
    .local v2, "endTime":J
    sget-boolean v9, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isWalledGardenConnection startTime : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " endTime : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " (endTime - startTim) : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v11, v2, v5

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 562
    :cond_2
    sub-long v11, v2, v5

    const-wide/16 v13, 0x2710

    cmp-long v9, v11, v13

    if-ltz v9, :cond_a

    .line 563
    sget-boolean v9, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v9, :cond_3

    const-string v9, "isWalledGardenConnection start"

    invoke-virtual {p0, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 565
    :cond_3
    const/4 v8, 0x0

    .line 568
    .local v8, "urlConnection":Ljava/net/HttpURLConnection;
    :try_start_1
    new-instance v7, Ljava/net/URL;

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenUrl:Ljava/lang/String;

    invoke-direct {v7, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 569
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    .line 570
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 571
    const/16 v9, 0x2710

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 572
    const/16 v9, 0x2710

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 573
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 575
    sget-boolean v9, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getResponseCode : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 584
    :cond_4
    if-eqz v8, :cond_5

    .line 585
    :try_start_2
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 598
    .end local v2    # "endTime":J
    .end local v4    # "pingCheck":Ljava/net/InetAddress;
    .end local v5    # "startTime":J
    .end local v7    # "url":Ljava/net/URL;
    .end local v8    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_5
    :goto_0
    const/4 v9, 0x1

    :goto_1
    return v9

    .line 576
    .restart local v2    # "endTime":J
    .restart local v4    # "pingCheck":Ljava/net/InetAddress;
    .restart local v5    # "startTime":J
    .restart local v8    # "urlConnection":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v1

    .line 577
    .local v1, "e":Ljava/net/UnknownHostException;
    :try_start_3
    sget-boolean v9, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v9, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UnknownHostException Walled garden check - probably not a portal: exception "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 584
    :cond_6
    if-eqz v8, :cond_7

    .line 585
    :try_start_4
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_7
    move v9, v10

    goto :goto_1

    .line 579
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v1

    .line 580
    .local v1, "e":Ljava/io/IOException;
    :try_start_5
    sget-boolean v9, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v9, :cond_8

    .line 581
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Walled garden check - probably not a portal: exception "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 584
    :cond_8
    if-eqz v8, :cond_5

    .line 585
    :try_start_6
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 592
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "endTime":J
    .end local v4    # "pingCheck":Ljava/net/InetAddress;
    .end local v5    # "startTime":J
    .end local v8    # "urlConnection":Ljava/net/HttpURLConnection;
    :catch_2
    move-exception v1

    .line 593
    .local v1, "e":Ljava/net/UnknownHostException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UnknownHostException "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    move v9, v10

    .line 594
    goto :goto_1

    .line 584
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .restart local v2    # "endTime":J
    .restart local v4    # "pingCheck":Ljava/net/InetAddress;
    .restart local v5    # "startTime":J
    .restart local v8    # "urlConnection":Ljava/net/HttpURLConnection;
    :catchall_0
    move-exception v9

    if-eqz v8, :cond_9

    .line 585
    :try_start_7
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    throw v9
    :try_end_7
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 595
    .end local v2    # "endTime":J
    .end local v4    # "pingCheck":Ljava/net/InetAddress;
    .end local v5    # "startTime":J
    .end local v8    # "urlConnection":Ljava/net/HttpURLConnection;
    :catch_3
    move-exception v1

    .line 596
    .local v1, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 589
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "endTime":J
    .restart local v4    # "pingCheck":Ljava/net/InetAddress;
    .restart local v5    # "startTime":J
    :cond_a
    :try_start_8
    sget-boolean v9, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v9, :cond_b

    const-string v9, "isWalledGardenConnection fail"

    invoke-virtual {p0, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :cond_b
    move v9, v10

    .line 590
    goto/16 :goto_1
.end method

.method private isWatchdogEnabled()Z
    .locals 4

    .prologue
    .line 509
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "wifi_watchdog_on"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->getSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 511
    .local v0, "ret":Z
    sget-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Watchdog enabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 512
    :cond_0
    return v0
.end method

.method private isWiFiConnected()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 602
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 604
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 607
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static makeWifiWatchdogStateMachine(Landroid/content/Context;)Landroid/net/wifi/WifiWatchdogStateMachine;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 414
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 416
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 418
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    :cond_0
    sput-boolean v3, Landroid/net/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    .line 423
    const-string/jumbo v3, "wifi_watchdog_on"

    invoke-static {v1, v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->putSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 425
    new-instance v2, Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {v2, p0}, Landroid/net/wifi/WifiWatchdogStateMachine;-><init>(Landroid/content/Context;)V

    .line 426
    .local v2, "wwsm":Landroid/net/wifi/WifiWatchdogStateMachine;
    invoke-virtual {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->start()V

    .line 427
    return-object v2
.end method

.method private static putSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 1416
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerForSettingsChanges()V
    .locals 4

    .prologue
    .line 488
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$3;

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$3;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;)V

    .line 495
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 498
    return-void
.end method

.method private registerForWatchdogToggle()V
    .locals 4

    .prologue
    .line 472
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$2;

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$2;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;)V

    .line 479
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_watchdog_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 482
    return-void
.end method

.method private sendLinkStatusNotification(Z)V
    .locals 3
    .param p1, "isGood"    # Z

    .prologue
    .line 1370
    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "########################################"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 1371
    :cond_0
    if-eqz p1, :cond_3

    .line 1372
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x21016

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 1373
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-eqz v0, :cond_1

    .line 1374
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeGood:J
    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$12202(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    .line 1376
    :cond_1
    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "Good link notification is sent"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 1384
    :cond_2
    :goto_0
    return-void

    .line 1378
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x21015

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 1379
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-eqz v0, :cond_4

    .line 1380
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimePoor:J
    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$12302(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    .line 1382
    :cond_4
    const-string v0, "Poor link notification is sent"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendPoorInternetConnectionBroadcast()V
    .locals 3

    .prologue
    .line 539
    sget-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "sendPoorInternetConnectionBroadcast"

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 541
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.internal.telephony.sky.intent.action.poor_internet_disconnect"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 542
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 543
    return-void
.end method

.method private setupNetworkReceiver()V
    .locals 3

    .prologue
    .line 431
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$1;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$1;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 458
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    .line 459
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 466
    return-void
.end method

.method private updateCurrentBssid(Ljava/lang/String;)V
    .locals 3
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    const v2, 0x21007

    .line 1332
    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update current BSSID to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_2

    move-object v0, p1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 1335
    :cond_0
    if-nez p1, :cond_5

    .line 1336
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-nez v0, :cond_3

    .line 1360
    :cond_1
    :goto_1
    return-void

    .line 1332
    :cond_2
    const-string/jumbo v0, "null"

    goto :goto_0

    .line 1337
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    .line 1338
    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "BSSID changed"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 1339
    :cond_4
    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    goto :goto_1

    .line 1344
    :cond_5
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssid:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$12100(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1347
    :cond_6
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mBssidCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    .line 1348
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-nez v0, :cond_7

    .line 1349
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    invoke-direct {v0, p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    .line 1350
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mBssidCache:Landroid/util/LruCache;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    invoke-virtual {v0, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1354
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsCaptiveNetwork:Z

    .line 1358
    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_8

    const-string v0, "BSSID changed"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 1359
    :cond_8
    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    goto :goto_1
.end method

.method private updateSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 516
    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Updating secure settings"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 519
    :cond_0
    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    if-eqz v0, :cond_1

    .line 520
    const-string v0, "Disabling poor network avoidance for wi-fi only device"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 521
    iput-boolean v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    .line 535
    :goto_0
    return-void

    .line 523
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->getSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    .line 527
    const-string v0, "http://clients3.google.com/generate_204"

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenUrl:Ljava/lang/String;

    .line 528
    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenIntervalMs:J

    .line 530
    const/4 v0, 0x5

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNumDnsPings:I

    .line 531
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMinDnsResponses:I

    .line 532
    const/16 v0, 0x7d0

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsPingTimeoutMs:I

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 501
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWifiInfo: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLinkProperties: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentSignalLevel: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPoorNetworkDetectionEnabled: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 506
    return-void
.end method
