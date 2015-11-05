.class public Lcom/android/server/LedManagerService;
.super Lcom/android/internal/pantech/led/ILedManager$Stub;
.source "LedManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LedManagerService$1;,
        Lcom/android/server/LedManagerService$LedClientDeathHandler;,
        Lcom/android/server/LedManagerService$SmartCoverReceiver;,
        Lcom/android/server/LedManagerService$BootCompletedReceiver;,
        Lcom/android/server/LedManagerService$OneShotEvent;,
        Lcom/android/server/LedManagerService$LedManagerHandler;
    }
.end annotation


# static fields
.field private static final ACTION_LID_STATE:Ljava/lang/String; = "android.intent.action.LID_STATE"

.field private static final BOOT_ANIMATION_POLL_INTERVAL:I = 0xc8

.field private static final BOOT_ANIMATION_SERVICE:Ljava/lang/String; = "bootanim"

.field private static final CHECK_BOOT_ANIMATION_MSG:I = 0x3

.field static final DEBUG_DEATH:Z = true

.field static final DEBUG_QUEUE:Z = true

.field static final DEBUG_SERVICE:Z = true

.field private static final PAUSE_EVENT_MSG:I = 0x2

.field private static final REMOVE_EVENT_MSG:I = 0x4

.field private static final SCHEDULE_EVENT_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LedManagerService"

.field private static final TURN_OFF_MSG:I


# instance fields
.field private mBootCompleted:Z

.field private final mContext:Landroid/content/Context;

.field private mCoverState:Z

.field private mCurrentLedInfo:Lcom/android/internal/pantech/led/LedInfo;

.field private mDualLEDModel:Z

.field mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mLedClientDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/LedManagerService$LedClientDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mLedInfoQueue:Lcom/android/server/LedInfoQueue;

.field private mLock:Ljava/lang/Object;

.field private mNativePointer:I

.field private mOneShotEventHandler:Landroid/os/Handler;

.field private mOneShotEventRunnable:Lcom/android/server/LedManagerService$OneShotEvent;

