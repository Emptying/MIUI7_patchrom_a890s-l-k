.class public Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;
.super Lcom/android/internal/telephony/IQcrilMsgTunnelService$Stub;
.source "QcrilMsgTunnelIfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MainThreadHandler;,
        Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MessageRequestAsync;,
        Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MessageRequest;
    }
.end annotation


# static fields
.field private static final CMD_INVOKE_OEM_RIL_REQUEST:I = 0x1

.field private static final CMD_INVOKE_OEM_RIL_REQUEST_ASYNC:I = 0x3

.field private static final DBG:Z = true

.field private static final EVENT_INVOKE_OEM_RIL_REQUEST:I = 0x2

.field private static final EVENT_INVOKE_OEM_RIL_REQUEST_ASYNC_DONE:I = 0x4

.field private static final EVENT_UNSOL_OEM_HOOK_EXT_APP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "QcrilMsgTunnelIfaceManager"

.field protected static mQcrilMsgTunnelSocket:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;


# instance fields
.field private final RETRY_MAX_ATTEMPTS:I

.field private final RETRY_TIME_MS:I

.field mMessageHandler:Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MainThreadHandler;

.field private mRetryAttempts:I

.field private final mService:Lcom/android/internal/telephony/QcrilMsgTunnelService;

.field private mSubThread:Ljava/lang/Thread;

.field private mSubThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;->mQcrilMsgTunnelSocket:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/QcrilMsgTunnelService;)V
    .locals 4
    .param p1, "service"    # Lcom/android/internal/telephony/QcrilMsgTunnelService;

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-direct {p0}, Lcom/android/internal/telephony/IQcrilMsgTunnelService$Stub;-><init>()V

    .line 60
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;->RETRY_TIME_MS:I

    .line 61
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;->RETRY_MAX_ATTEMPTS:I

    .line 62
    iput v3, p0, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;->mRetryAttempts:I

    .line 100
    new-instance v0, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$1;-><init>(Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;->mSubThread:Ljava/lang/Thread;

    .line 66
    const-string v0, "QcrilMsgTunnelIfaceManager"

    const-string v1, ": Instantiated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iput-object p1, p0, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;->mService:Lcom/android/internal/telephony/QcrilMsgTunnelService;

    .line 69
    new-instance v0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    invoke-direct {v0}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;->mQcrilMsgTunnelSocket:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    .line 70
    new-instance v0, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MainThreadHandler;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MainThreadHandler;-><init>(Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;->mMessageHandler:Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MainThreadHandler;

    .line 72
    sget-object v0, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;->mQcrilMsgTunnelSocket:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    iget-object v1, p0, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;->mMessageHandler:Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MainThreadHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->setOnUnsolOemHookExtApp(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 73
    const-string v0, "QcrilMsgTunnelIfaceManager"

    const-string v1, " Registered for UNSOL OEM HOOK Responses to deliver external apps"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v0, "IQcrilMsgTunnelService"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;->mSubThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;->mSubThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 81
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;->mSubThreadHandler:Landroid/os/Handler;

    return-object p1
.end method

.method private sendRequest(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "command"    # I
    .param p2, "argument"    # Ljava/lang/Object;

    .prologue
    .line 290
    const/4 v0, 0x0

    .line 291
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MessageRequest;

    invoke-direct {v1, p2}, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MessageRequest;-><init>(Ljava/lang/Object;)V

    .line 293
    .local v1, "request":Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MessageRequest;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;->mMessageHandler:Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MainThreadHandler;

    invoke-virtual {v3}, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MainThreadHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 295
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 297
    iget-object v2, p0, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;->mSubThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 308
    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 320
    monitor-enter v1

    .line 321
    :goto_1
    :try_start_0
    iget-object v2, v1, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MessageRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    .line 323
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 324
    :catch_0
    move-exception v2

    goto :goto_1

    .line 301
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "This method will deadlock if called from the main thread."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 306
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;->mMessageHandler:Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MainThreadHandler;

    invoke-virtual {v2, p1, v1}, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 328
    :cond_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 329
    iget-object v2, v1, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MessageRequest;->result:Ljava/lang/Object;

    return-object v2

    .line 328
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private sendRequestAsync(I)V
    .locals 1
    .param p1, "command"    # I

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;->mMessageHandler:Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MainThreadHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MainThreadHandler;->sendEmptyMessage(I)Z

    .line 340
    return-void
.end method

.method private sendRequestAsync(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "command"    # I
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 349
    new-instance v1, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MessageRequestAsync;

    invoke-direct {v1, p2, p3}, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MessageRequestAsync;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 350
    .local v1, "request":Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MessageRequestAsync;
    iget-object v2, p0, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;->mMessageHandler:Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MainThreadHandler;

    invoke-virtual {v2, p1, v1}, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 351
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 352
    return-void
.end method


# virtual methods
.method public broadcastUnsolOemHookIntent([B)V
    .locals 3
    .param p1, "payload"    # [B

    .prologue
    .line 355
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 356
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "payload"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 357
    const-string v1, "QcrilMsgTunnelIfaceManager"

    const-string v2, "Broadcasting intent ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-static {}, Lcom/android/internal/telephony/QcrilMsgTunnelService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 359
    return-void
.end method

.method public sendOemRilRequestRaw([B[B)I
    .locals 9
    .param p1, "request"    # [B
    .param p2, "response"    # [B

    .prologue
    .line 362
    const/4 v5, 0x0

    .line 365
    .local v5, "returnValue":I
    const/4 v6, 0x1

    :try_start_0
    invoke-direct {p0, v6, p1}, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/AsyncResult;

    .line 366
    .local v4, "result":Landroid/os/AsyncResult;
    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_2

    .line 367
    const/4 v5, 0x0

    .line 368
    iget-object v6, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_1

    .line 369
    iget-object v6, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v3, v0

    .line 370
    .local v3, "responseData":[B
    array-length v6, v3

    array-length v7, p2

    if-le v6, v7, :cond_0

    .line 371
    const-string v6, "QcrilMsgTunnelIfaceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Buffer to copy response too small: Response length is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "bytes. Buffer Size is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "bytes."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    array-length v8, v3

    invoke-static {v3, v6, p2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 376
    array-length v5, v3

    .line 390
    .end local v3    # "responseData":[B
    .end local v4    # "result":Landroid/os/AsyncResult;
    :cond_1
    :goto_0
    return v5

    .line 380
    .restart local v4    # "result":Landroid/os/AsyncResult;
    :cond_2
    iget-object v2, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    .line 381
    .local v2, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 382
    if-lez v5, :cond_1

    mul-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 384
    .end local v2    # "ex":Lcom/android/internal/telephony/CommandException;
    .end local v4    # "result":Landroid/os/AsyncResult;
    :catch_0
    move-exception v1

    .line 385
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v6, "QcrilMsgTunnelIfaceManager"

    const-string v7, "sendOemRilRequestRaw: Runtime Exception"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v5

    .line 387
    if-lez v5, :cond_1

    mul-int/lit8 v5, v5, -0x1

    goto :goto_0
.end method

.method public sendOemRilRequestRawAsync([BLcom/android/internal/telephony/IOemHookCallback;)V
    .locals 3
    .param p1, "request"    # [B
    .param p2, "oemHookCb"    # Lcom/android/internal/telephony/IOemHookCallback;

    .prologue
    .line 396
    const/4 v1, 0x3

    :try_start_0
    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;->sendRequestAsync(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :goto_0
    return-void

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "QcrilMsgTunnelIfaceManager"

    const-string v2, "sendOemRilRequestRawAsync: Runtime Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
