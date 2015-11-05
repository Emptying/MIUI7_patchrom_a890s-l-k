.class public Lcom/android/internal/telephony/QcRilHook;
.super Ljava/lang/Object;
.source "QcRilHook.java"

# interfaces
.implements Lcom/android/internal/telephony/IQcRilHook;


# static fields
.field public static final ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW:Ljava/lang/String; = "android.intent.action.ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

.field private static final BYTE_SIZE:I = 0x1

.field private static final INT_SIZE:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "TELEPHONY_QC_RIL_OEM_HOOK"

.field public static final QCRIL_MSG_TUNNEL_PACKAGE_NAME:Ljava/lang/String; = "com.android.internal.telephony"

.field public static final QCRIL_MSG_TUNNEL_SERVICE_NAME:Ljava/lang/String; = "IQcrilMsgTunnelService"

.field private static final RESPONSE_BUFFER_SIZE:I = 0x800

.field private static mRegistrants:Landroid/os/RegistrantList;


# instance fields
.field private mBound:Z

.field private mContext:Landroid/content/Context;

.field private final mHeaderSize:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mOemIdentifier:Ljava/lang/String;

.field private mQcrilMsgTunnelConnection:Landroid/content/ServiceConnection;

.field private mService:Lcom/android/internal/telephony/IQcrilMsgTunnelService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "QOEMHOOK"

    iput-object v0, p0, Lcom/android/internal/telephony/QcRilHook;->mOemIdentifier:Ljava/lang/String;

    .line 57
    const-string v0, "QOEMHOOK"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/QcRilHook;->mHeaderSize:I

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/QcRilHook;->mService:Lcom/android/internal/telephony/IQcrilMsgTunnelService;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/QcRilHook;->mBound:Z

    .line 157
    new-instance v0, Lcom/android/internal/telephony/QcRilHook$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/QcRilHook$1;-><init>(Lcom/android/internal/telephony/QcRilHook;)V

    iput-object v0, p0, Lcom/android/internal/telephony/QcRilHook;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 489
    new-instance v0, Lcom/android/internal/telephony/QcRilHook$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/QcRilHook$2;-><init>(Lcom/android/internal/telephony/QcRilHook;)V

    iput-object v0, p0, Lcom/android/internal/telephony/QcRilHook;->mQcrilMsgTunnelConnection:Landroid/content/ServiceConnection;

    .line 77
    const-string v0, "IQcrilMsgTunnelService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IQcrilMsgTunnelService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IQcrilMsgTunnelService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/QcRilHook;->mService:Lcom/android/internal/telephony/IQcrilMsgTunnelService;

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/QcRilHook;->mService:Lcom/android/internal/telephony/IQcrilMsgTunnelService;

    if-nez v0, :cond_0

    .line 79
    const-string v0, "TELEPHONY_QC_RIL_OEM_HOOK"

    const-string v1, "Default Constructor - Connect Failed (onServiceConnected)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_0
    return-void

    .line 81
    :cond_0
    const-string v0, "TELEPHONY_QC_RIL_OEM_HOOK"

    const-string v1, "Default Constructor - Connected Successfully (onServiceConnected)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v2, "QOEMHOOK"

    iput-object v2, p0, Lcom/android/internal/telephony/QcRilHook;->mOemIdentifier:Ljava/lang/String;

    .line 57
    const-string v2, "QOEMHOOK"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/android/internal/telephony/QcRilHook;->mHeaderSize:I

    .line 59
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/QcRilHook;->mService:Lcom/android/internal/telephony/IQcrilMsgTunnelService;

    .line 64
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/QcRilHook;->mBound:Z

    .line 157
    new-instance v2, Lcom/android/internal/telephony/QcRilHook$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/QcRilHook$1;-><init>(Lcom/android/internal/telephony/QcRilHook;)V

    iput-object v2, p0, Lcom/android/internal/telephony/QcRilHook;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 489
    new-instance v2, Lcom/android/internal/telephony/QcRilHook$2;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/QcRilHook$2;-><init>(Lcom/android/internal/telephony/QcRilHook;)V

    iput-object v2, p0, Lcom/android/internal/telephony/QcRilHook;->mQcrilMsgTunnelConnection:Landroid/content/ServiceConnection;

    .line 89
    const-string v2, "IQcrilMsgTunnelService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IQcrilMsgTunnelService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IQcrilMsgTunnelService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/QcRilHook;->mService:Lcom/android/internal/telephony/IQcrilMsgTunnelService;

    .line 90
    iget-object v2, p0, Lcom/android/internal/telephony/QcRilHook;->mService:Lcom/android/internal/telephony/IQcrilMsgTunnelService;

    if-nez v2, :cond_0

    .line 91
    const-string v2, "TELEPHONY_QC_RIL_OEM_HOOK"

    const-string v3, "Connect Failed (onServiceConnected)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_0
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lcom/android/internal/telephony/QcRilHook;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/QcRilHook;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    const-string v2, "TELEPHONY_QC_RIL_OEM_HOOK"

    const-string v3, "Registering for intent ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :goto_1
    return-void

    .line 93
    :cond_0
    const-string v2, "TELEPHONY_QC_RIL_OEM_HOOK"

    const-string v3, "Connected Successfully (onServiceConnected)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TELEPHONY_QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uncaught Exception while while registering ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW intent. Reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/QcRilHook;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/QcRilHook;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/internal/telephony/QcRilHook;->mHeaderSize:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/QcRilHook;)Lcom/android/internal/telephony/IQcrilMsgTunnelService;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/QcRilHook;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/telephony/QcRilHook;->mService:Lcom/android/internal/telephony/IQcrilMsgTunnelService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/QcRilHook;Lcom/android/internal/telephony/IQcrilMsgTunnelService;)Lcom/android/internal/telephony/IQcrilMsgTunnelService;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/QcRilHook;
    .param p1, "x1"    # Lcom/android/internal/telephony/IQcrilMsgTunnelService;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/internal/telephony/QcRilHook;->mService:Lcom/android/internal/telephony/IQcrilMsgTunnelService;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/QcRilHook;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/QcRilHook;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/internal/telephony/QcRilHook;->mBound:Z

    return p1
