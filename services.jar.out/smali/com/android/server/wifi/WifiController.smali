.class Lcom/android/server/wifi/WifiController;
.super Lcom/android/internal/util/StateMachine;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiController$NoLockHeldState;,
        Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;,
        Lcom/android/server/wifi/WifiController$FullLockHeldState;,
        Lcom/android/server/wifi/WifiController$ScanOnlyLockHeldState;,
        Lcom/android/server/wifi/WifiController$DeviceInactiveState;,
        Lcom/android/server/wifi/WifiController$DeviceActiveState;,
        Lcom/android/server/wifi/WifiController$EcmState;,
        Lcom/android/server/wifi/WifiController$ApEnabledState;,
        Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;,
        Lcom/android/server/wifi/WifiController$StaEnabledState;,
        Lcom/android/server/wifi/WifiController$ApStaDisabledState;,
        Lcom/android/server/wifi/WifiController$DefaultState;
    }
.end annotation


# static fields
.field private static final ACTION_DEVICE_IDLE:Ljava/lang/String; = "com.android.server.WifiManager.action.DEVICE_IDLE"

.field private static final BASE:I = 0x26000

.field static final CMD_AIRPLANE_TOGGLED:I = 0x26009

.field static final CMD_BATTERY_CHANGED:I = 0x26004

.field static final CMD_DEFERRED_TOGGLE:I = 0x2600b

.field static final CMD_DEVICE_IDLE:I = 0x26005

.field static final CMD_EMERGENCY_MODE_CHANGED:I = 0x26001

.field static final CMD_LOCKS_CHANGED:I = 0x26006

.field static final CMD_SCAN_ALWAYS_MODE_CHANGED:I = 0x26007

.field static final CMD_SCREEN_OFF:I = 0x26003

.field static final CMD_SCREEN_ON:I = 0x26002

.field static final CMD_SET_AP:I = 0x2600a

.field static final CMD_USER_PRESENT:I = 0x2600c

.field static final CMD_WIFI_TOGGLED:I = 0x26008

.field private static final DBG:Z = false

.field private static final DEFAULT_IDLE_MS:J = 0xea60L

.field private static final DEFAULT_REENABLE_DELAY_MS:J = 0x1f4L

.field private static final DEFER_MARGIN_MS:J = 0x5L

.field private static final IDLE_REQUEST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WifiController"


# instance fields
.field private isChangeToScanOnlyWithWifiOffMode:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mApEnabledState:Lcom/android/server/wifi/WifiController$ApEnabledState;

.field private mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

.field private mDeviceActiveState:Lcom/android/server/wifi/WifiController$DeviceActiveState;

.field private mDeviceIdle:Z

.field private mDeviceInactiveState:Lcom/android/server/wifi/WifiController$DeviceInactiveState;

.field private mEcmState:Lcom/android/server/wifi/WifiController$EcmState;

.field private mFirstUserSignOnSeen:Z

.field private mFullHighPerfLockHeldState:Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;

.field private mFullLockHeldState:Lcom/android/server/wifi/WifiController$FullLockHeldState;

.field private mIdleIntent:Landroid/app/PendingIntent;

.field private mIdleMillis:J

.field final mLocks:Lcom/android/server/wifi/WifiService$LockList;

.field mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNoLockHeldState:Lcom/android/server/wifi/WifiController$NoLockHeldState;

.field private mPluggedType:I

.field private mReEnableDelayMillis:J

.field private mScanOnlyLockHeldState:Lcom/android/server/wifi/WifiController$ScanOnlyLockHeldState;

.field private mScreenOff:Z

.field final mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

.field private mSleepPolicy:I

.field private mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

.field private mStaEnabledState:Lcom/android/server/wifi/WifiController$StaEnabledState;