.field private mSmartCoverEnableModel:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 65
    invoke-direct {p0}, Lcom/android/internal/pantech/led/ILedManager$Stub;-><init>()V

    .line 49
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/LedManagerService;->mLock:Ljava/lang/Object;

    .line 54
    new-instance v2, Lcom/android/server/LedManagerService$OneShotEvent;

    invoke-direct {v2, p0}, Lcom/android/server/LedManagerService$OneShotEvent;-><init>(Lcom/android/server/LedManagerService;)V

    iput-object v2, p0, Lcom/android/server/LedManagerService;->mOneShotEventRunnable:Lcom/android/server/LedManagerService$OneShotEvent;

    .line 55
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/LedManagerService;->mLedClientDeathHandlers:Ljava/util/ArrayList;

    .line 57
    iput-boolean v4, p0, Lcom/android/server/LedManagerService;->mCoverState:Z

    .line 62
    iput-boolean v5, p0, Lcom/android/server/LedManagerService;->mDualLEDModel:Z

    .line 63
    iput-boolean v5, p0, Lcom/android/server/LedManagerService;->mSmartCoverEnableModel:Z

    .line 66
    invoke-static {}, Lcom/android/server/LedManagerService;->init_native()I

    move-result v2

    iput v2, p0, Lcom/android/server/LedManagerService;->mNativePointer:I

    .line 67
    iput-object p1, p0, Lcom/android/server/LedManagerService;->mContext:Landroid/content/Context;

    .line 68
    iput-object v6, p0, Lcom/android/server/LedManagerService;->mCurrentLedInfo:Lcom/android/internal/pantech/led/LedInfo;

    .line 69
    new-instance v2, Lcom/android/server/LedManagerService$LedManagerHandler;

    invoke-direct {v2, p0}, Lcom/android/server/LedManagerService$LedManagerHandler;-><init>(Lcom/android/server/LedManagerService;)V

    iput-object v2, p0, Lcom/android/server/LedManagerService;->mHandler:Landroid/os/Handler;

    .line 71
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "LedManagerService"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/LedManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 72
    iget-object v2, p0, Lcom/android/server/LedManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 73
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/LedManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/LedManagerService;->mOneShotEventHandler:Landroid/os/Handler;

    .line 74
    new-instance v2, Lcom/android/server/LedInfoQueue;

    iget-object v3, p0, Lcom/android/server/LedManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/LedInfoQueue;-><init>(Lcom/android/server/LedManagerService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/LedManagerService;->mLedInfoQueue:Lcom/android/server/LedInfoQueue;

    .line 76
    sget-object v2, Lcom/android/internal/pantech/PantechVendor;->EF59DeviceList:Ljava/util/ArrayList;

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/internal/pantech/PantechVendor;->EF60DeviceList:Ljava/util/ArrayList;

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    :cond_0
    iput-boolean v4, p0, Lcom/android/server/LedManagerService;->mDualLEDModel:Z

    .line 81
    :cond_1
    sget-object v2, Lcom/android/internal/pantech/PantechVendor;->EF59DeviceList:Ljava/util/ArrayList;

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/internal/pantech/PantechVendor;->EF60DeviceList:Ljava/util/ArrayList;

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 83
    :cond_2
    iput-boolean v4, p0, Lcom/android/server/LedManagerService;->mSmartCoverEnableModel:Z

    .line 86
    :cond_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 87
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-boolean v2, p0, Lcom/android/server/LedManagerService;->mSmartCoverEnableModel:Z

    if-ne v2, v4, :cond_4

    .line 88
    const-string v2, "android.intent.action.LID_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    iget-object v2, p0, Lcom/android/server/LedManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/LedManagerService$SmartCoverReceiver;

    invoke-direct {v3, p0, v6}, Lcom/android/server/LedManagerService$SmartCoverReceiver;-><init>(Lcom/android/server/LedManagerService;Lcom/android/server/LedManagerService$1;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    :cond_4
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 92
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Lcom/android/server/LedManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/LedManagerService$BootCompletedReceiver;

    invoke-direct {v3, p0, v6}, Lcom/android/server/LedManagerService$BootCompletedReceiver;-><init>(Lcom/android/server/LedManagerService;Lcom/android/server/LedManagerService$1;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    iget-object v2, p0, Lcom/android/server/LedManagerService;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 96
    .local v1, "pm":Landroid/os/PowerManager;
    const-string v2, "LedManagerService"

    invoke-virtual {v1, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/LedManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 97
    iget-object v2, p0, Lcom/android/server/LedManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 98
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/LedManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LedManagerService;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/server/LedManagerService;->mCoverState:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/LedManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LedManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/server/LedManagerService;->mCoverState:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/LedManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LedManagerService;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/LedManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/LedManagerService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LedManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/server/LedManagerService;->findDeathHandlerIndexLocked(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/LedManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LedManagerService;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/LedManagerService;->mLedClientDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/LedManagerService;)Lcom/android/server/LedInfoQueue;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LedManagerService;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/LedManagerService;->mLedInfoQueue:Lcom/android/server/LedInfoQueue;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/LedManagerService;)Lcom/android/internal/pantech/led/LedInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LedManagerService;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/LedManagerService;->mCurrentLedInfo:Lcom/android/internal/pantech/led/LedInfo;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/LedManagerService;)Lcom/android/server/LedManagerService$OneShotEvent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LedManagerService;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/LedManagerService;->mOneShotEventRunnable:Lcom/android/server/LedManagerService$OneShotEvent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/LedManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LedManagerService;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/server/LedManagerService;->sceduleLedInfo()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/LedManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LedManagerService;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/server/LedManagerService;->pauseLedEvent()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/LedManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LedManagerService;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/server/LedManagerService;->checkIfBootAnimationFinished()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/LedManagerService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LedManagerService;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/LedManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/LedManagerService;IIIII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LedManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 31
    invoke-direct/range {p0 .. p5}, Lcom/android/server/LedManagerService;->setLedLocked(IIIII)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/LedManagerService;IIII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LedManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/LedManagerService;->setLedLocked(IIII)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/LedManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LedManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/server/LedManagerService;->setFinishEventLocked(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/LedManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LedManagerService;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/server/LedManagerService;->startWatchingForBootAnimationFinished()V

    return-void
.end method

.method private checkIfBootAnimationFinished()V
    .locals 4

    .prologue
    .line 349
    const-string v0, "LedManagerService"

    const-string v1, "Check if boot animation finished..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-string v0, "bootanim"

    invoke-static {v0}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/server/LedManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 364
    :goto_0
    return-void

    .line 358
    :cond_0
    iget-object v1, p0, Lcom/android/server/LedManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 359
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/LedManagerService;->mBootCompleted:Z

    if-nez v0, :cond_1

    .line 360
    const-string v0, "LedManagerService"

    const-string v2, "Boot animation finished."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-direct {p0}, Lcom/android/server/LedManagerService;->handleBootCompletedLocked()V

    .line 363
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private findDeathHandlerIndexLocked(I)I
    .locals 4
    .param p1, "appId"    # I

    .prologue
    .line 466
    iget-object v3, p0, Lcom/android/server/LedManagerService;->mLedClientDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 467
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 468
    iget-object v3, p0, Lcom/android/server/LedManagerService;->mLedClientDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LedManagerService$LedClientDeathHandler;

    .line 469
    .local v0, "h":Lcom/android/server/LedManagerService$LedClientDeathHandler;
    invoke-virtual {v0}, Lcom/android/server/LedManagerService$LedClientDeathHandler;->getAppId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 473
    .end local v0    # "h":Lcom/android/server/LedManagerService$LedClientDeathHandler;
    .end local v1    # "index":I
    :goto_1
    return v1

    .line 467
    .restart local v0    # "h":Lcom/android/server/LedManagerService$LedClientDeathHandler;
    .restart local v1    # "index":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 473
    .end local v0    # "h":Lcom/android/server/LedManagerService$LedClientDeathHandler;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private handleBootCompletedLocked()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 367
    iput-boolean v2, p0, Lcom/android/server/LedManagerService;->mBootCompleted:Z

    .line 369
    const/16 v4, 0x67

    invoke-direct {p0, v3, v3, v3, v4}, Lcom/android/server/LedManagerService;->setLedLocked(IIII)V

    .line 372
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/LedManagerService;->mSmartCoverEnableModel:Z

    if-ne v4, v2, :cond_0

    .line 373
    const-string v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 374
    .local v0, "mWindowManager":Landroid/view/IWindowManager;
    invoke-interface {v0}, Landroid/view/IWindowManager;->getHallICState()I

    move-result v1

    .line 375
    .local v1, "state":I
    if-ne v1, v2, :cond_1

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/LedManagerService;->mCoverState:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    .end local v0    # "mWindowManager":Landroid/view/IWindowManager;
    .end local v1    # "state":I
    :cond_0
    :goto_1
    return-void

    .restart local v0    # "mWindowManager":Landroid/view/IWindowManager;
    .restart local v1    # "state":I
    :cond_1
    move v2, v3

    .line 375
    goto :goto_0

    .line 377
    .end local v0    # "mWindowManager":Landroid/view/IWindowManager;
    .end local v1    # "state":I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private static native init_native()I
.end method

.method private pauseLedEvent()V
    .locals 3

    .prologue
    .line 405
    iget-object v1, p0, Lcom/android/server/LedManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LedManagerService;->mCurrentLedInfo:Lcom/android/internal/pantech/led/LedInfo;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/server/LedManagerService;->mCurrentLedInfo:Lcom/android/internal/pantech/led/LedInfo;

    invoke-virtual {v0}, Lcom/android/internal/pantech/led/LedInfo;->getRepeatCount()I

    move-result v0

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/server/LedManagerService;->mLedInfoQueue:Lcom/android/server/LedInfoQueue;

    iget-object v2, p0, Lcom/android/server/LedManagerService;->mCurrentLedInfo:Lcom/android/internal/pantech/led/LedInfo;

    invoke-virtual {v0, v2}, Lcom/android/server/LedInfoQueue;->enqueueLedInfoLocked(Lcom/android/internal/pantech/led/LedInfo;)V

    .line 409
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/LedManagerService;->turnOffLocked(Z)V

    .line 412
    :cond_0
    monitor-exit v1

    .line 413
    return-void

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private performOneShotEventLocked(Lcom/android/internal/pantech/led/LedInfo;)V
    .locals 3
    .param p1, "head"    # Lcom/android/internal/pantech/led/LedInfo;

    .prologue
    .line 225
    const-string v0, "LedManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performOneShotEventLocked: [appId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/pantech/led/LedInfo;->getAppId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/android/server/LedManagerService;->mOneShotEventRunnable:Lcom/android/server/LedManagerService$OneShotEvent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/LedManagerService$OneShotEvent;->stopRunnable(Z)V

    .line 227
    iput-object p1, p0, Lcom/android/server/LedManagerService;->mCurrentLedInfo:Lcom/android/internal/pantech/led/LedInfo;

    .line 228
    iget-object v0, p0, Lcom/android/server/LedManagerService;->mOneShotEventRunnable:Lcom/android/server/LedManagerService$OneShotEvent;

    invoke-virtual {v0, p1}, Lcom/android/server/LedManagerService$OneShotEvent;->setLedInfo(Lcom/android/internal/pantech/led/LedInfo;)V

    .line 229
    iget-object v0, p0, Lcom/android/server/LedManagerService;->mOneShotEventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/LedManagerService;->mOneShotEventRunnable:Lcom/android/server/LedManagerService$OneShotEvent;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 230
    return-void
.end method

.method private performPeriodicEventLocked(Lcom/android/internal/pantech/led/LedInfo;)V
    .locals 6
    .param p1, "head"    # Lcom/android/internal/pantech/led/LedInfo;

    .prologue
    const/4 v5, 0x0

    .line 212
    const-string v0, "LedManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performPeriodicEventLocked: [appId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/pantech/led/LedInfo;->getAppId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/android/server/LedManagerService;->mOneShotEventRunnable:Lcom/android/server/LedManagerService$OneShotEvent;

    invoke-virtual {v0, v5}, Lcom/android/server/LedManagerService$OneShotEvent;->stopRunnable(Z)V

    .line 214
    iput-object p1, p0, Lcom/android/server/LedManagerService;->mCurrentLedInfo:Lcom/android/internal/pantech/led/LedInfo;

    .line 216
    invoke-virtual {p1}, Lcom/android/internal/pantech/led/LedInfo;->isOneShotOptionEvent()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/server/LedManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/LedManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {p1}, Lcom/android/internal/pantech/led/LedInfo;->getAppId()I

    move-result v3

    iget v4, p1, Lcom/android/internal/pantech/led/LedInfo;->mOption:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/server/LedManagerService;->mCurrentLedInfo:Lcom/android/internal/pantech/led/LedInfo;

    iget-object v0, v0, Lcom/android/internal/pantech/led/LedInfo;->mColor:[I

    aget v0, v0, v5

    iget-object v1, p0, Lcom/android/server/LedManagerService;->mCurrentLedInfo:Lcom/android/internal/pantech/led/LedInfo;

    iget v1, v1, Lcom/android/internal/pantech/led/LedInfo;->mOnMs:I

    iget-object v2, p0, Lcom/android/server/LedManagerService;->mCurrentLedInfo:Lcom/android/internal/pantech/led/LedInfo;

    iget v2, v2, Lcom/android/internal/pantech/led/LedInfo;->mOffMs:I

    iget-object v3, p0, Lcom/android/server/LedManagerService;->mCurrentLedInfo:Lcom/android/internal/pantech/led/LedInfo;

    iget v3, v3, Lcom/android/internal/pantech/led/LedInfo;->mOption:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/LedManagerService;->setLedLocked(IIII)V

    .line 222
    return-void
.end method

.method private sceduleLedInfo()V
    .locals 2

    .prologue
    .line 133
    iget-object v1, p0, Lcom/android/server/LedManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LedManagerService;->mLedInfoQueue:Lcom/android/server/LedInfoQueue;

    invoke-virtual {v0}, Lcom/android/server/LedInfoQueue;->scheduleLedInfoLocked()V

    .line 135
    monitor-exit v1

    .line 136
    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setFinishEventLocked(Z)V
    .locals 5
    .param p1, "pause"    # Z

    .prologue
    const/4 v4, 0x0

    .line 306
    const-string v1, "LedManagerService"

    const-string v2, "setFinishEventLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v1, p0, Lcom/android/server/LedManagerService;->mCurrentLedInfo:Lcom/android/internal/pantech/led/LedInfo;

    if-eqz v1, :cond_1

    .line 310
    iget-object v1, p0, Lcom/android/server/LedManagerService;->mCurrentLedInfo:Lcom/android/internal/pantech/led/LedInfo;

    invoke-virtual {v1}, Lcom/android/internal/pantech/led/LedInfo;->getAppId()I

    move-result v0

    .line 311
    .local v0, "appId":I
    if-nez p1, :cond_0

    .line 312
    invoke-virtual {p0, v0}, Lcom/android/server/LedManagerService;->removeDeathHandler(I)V

    .line 315
    :cond_0
    const-string v1, "LedManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFinishEventLocked appId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mOption = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/LedManagerService;->mCurrentLedInfo:Lcom/android/internal/pantech/led/LedInfo;

    iget v3, v3, Lcom/android/internal/pantech/led/LedInfo;->mOption:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-boolean v1, p0, Lcom/android/server/LedManagerService;->mDualLEDModel:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 318
    const/16 v1, 0x70

    invoke-direct {p0, v4, v4, v4, v1}, Lcom/android/server/LedManagerService;->setLedLocked(IIII)V

    .line 324
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/LedManagerService;->mCurrentLedInfo:Lcom/android/internal/pantech/led/LedInfo;

    .line 326
    .end local v0    # "appId":I
    :cond_1
    return-void

    .line 321
    .restart local v0    # "appId":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/LedManagerService;->mCurrentLedInfo:Lcom/android/internal/pantech/led/LedInfo;

    iget v1, v1, Lcom/android/internal/pantech/led/LedInfo;->mOption:I

    invoke-direct {p0, v4, v4, v4, v1}, Lcom/android/server/LedManagerService;->setLedLocked(IIII)V

    goto :goto_0
.end method

.method private setLedLocked(IIII)V
    .locals 6
    .param p1, "led1"    # I
    .param p2, "onMs"    # I
    .param p3, "offMs"    # I
    .param p4, "option"    # I

    .prologue
    .line 329
    move-object v0, p0

    move v1, p1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LedManagerService;->setLedLocked(IIIII)V

    .line 330
    return-void
.end method

.method private setLedLocked(IIIII)V
    .locals 6
    .param p1, "led1"    # I
    .param p2, "led2"    # I
    .param p3, "onMs"    # I
    .param p4, "offMs"    # I
    .param p5, "option"    # I

    .prologue
    .line 333
    iget v0, p0, Lcom/android/server/LedManagerService;->mNativePointer:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/LedManagerService;->setLed_native(IIIIII)V

    .line 334
    return-void
.end method

.method private static native setLed_native(IIIIII)V
.end method

.method private startWatchingForBootAnimationFinished()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/server/LedManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 345
    return-void
.end method

.method private turnOffLocked(Z)V
    .locals 1
    .param p1, "pause"    # Z

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/server/LedManagerService;->mCurrentLedInfo:Lcom/android/internal/pantech/led/LedInfo;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/server/LedManagerService;->mCurrentLedInfo:Lcom/android/internal/pantech/led/LedInfo;

    invoke-virtual {v0}, Lcom/android/internal/pantech/led/LedInfo;->isPeriodicEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    invoke-direct {p0, p1}, Lcom/android/server/LedManagerService;->setFinishEventLocked(Z)V

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/android/server/LedManagerService;->mOneShotEventRunnable:Lcom/android/server/LedManagerService$OneShotEvent;

    invoke-virtual {v0, p1}, Lcom/android/server/LedManagerService$OneShotEvent;->stopRunnable(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected addDeathHandler(ILandroid/os/IBinder;)V
    .locals 5
    .param p1, "appId"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, -0x1

    .line 478
    invoke-direct {p0, p1}, Lcom/android/server/LedManagerService;->findDeathHandlerIndexLocked(I)I

    move-result v1

    .line 479
    .local v1, "index":I
    if-le p1, v2, :cond_0

    if-ne v1, v2, :cond_0

    .line 480
    const-string v2, "LedManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add death handler [appId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    new-instance v0, Lcom/android/server/LedManagerService$LedClientDeathHandler;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/LedManagerService$LedClientDeathHandler;-><init>(Lcom/android/server/LedManagerService;Landroid/os/IBinder;I)V

    .line 483
    .local v0, "h":Lcom/android/server/LedManagerService$LedClientDeathHandler;
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p2, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    :goto_0
    iget-object v2, p0, Lcom/android/server/LedManagerService;->mLedClientDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    .end local v0    # "h":Lcom/android/server/LedManagerService$LedClientDeathHandler;
    :cond_0
    return-void

    .line 484
    .restart local v0    # "h":Lcom/android/server/LedManagerService$LedClientDeathHandler;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 503
    iget-object v2, p0, Lcom/android/server/LedManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    const-string v4, "LedManagerService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v2, "Current Led info:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 506
    iget-object v2, p0, Lcom/android/server/LedManagerService;->mCurrentLedInfo:Lcom/android/internal/pantech/led/LedInfo;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 507
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 508
    const-string v2, "\nLedInfoQueue:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 509
    iget-object v2, p0, Lcom/android/server/LedManagerService;->mLedInfoQueue:Lcom/android/server/LedInfoQueue;

    invoke-virtual {v2, p2}, Lcom/android/server/LedInfoQueue;->dumpQueue(Ljava/io/PrintWriter;)V

    .line 510
    const-string v2, "\nDeathHandler List:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 511
    iget-object v2, p0, Lcom/android/server/LedManagerService;->mLedClientDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LedManagerService$LedClientDeathHandler;

    .line 512
    .local v0, "handler":Lcom/android/server/LedManagerService$LedClientDeathHandler;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/LedManagerService$LedClientDeathHandler;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 514
    .end local v0    # "handler":Lcom/android/server/LedManagerService$LedClientDeathHandler;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nSmartCover: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/LedManagerService;->mCoverState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 515
    return-void
.end method

.method protected isCoverOpened()Z
    .locals 3

    .prologue
    .line 400
    const-string v0, "LedManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCoverOpened : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/LedManagerService;->mCoverState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-boolean v0, p0, Lcom/android/server/LedManagerService;->mCoverState:Z

    return v0
.end method

.method public postEvent(Lcom/android/internal/pantech/led/LedInfo;ILandroid/os/IBinder;)V
    .locals 4
    .param p1, "ledInfo"    # Lcom/android/internal/pantech/led/LedInfo;
    .param p2, "flag"    # I
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    .line 101
    iget-object v2, p0, Lcom/android/server/LedManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 102
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/LedManagerService;->mCoverState:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/pantech/led/LedInfo;->getRepeatCount()I

    move-result v1

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_0

    .line 103
    monitor-exit v2

    .line 114
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/pantech/led/LedInfo;->getAppId()I

    move-result v0

    .line 109
    .local v0, "appId":I
    invoke-virtual {p0, v0, p3}, Lcom/android/server/LedManagerService;->addDeathHandler(ILandroid/os/IBinder;)V

    .line 111
    iget-object v1, p0, Lcom/android/server/LedManagerService;->mLedInfoQueue:Lcom/android/server/LedInfoQueue;

    invoke-virtual {v1, p1}, Lcom/android/server/LedInfoQueue;->enqueueLedInfoLocked(Lcom/android/internal/pantech/led/LedInfo;)V

    .line 112
    iget-object v1, p0, Lcom/android/server/LedManagerService;->mLedInfoQueue:Lcom/android/server/LedInfoQueue;

    invoke-virtual {v1}, Lcom/android/server/LedInfoQueue;->scheduleLedInfoLocked()V

    .line 113
    monitor-exit v2

    goto :goto_0

    .end local v0    # "appId":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected processLedEventLocked(Lcom/android/internal/pantech/led/LedInfo;)V
    .locals 6
    .param p1, "head"    # Lcom/android/internal/pantech/led/LedInfo;

    .prologue
    const v5, 0x7fffffff

    .line 160
    const-string v2, "LedManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processLedEvent: \n[Current : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/LedManagerService;->mCurrentLedInfo:Lcom/android/internal/pantech/led/LedInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], \n[Head: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v2, p0, Lcom/android/server/LedManagerService;->mCurrentLedInfo:Lcom/android/internal/pantech/led/LedInfo;

    if-nez v2, :cond_1

    if-nez p1, :cond_1

    .line 162
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/LedManagerService;->setFinishEventLocked(Z)V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v2, p0, Lcom/android/server/LedManagerService;->mCurrentLedInfo:Lcom/android/internal/pantech/led/LedInfo;

    if-eqz v2, :cond_6

    if-eqz p1, :cond_6

    .line 165
    invoke-virtual {p1}, Lcom/android/internal/pantech/led/LedInfo;->getAppId()I

    move-result v1

    .line 166
    .local v1, "headAppID":I
    iget-object v2, p0, Lcom/android/server/LedManagerService;->mCurrentLedInfo:Lcom/android/internal/pantech/led/LedInfo;

    invoke-virtual {v2}, Lcom/android/internal/pantech/led/LedInfo;->getAppId()I

    move-result v0

    .line 167
    .local v0, "currentAppID":I
    if-lt v1, v0, :cond_4

    .line 168
    iget-object v2, p0, Lcom/android/server/LedManagerService;->mCurrentLedInfo:Lcom/android/internal/pantech/led/LedInfo;

    invoke-virtual {v2}, Lcom/android/internal/pantech/led/LedInfo;->getRepeatCount()I

    move-result v2

    if-ne v2, v5, :cond_2

    if-eq v1, v0, :cond_2

    .line 169
    iget-object v2, p0, Lcom/android/server/LedManagerService;->mCurrentLedInfo:Lcom/android/internal/pantech/led/LedInfo;

    invoke-virtual {v2}, Lcom/android/internal/pantech/led/LedInfo;->isOneShotOptionEvent()Z

    move-result v2

    if-nez v2, :cond_2

    .line 170
    iget-object v2, p0, Lcom/android/server/LedManagerService;->mLedInfoQueue:Lcom/android/server/LedInfoQueue;

    iget-object v3, p0, Lcom/android/server/LedManagerService;->mCurrentLedInfo:Lcom/android/internal/pantech/led/LedInfo;

    invoke-virtual {v2, v3}, Lcom/android/server/LedInfoQueue;->enqueueLedInfoLocked(Lcom/android/internal/pantech/led/LedInfo;)V

    .line 174
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/pantech/led/LedInfo;->isPeriodicEvent()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 175
    invoke-direct {p0, p1}, Lcom/android/server/LedManagerService;->performPeriodicEventLocked(Lcom/android/internal/pantech/led/LedInfo;)V

    goto :goto_0

    .line 177
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/LedManagerService;->performOneShotEventLocked(Lcom/android/internal/pantech/led/LedInfo;)V

    goto :goto_0

    .line 181
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/pantech/led/LedInfo;->getRepeatCount()I

    move-result v2

    if-ne v2, v5, :cond_5

    .line 182
    iget-object v2, p0, Lcom/android/server/LedManagerService;->mLedInfoQueue:Lcom/android/server/LedInfoQueue;

    invoke-virtual {v2, p1}, Lcom/android/server/LedInfoQueue;->enqueueLedInfoLocked(Lcom/android/internal/pantech/led/LedInfo;)V

    goto :goto_0

    .line 186
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/pantech/led/LedInfo;->getAppId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/LedManagerService;->removeDeathHandler(I)V

    goto :goto_0

    .line 190
    .end local v0    # "currentAppID":I
    .end local v1    # "headAppID":I
    :cond_6
    iget-object v2, p0, Lcom/android/server/LedManagerService;->mCurrentLedInfo:Lcom/android/internal/pantech/led/LedInfo;

    if-nez v2, :cond_0

    .line 192
    invoke-virtual {p1}, Lcom/android/internal/pantech/led/LedInfo;->isPeriodicEvent()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 193
    invoke-direct {p0, p1}, Lcom/android/server/LedManagerService;->performPeriodicEventLocked(Lcom/android/internal/pantech/led/LedInfo;)V

    goto :goto_0

    .line 195
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/LedManagerService;->performOneShotEventLocked(Lcom/android/internal/pantech/led/LedInfo;)V

    goto :goto_0
.end method

.method protected removeDeathHandler(I)V
    .locals 5
    .param p1, "appId"    # I

    .prologue
    .line 489
    invoke-direct {p0, p1}, Lcom/android/server/LedManagerService;->findDeathHandlerIndexLocked(I)I

    move-result v1

    .line 490
    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 495
    :goto_0
    return-void

    .line 492
    :cond_0
    const-string v2, "LedManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove death handler [appId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v2, p0, Lcom/android/server/LedManagerService;->mLedClientDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LedManagerService$LedClientDeathHandler;

    .line 494
    .local v0, "h":Lcom/android/server/LedManagerService$LedClientDeathHandler;
    invoke-virtual {v0}, Lcom/android/server/LedManagerService$LedClientDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_0
.end method

.method public removeEvent(ILandroid/os/IBinder;)V
    .locals 6
    .param p1, "appId"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v5, 0x1

    .line 117
    iget-object v2, p0, Lcom/android/server/LedManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "reScheduling":Z
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LedManagerService;->mCurrentLedInfo:Lcom/android/internal/pantech/led/LedInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/LedManagerService;->mCurrentLedInfo:Lcom/android/internal/pantech/led/LedInfo;

    invoke-virtual {v1}, Lcom/android/internal/pantech/led/LedInfo;->getAppId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 120
    const-string v1, "LedManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeEvent: remove current id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/LedManagerService;->turnOffLocked(Z)V

    .line 124
    const/4 v0, 0x1

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/android/server/LedManagerService;->mLedInfoQueue:Lcom/android/server/LedInfoQueue;

    invoke-virtual {v1, p1}, Lcom/android/server/LedInfoQueue;->dequeueLedInfoLocked(I)Z

    move-result v1

    if-eq v1, v5, :cond_1

    if-ne v0, v5, :cond_2

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/android/server/LedManagerService;->mLedInfoQueue:Lcom/android/server/LedInfoQueue;

    invoke-virtual {v1}, Lcom/android/server/LedInfoQueue;->scheduleLedInfoLocked()V

    .line 129
    :cond_2
    monitor-exit v2

    .line 130
    return-void

    .line 129
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