.end method

.method private addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "requestId"    # I
    .param p3, "requestSize"    # I

    .prologue
    .line 245
    const-string v0, "QOEMHOOK"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 248
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 251
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 252
    return-void
.end method

.method public static createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 228
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 229
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 230
    return-object v0
.end method

.method private isServiceRunning()Z
    .locals 5

    .prologue
    .line 147
    iget-object v3, p0, Lcom/android/internal/telephony/QcRilHook;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 149
    .local v1, "manager":Landroid/app/ActivityManager;
    const v3, 0x7fffffff

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 150
    .local v2, "service":Landroid/app/ActivityManager$RunningServiceInfo;
    const-string v3, "IQcrilMsgTunnelService"

    iget-object v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    const/4 v3, 0x1

    .line 154
    .end local v2    # "service":Landroid/app/ActivityManager$RunningServiceInfo;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static notifyRegistrants(Landroid/os/AsyncResult;)V
    .locals 2
    .param p0, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 482
    sget-object v0, Lcom/android/internal/telephony/QcRilHook;->mRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 483
    sget-object v0, Lcom/android/internal/telephony/QcRilHook;->mRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 487
    :goto_0
    return-void

    .line 485
    :cond_0
    const-string v0, "TELEPHONY_QC_RIL_OEM_HOOK"

    const-string v1, "QcRilOemHook notifyRegistrants Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static register(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 445
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p0, p1, p2}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 446
    .local v0, "r":Landroid/os/Registrant;
    sget-object v2, Lcom/android/internal/telephony/QcRilHook;->mRegistrants:Landroid/os/RegistrantList;

    monitor-enter v2

    .line 447
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/QcRilHook;->mRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 448
    monitor-exit v2

    .line 449
    return-void

    .line 448
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;
    .locals 11
    .param p1, "requestId"    # I
    .param p2, "request"    # [B

    .prologue
    const/4 v10, 0x0

    .line 264
    const/16 v7, 0x800

    new-array v4, v7, [B

    .line 266
    .local v4, "response":[B
    const-string v7, "TELEPHONY_QC_RIL_OEM_HOOK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendRilOemHookMsg: Outgoing Data is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v7, p0, Lcom/android/internal/telephony/QcRilHook;->mService:Lcom/android/internal/telephony/IQcrilMsgTunnelService;

    if-nez v7, :cond_0

    .line 271
    const-string v7, "IQcrilMsgTunnelService"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/IQcrilMsgTunnelService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IQcrilMsgTunnelService;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/QcRilHook;->mService:Lcom/android/internal/telephony/IQcrilMsgTunnelService;

    .line 272
    iget-object v7, p0, Lcom/android/internal/telephony/QcRilHook;->mService:Lcom/android/internal/telephony/IQcrilMsgTunnelService;

    if-nez v7, :cond_0

    .line 273
    const-string v7, "TELEPHONY_QC_RIL_OEM_HOOK"

    const-string v8, "sendRilOemHookMsg - Connect Failed (onServiceConnected)"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    new-instance v0, Landroid/os/AsyncResult;

    new-instance v7, Ljava/lang/Exception;

    const-string v8, "mService Failed"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v10, v10, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 350
    :goto_0
    return-object v0

    .line 280
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/QcRilHook;->mService:Lcom/android/internal/telephony/IQcrilMsgTunnelService;

    invoke-interface {v7, p2, v4}, Lcom/android/internal/telephony/IQcrilMsgTunnelService;->sendOemRilRequestRaw([B[B)I

    move-result v5

    .line 281
    .local v5, "retVal":I
    const-string v7, "TELEPHONY_QC_RIL_OEM_HOOK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendOemRilRequestRaw returns value = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    if-ltz v5, :cond_2

    .line 283
    const/4 v6, 0x0

    .line 285
    .local v6, "validResponseBytes":[B
    if-lez v5, :cond_1

    .line 286
    new-array v6, v5, [B

    .line 287
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v4, v7, v6, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    :cond_1
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v0, v7, v6, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 290
    .local v0, "ar":Landroid/os/AsyncResult;
    goto :goto_0

    .line 296
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v6    # "validResponseBytes":[B
    :cond_2
    mul-int/lit8 v7, v5, -0x1

    invoke-static {v7}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v3

    .line 297
    .local v3, "ex":Lcom/android/internal/telephony/CommandException;
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v7, 0x0

    invoke-direct {v0, p2, v7, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    goto :goto_0

    .line 301
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "ex":Lcom/android/internal/telephony/CommandException;
    .end local v5    # "retVal":I
    :catch_0
    move-exception v1

    .line 302
    .local v1, "doe":Landroid/os/DeadObjectException;
    const-string v7, "TELEPHONY_QC_RIL_OEM_HOOK"

    const-string v8, "DeadObjectException occurred then get mService again"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string v7, "IQcrilMsgTunnelService"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/IQcrilMsgTunnelService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IQcrilMsgTunnelService;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/QcRilHook;->mService:Lcom/android/internal/telephony/IQcrilMsgTunnelService;

    .line 305
    iget-object v7, p0, Lcom/android/internal/telephony/QcRilHook;->mService:Lcom/android/internal/telephony/IQcrilMsgTunnelService;

    if-nez v7, :cond_3

    .line 307
    const-string v7, "TELEPHONY_QC_RIL_OEM_HOOK"

    const-string v8, "mService Failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance v0, Landroid/os/AsyncResult;

    new-instance v7, Ljava/lang/Exception;

    const-string v8, "mService Failed"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v10, v10, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 311
    :cond_3
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/QcRilHook;->mService:Lcom/android/internal/telephony/IQcrilMsgTunnelService;

    invoke-interface {v7, p2, v4}, Lcom/android/internal/telephony/IQcrilMsgTunnelService;->sendOemRilRequestRaw([B[B)I

    move-result v5

    .line 312
    .restart local v5    # "retVal":I
    if-ltz v5, :cond_5

    .line 313
    const/4 v6, 0x0

    .line 315
    .restart local v6    # "validResponseBytes":[B
    if-lez v5, :cond_4

    .line 316
    new-array v6, v5, [B

    .line 317
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v4, v7, v6, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    :cond_4
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v0, v7, v6, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 320
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    goto/16 :goto_0

    .line 326
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v6    # "validResponseBytes":[B
    :cond_5
    mul-int/lit8 v7, v5, -0x1

    invoke-static {v7}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v3

    .line 327
    .restart local v3    # "ex":Lcom/android/internal/telephony/CommandException;
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v7, 0x0

    invoke-direct {v0, p2, v7, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    goto/16 :goto_0

    .line 330
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "ex":Lcom/android/internal/telephony/CommandException;
    .end local v5    # "retVal":I
    :catch_1
    move-exception v2

    .line 332
    .local v2, "e":Landroid/os/RemoteException;
    const-string v7, "TELEPHONY_QC_RIL_OEM_HOOK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendQcRilOemHook RequestID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " exception, unable to send RIL request from this application"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v0, v7, v10, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    goto/16 :goto_0

    .line 339
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "doe":Landroid/os/DeadObjectException;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    .line 340
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v7, "TELEPHONY_QC_RIL_OEM_HOOK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendOemRilRequestRaw RequestID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " exception, unable to send RIL request from this application"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v0, v7, v10, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 348
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    goto/16 :goto_0

    .line 344
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_3
    move-exception v2

    .line 345
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v7, "TELEPHONY_QC_RIL_OEM_HOOK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NullPointerException caught at sendOemRilRequestRaw.RequestID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". Return Error"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v0, v7, v10, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    goto/16 :goto_0
.end method

.method public static unregister(Landroid/os/Handler;)V
    .locals 2
    .param p0, "h"    # Landroid/os/Handler;

    .prologue
    .line 452
    sget-object v1, Lcom/android/internal/telephony/QcRilHook;->mRegistrants:Landroid/os/RegistrantList;

    monitor-enter v1

    .line 453
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/QcRilHook;->mRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p0}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 454
    monitor-exit v1

    .line 455
    return-void

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected dispose()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/QcRilHook;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 210
    iget-boolean v0, p0, Lcom/android/internal/telephony/QcRilHook;->mBound:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 211
    const-string v0, "TELEPHONY_QC_RIL_OEM_HOOK"

    const-string v1, "dispose(): Unbinding service"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/android/internal/telephony/QcRilHook;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/QcRilHook;->mQcrilMsgTunnelConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/QcRilHook;->mBound:Z

    .line 215
    :cond_0
    const-string v0, "TELEPHONY_QC_RIL_OEM_HOOK"

    const-string v1, "dispose(): Unregistering receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/android/internal/telephony/QcRilHook;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/QcRilHook;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 218
    :cond_1
    return-void
.end method

.method public registerForExtendedDbmIntl(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 470
    return-void
.end method

.method public registerForFieldTestData(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 460
    return-void
.end method

.method public sendQcRilHookMsg(I)Landroid/os/AsyncResult;
    .locals 3
    .param p1, "requestId"    # I

    .prologue
    .line 380
    iget v2, p0, Lcom/android/internal/telephony/QcRilHook;->mHeaderSize:I

    new-array v1, v2, [B

    .line 381
    .local v1, "request":[B
    invoke-static {v1}, Lcom/android/internal/telephony/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 383
    .local v0, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2}, Lcom/android/internal/telephony/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 385
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method public sendQcRilHookMsg(IB)Landroid/os/AsyncResult;
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "payload"    # B

    .prologue
    .line 389
    iget v2, p0, Lcom/android/internal/telephony/QcRilHook;->mHeaderSize:I

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [B

    .line 390
    .local v1, "request":[B
    invoke-static {v1}, Lcom/android/internal/telephony/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 392
    .local v0, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x1

    invoke-direct {p0, v0, p1, v2}, Lcom/android/internal/telephony/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 393
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 395
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method public sendQcRilHookMsg(II)Landroid/os/AsyncResult;
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "payload"    # I

    .prologue
    .line 425
    iget v2, p0, Lcom/android/internal/telephony/QcRilHook;->mHeaderSize:I

    add-int/lit8 v2, v2, 0x4

    new-array v1, v2, [B

    .line 426
    .local v1, "request":[B
    invoke-static {v1}, Lcom/android/internal/telephony/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 428
    .local v0, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x4

    invoke-direct {p0, v0, p1, v2}, Lcom/android/internal/telephony/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 429
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 431
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method public sendQcRilHookMsg(ILjava/lang/String;)Landroid/os/AsyncResult;
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "payload"    # Ljava/lang/String;

    .prologue
    .line 435
    iget v2, p0, Lcom/android/internal/telephony/QcRilHook;->mHeaderSize:I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-array v1, v2, [B

    .line 436
    .local v1, "request":[B
    invoke-static {v1}, Lcom/android/internal/telephony/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 438
    .local v0, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v0, p1, v2}, Lcom/android/internal/telephony/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 439
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 441
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method public sendQcRilHookMsg(I[B)Landroid/os/AsyncResult;
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "payload"    # [B

    .prologue
    .line 399
    iget v2, p0, Lcom/android/internal/telephony/QcRilHook;->mHeaderSize:I

    array-length v3, p2

    add-int/2addr v2, v3

    new-array v1, v2, [B

    .line 400
    .local v1, "request":[B
    invoke-static {v1}, Lcom/android/internal/telephony/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 402
    .local v0, "reqBuffer":Ljava/nio/ByteBuffer;
    array-length v2, p2

    invoke-direct {p0, v0, p1, v2}, Lcom/android/internal/telephony/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 403
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 405
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method public unregisterForExtendedDbmIntl(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 475
    return-void
.end method

.method public unregisterForFieldTestData(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 465
    return-void
.end method