.field private mStayAwakeConditions:I

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field final mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiService;Landroid/os/Looper;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/wifi/WifiService;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v6, 0x0

    .line 145
    const-string v2, "WifiController"

    invoke-direct {p0, v2, p3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 66
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiController;->mFirstUserSignOnSeen:Z

    .line 94
    new-instance v2, Landroid/net/NetworkInfo;

    const/4 v3, 0x1

    const-string v4, "WIFI"

    const-string v5, ""

    invoke-direct {v2, v3, v6, v4, v5}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 108
    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2}, Landroid/os/WorkSource;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->mTmpWorkSource:Landroid/os/WorkSource;

    .line 113
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiController;->isChangeToScanOnlyWithWifiOffMode:Z

    .line 131
    new-instance v2, Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiController$DefaultState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    .line 132
    new-instance v2, Lcom/android/server/wifi/WifiController$StaEnabledState;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiController$StaEnabledState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->mStaEnabledState:Lcom/android/server/wifi/WifiController$StaEnabledState;

    .line 133
    new-instance v2, Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiController$ApStaDisabledState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    .line 134
    new-instance v2, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    .line 135
    new-instance v2, Lcom/android/server/wifi/WifiController$ApEnabledState;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiController$ApEnabledState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->mApEnabledState:Lcom/android/server/wifi/WifiController$ApEnabledState;

    .line 136
    new-instance v2, Lcom/android/server/wifi/WifiController$DeviceActiveState;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiController$DeviceActiveState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->mDeviceActiveState:Lcom/android/server/wifi/WifiController$DeviceActiveState;

    .line 137
    new-instance v2, Lcom/android/server/wifi/WifiController$DeviceInactiveState;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiController$DeviceInactiveState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->mDeviceInactiveState:Lcom/android/server/wifi/WifiController$DeviceInactiveState;

    .line 138
    new-instance v2, Lcom/android/server/wifi/WifiController$ScanOnlyLockHeldState;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiController$ScanOnlyLockHeldState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->mScanOnlyLockHeldState:Lcom/android/server/wifi/WifiController$ScanOnlyLockHeldState;

    .line 139
    new-instance v2, Lcom/android/server/wifi/WifiController$FullLockHeldState;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiController$FullLockHeldState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->mFullLockHeldState:Lcom/android/server/wifi/WifiController$FullLockHeldState;

    .line 140
    new-instance v2, Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->mFullHighPerfLockHeldState:Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;

    .line 141
    new-instance v2, Lcom/android/server/wifi/WifiController$NoLockHeldState;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiController$NoLockHeldState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->mNoLockHeldState:Lcom/android/server/wifi/WifiController$NoLockHeldState;

    .line 142
    new-instance v2, Lcom/android/server/wifi/WifiController$EcmState;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiController$EcmState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->mEcmState:Lcom/android/server/wifi/WifiController$EcmState;

    .line 146
    iput-object p1, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    .line 147
    iget-object v2, p2, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    .line 148
    iget-object v2, p2, Lcom/android/server/wifi/WifiService;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    .line 149
    iget-object v2, p2, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    .line 151
    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 152
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.WifiManager.action.DEVICE_IDLE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 153
    .local v1, "idleIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    invoke-static {v2, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->mIdleIntent:Landroid/app/PendingIntent;

    .line 155
    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;)V

    .line 156
    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    iget-object v3, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 157
    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mStaEnabledState:Lcom/android/server/wifi/WifiController$StaEnabledState;

    iget-object v3, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 158
    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mDeviceActiveState:Lcom/android/server/wifi/WifiController$DeviceActiveState;

    iget-object v3, p0, Lcom/android/server/wifi/WifiController;->mStaEnabledState:Lcom/android/server/wifi/WifiController$StaEnabledState;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 159
    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mDeviceInactiveState:Lcom/android/server/wifi/WifiController$DeviceInactiveState;

    iget-object v3, p0, Lcom/android/server/wifi/WifiController;->mStaEnabledState:Lcom/android/server/wifi/WifiController$StaEnabledState;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 160
    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mScanOnlyLockHeldState:Lcom/android/server/wifi/WifiController$ScanOnlyLockHeldState;

    iget-object v3, p0, Lcom/android/server/wifi/WifiController;->mDeviceInactiveState:Lcom/android/server/wifi/WifiController$DeviceInactiveState;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 161
    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mFullLockHeldState:Lcom/android/server/wifi/WifiController$FullLockHeldState;

    iget-object v3, p0, Lcom/android/server/wifi/WifiController;->mDeviceInactiveState:Lcom/android/server/wifi/WifiController$DeviceInactiveState;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 162
    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mFullHighPerfLockHeldState:Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;

    iget-object v3, p0, Lcom/android/server/wifi/WifiController;->mDeviceInactiveState:Lcom/android/server/wifi/WifiController$DeviceInactiveState;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 163
    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mNoLockHeldState:Lcom/android/server/wifi/WifiController$NoLockHeldState;

    iget-object v3, p0, Lcom/android/server/wifi/WifiController;->mDeviceInactiveState:Lcom/android/server/wifi/WifiController$DeviceInactiveState;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 164
    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    iget-object v3, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 165
    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mApEnabledState:Lcom/android/server/wifi/WifiController$ApEnabledState;

    iget-object v3, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 166
    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mEcmState:Lcom/android/server/wifi/WifiController$EcmState;

    iget-object v3, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 167
    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiController;->setInitialState(Lcom/android/internal/util/State;)V

    .line 172
    :goto_0
    const/16 v2, 0x64

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiController;->setLogRecSize(I)V

    .line 173
    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiController;->setLogOnlyTransitions(Z)V

    .line 175
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 176
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string v2, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/wifi/WifiController$1;

    invoke-direct {v3, p0}, Lcom/android/server/wifi/WifiController$1;-><init>(Lcom/android/server/wifi/WifiController;)V

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 211
    invoke-direct {p0, p3}, Lcom/android/server/wifi/WifiController;->initializeAndRegisterForSettingsChange(Landroid/os/Looper;)V

    .line 213
    sget-object v2, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_COM_TEST_PRINT_SM_COMMAND:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    invoke-static {v2}, Landroid/net/wifi/WifiGlobal;->checkFeature(Landroid/net/wifi/WifiGlobal$PantechWifiFeature;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiController;->enableWiFiDbgMsg()V

    .line 216
    :cond_0
    return-void

    .line 170
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiController;->setInitialState(Lcom/android/internal/util/State;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/wifi/WifiController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiController;->isChangeToScanOnlyWithWifiOffMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/wifi/WifiController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiController;->isChangeToScanOnlyWithWifiOffMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->readStayAwakeConditions()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/WifiController;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiController;->shouldWifiStayAwake(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/WifiController;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/android/server/wifi/WifiController;->mIdleMillis:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/WifiController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mFirstUserSignOnSeen:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/wifi/WifiController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiController;->mFirstUserSignOnSeen:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mDeviceActiveState:Lcom/android/server/wifi/WifiController$DeviceActiveState;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->checkLocksAndTransitionWhenDeviceIdle()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApEnabledState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mApEnabledState:Lcom/android/server/wifi/WifiController$ApEnabledState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->readWifiIdleTime()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/wifi/WifiController;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/android/server/wifi/WifiController;->mReEnableDelayMillis:J

    return-wide v0
.end method

.method static synthetic access$2400(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$EcmState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mEcmState:Lcom/android/server/wifi/WifiController$EcmState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->readWifiSleepPolicy()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiController;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mIdleIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiController;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mScreenOff:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/wifi/WifiController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiController;->mScreenOff:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mDeviceIdle:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/wifi/WifiController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiController;->mDeviceIdle:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->updateBatteryWorkSource()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wifi/WifiController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 56
    iget v0, p0, Lcom/android/server/wifi/WifiController;->mPluggedType:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/wifi/WifiController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/android/server/wifi/WifiController;->mPluggedType:I

    return p1
.end method

.method private checkLocksAndTransitionWhenDeviceIdle()V
    .locals 2

    .prologue
    .line 772
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiService$LockList;->hasLocks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiService$LockList;->getStrongestLockMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal lock "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiService$LockList;->getStrongestLockMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiController;->loge(Ljava/lang/String;)V

    .line 793
    :goto_0
    return-void

    .line 775
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mFullLockHeldState:Lcom/android/server/wifi/WifiController$FullLockHeldState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 778
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mFullHighPerfLockHeldState:Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 781
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mScanOnlyLockHeldState:Lcom/android/server/wifi/WifiController$ScanOnlyLockHeldState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 788
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mScanOnlyLockHeldState:Lcom/android/server/wifi/WifiController$ScanOnlyLockHeldState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 790
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mNoLockHeldState:Lcom/android/server/wifi/WifiController$NoLockHeldState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 773
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private initializeAndRegisterForSettingsChange(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 219
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 220
    .local v0, "handler":Landroid/os/Handler;
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->readStayAwakeConditions()V

    .line 221
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiController;->registerForStayAwakeModeChange(Landroid/os/Handler;)V

    .line 222
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->readWifiIdleTime()V

    .line 223
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiController;->registerForWifiIdleTimeChange(Landroid/os/Handler;)V

    .line 224
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->readWifiSleepPolicy()V

    .line 225
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiController;->registerForWifiSleepPolicyChange(Landroid/os/Handler;)V

    .line 226
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->readWifiReEnableDelay()V

    .line 227
    return-void
.end method

.method private readStayAwakeConditions()V
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "stay_on_while_plugged_in"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiController;->mStayAwakeConditions:I

    .line 232
    return-void
.end method

.method private readWifiIdleTime()V
    .locals 4

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_idle_ms"

    const-wide/32 v2, 0xea60

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiController;->mIdleMillis:J

    .line 237
    return-void
.end method

.method private readWifiReEnableDelay()V
    .locals 4

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_reenable_delay"

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiController;->mReEnableDelayMillis:J

    .line 248
    return-void
.end method

.method private readWifiSleepPolicy()V
    .locals 3

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_sleep_policy"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiController;->mSleepPolicy:I

    .line 243
    return-void
.end method

.method private registerForStayAwakeModeChange(Landroid/os/Handler;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 254
    new-instance v0, Lcom/android/server/wifi/WifiController$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/WifiController$2;-><init>(Lcom/android/server/wifi/WifiController;Landroid/os/Handler;)V

    .line 261
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "stay_on_while_plugged_in"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 264
    return-void
.end method

.method private registerForWifiIdleTimeChange(Landroid/os/Handler;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 270
    new-instance v0, Lcom/android/server/wifi/WifiController$3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/WifiController$3;-><init>(Lcom/android/server/wifi/WifiController;Landroid/os/Handler;)V

    .line 277
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_idle_ms"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 280
    return-void
.end method

.method private registerForWifiSleepPolicyChange(Landroid/os/Handler;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 286
    new-instance v0, Lcom/android/server/wifi/WifiController$4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/WifiController$4;-><init>(Lcom/android/server/wifi/WifiController;Landroid/os/Handler;)V

    .line 292
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_sleep_policy"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 295
    return-void
.end method

.method private shouldDeviceStayAwake(I)Z
    .locals 1
    .param p1, "pluggedType"    # I

    .prologue
    .line 329
    iget v0, p0, Lcom/android/server/wifi/WifiController;->mStayAwakeConditions:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldWifiStayAwake(I)Z
    .locals 3
    .param p1, "pluggedType"    # I

    .prologue
    const/4 v0, 0x1

    .line 305
    iget v1, p0, Lcom/android/server/wifi/WifiController;->mSleepPolicy:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 314
    :cond_0
    :goto_0
    return v0

    .line 308
    :cond_1
    iget v1, p0, Lcom/android/server/wifi/WifiController;->mSleepPolicy:I

    if-ne v1, v0, :cond_2

    if-nez p1, :cond_0

    .line 314
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiController;->shouldDeviceStayAwake(I)Z

    move-result v0

    goto :goto_0
.end method

.method private updateBatteryWorkSource()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->clear()V

    .line 334
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mDeviceIdle:Z

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiService$LockList;->updateWorkSource(Landroid/os/WorkSource;)V

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V

    .line 338
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 797
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreenOff "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiController;->mScreenOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDeviceIdle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiController;->mDeviceIdle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPluggedType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiController;->mPluggedType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIdleMillis "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/wifi/WifiController;->mIdleMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSleepPolicy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiController;->mSleepPolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 804
    return-void
.end method
