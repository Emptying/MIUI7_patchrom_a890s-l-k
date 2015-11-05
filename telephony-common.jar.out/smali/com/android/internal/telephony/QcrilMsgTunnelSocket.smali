.class public Lcom/android/internal/telephony/QcrilMsgTunnelSocket;
.super Ljava/lang/Object;
.source "QcrilMsgTunnelSocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilReceiver;,
        Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field private static final DEFAULT_WAKE_LOCK_TIMEOUT:I = 0xea60

.field static final EVENT_SEND:I = 0x1

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x2

.field static final RESPONSE_SOLICITED:I = 0x0

.field static final RESPONSE_UNSOLICITED:I = 0x1

.field static final RIL_MAX_COMMAND_BYTES:I = 0x2000

.field static final SOCKET_NAME_OEM_QCRIL_HOOK_TUNNEL:Ljava/lang/String; = "qmux_radio/rild_oem0"

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0xfa0

.field private static final TAG:Ljava/lang/String; = "QcrilMsgTunnelSocket"


# instance fields
.field mReceiver:Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilReceiver;

.field mReceiverThread:Ljava/lang/Thread;

.field mRequestMessagesPending:I

.field mRequestMessagesWaiting:I

.field mRequestsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/QcRilRequest;",
            ">;"
        }
    .end annotation
.end field

.field mSender:Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;

.field mSenderThread:Landroid/os/HandlerThread;

.field protected mSkyRegListManager:Lcom/android/internal/telephony/SkyRegListManager;

.field mSocket:Landroid/net/LocalSocket;

.field protected mUnsolOemHookExtAppRegistrant:Landroid/os/Registrant;

.field protected mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeLockTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestsList:Ljava/util/ArrayList;

    .line 118
    invoke-static {}, Lcom/android/internal/telephony/SkyRegListManager;->getInstance()Lcom/android/internal/telephony/SkyRegListManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mSkyRegListManager:Lcom/android/internal/telephony/SkyRegListManager;

    .line 124
    sget-object v0, Lcom/android/internal/telephony/QcrilMsgTunnelService;->mContext:Landroid/content/Context;

    .line 126
    .local v0, "context":Landroid/content/Context;
    const-string v3, "power"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 127
    .local v2, "pm":Landroid/os/PowerManager;
    const/4 v3, 0x1

    const-string v4, "QcrilMsgTunnelSocket"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 128
    iget-object v3, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 129
    const-string v3, "ro.ril.wake_lock_timeout"

    const v4, 0xea60

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mWakeLockTimeout:I

    .line 131
    iput v5, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestMessagesPending:I

    .line 132
    iput v5, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestMessagesWaiting:I

    .line 134
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "QcRilSender"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mSenderThread:Landroid/os/HandlerThread;

    .line 135
    iget-object v3, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 137
    iget-object v3, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 138
    .local v1, "looper":Landroid/os/Looper;
    new-instance v3, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;-><init>(Lcom/android/internal/telephony/QcrilMsgTunnelSocket;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mSender:Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;

    .line 140
    const-string v3, "QcrilMsgTunnelSocket"

    const-string v4, "Starting QcRilReceiver"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v3, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilReceiver;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilReceiver;-><init>(Lcom/android/internal/telephony/QcrilMsgTunnelSocket;)V

    iput-object v3, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mReceiver:Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilReceiver;

    .line 142
    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mReceiver:Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilReceiver;

    const-string v5, "QcRilReceiver"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mReceiverThread:Ljava/lang/Thread;

    .line 143
    iget-object v3, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/QcrilMsgTunnelSocket;I)Lcom/android/internal/telephony/QcRilRequest;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/QcrilMsgTunnelSocket;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/QcRilRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/QcrilMsgTunnelSocket;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->releaseWakeLockIfDone()V

    return-void
.end method

.method static synthetic access$200(Ljava/io/InputStream;[B)I
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {p0, p1}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->readRilMessage(Ljava/io/InputStream;[B)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/QcrilMsgTunnelSocket;Landroid/os/Parcel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/QcrilMsgTunnelSocket;
    .param p1, "x1"    # Landroid/os/Parcel;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->processResponse(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/QcrilMsgTunnelSocket;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/QcrilMsgTunnelSocket;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->clearRequestsList(IZ)V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 5

    .prologue
    .line 594
    iget-object v2, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 595
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 596
    iget v1, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestMessagesPending:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestMessagesPending:I

    .line 598
    iget-object v1, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mSender:Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;->removeMessages(I)V

    .line 599
    iget-object v1, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mSender:Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 600
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mSender:Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;

    iget v3, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mWakeLockTimeout:I

    int-to-long v3, v3

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 601
    monitor-exit v2

    .line 602
    return-void

    .line 601
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static bytesToHexString([BI)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "length"    # I

    .prologue
    .line 873
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v3, 0x0

    .line 887
    :goto_0
    return-object v3

    .line 875
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, p1, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 877
    .local v2, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_2

    .line 880
    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v0, v3, 0xf

    .line 881
    .local v0, "b":I
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 883
    aget-byte v3, p0, v1

    and-int/lit8 v0, v3, 0xf

    .line 884
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 877
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 887
    .end local v0    # "b":I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private clearRequestsList(IZ)V
    .locals 7
    .param p1, "error"    # I
    .param p2, "loggable"    # Z

    .prologue
    .line 536
    iget-object v4, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 537
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 538
    .local v0, "count":I
    if-eqz p2, :cond_0

    .line 539
    const-string v3, "QcrilMsgTunnelSocket"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WAKE_LOCK_TIMEOUT  mReqPending="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestMessagesPending:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mRequestList="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 545
    iget-object v3, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/QcRilRequest;

    .line 546
    .local v2, "rr":Lcom/android/internal/telephony/QcRilRequest;
    if-eqz p2, :cond_1

    .line 547
    const-string v3, "QcrilMsgTunnelSocket"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/internal/telephony/QcRilRequest;->mSerial:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/internal/telephony/QcRilRequest;->mRequest:I

    invoke-static {v6}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/QcRilRequest;->onError(ILjava/lang/Object;)V

    .line 550
    invoke-virtual {v2}, Lcom/android/internal/telephony/QcRilRequest;->release()V

    .line 544
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 552
    .end local v2    # "rr":Lcom/android/internal/telephony/QcRilRequest;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 553
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestMessagesWaiting:I

    .line 554
    monitor-exit v4

    .line 555
    return-void

    .line 554
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/QcRilRequest;
    .locals 5
    .param p1, "serial"    # I

    .prologue
    .line 512
    iget-object v4, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 513
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 514
    iget-object v3, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/QcRilRequest;

    .line 516
    .local v1, "rr":Lcom/android/internal/telephony/QcRilRequest;
    iget v3, v1, Lcom/android/internal/telephony/QcRilRequest;->mSerial:I

    if-ne v3, p1, :cond_1

    .line 517
    iget-object v3, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 518
    iget v3, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestMessagesWaiting:I

    if-lez v3, :cond_0

    .line 519
    iget v3, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestMessagesWaiting:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestMessagesWaiting:I

    .line 520
    :cond_0
    monitor-exit v4

    .line 525
    .end local v1    # "rr":Lcom/android/internal/telephony/QcRilRequest;
    :goto_1
    return-object v1

    .line 513
    .restart local v1    # "rr":Lcom/android/internal/telephony/QcRilRequest;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 523
    .end local v1    # "rr":Lcom/android/internal/telephony/QcRilRequest;
    :cond_2
    monitor-exit v4

    .line 525
    const/4 v1, 0x0

    goto :goto_1

    .line 523
    .end local v2    # "s":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private isQcUnsolOemHookResp(Ljava/nio/ByteBuffer;)Z
    .locals 9
    .param p1, "oemHookResponse"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v5, 0x0

    .line 782
    const-string v2, "QOEMHOOK"

    .line 783
    .local v2, "mOemIdentifier":Ljava/lang/String;
    const/4 v0, 0x4

    .line 784
    .local v0, "INT_SIZE":I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v1, v6, 0x8

    .line 787
    .local v1, "mHeaderSize":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    if-ge v6, v1, :cond_1

    .line 792
    const-string v6, "QcrilMsgTunnelSocket"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RIL_UNSOL_OEM_HOOK_RAW data size is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :cond_0
    :goto_0
    return v5

    .line 795
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    new-array v3, v6, [B

    .line 796
    .local v3, "oem_id_bytes":[B
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 797
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 798
    .local v4, "oem_id_str":Ljava/lang/String;
    const-string v6, "QcrilMsgTunnelSocket"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Oem ID in RIL_UNSOL_OEM_HOOK_RAW is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 804
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private processResponse(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 577
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 579
    .local v0, "type":I
    const-string v1, "QcrilMsgTunnelSocket"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processResponse. message type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Data Available = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 584
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->processUnsolicited(Landroid/os/Parcel;)V

    .line 590
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->releaseWakeLockIfDone()V

    .line 591
    return-void

    .line 585
    :cond_1
    if-nez v0, :cond_0

    .line 586
    const-string v1, "QcrilMsgTunnelSocket"

    const-string v2, "processSolicited"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->processSolicited(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method private processSolicited(Landroid/os/Parcel;)V
    .locals 10
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v9, 0x0

    .line 656
    const/4 v1, 0x0

    .line 658
    .local v1, "found":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 659
    .local v4, "serial":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 662
    .local v0, "error":I
    const-string v6, "QcrilMsgTunnelSocket"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processSolicited. sno: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const-string v6, "QcrilMsgTunnelSocket"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "p.dataAvail():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Position():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/QcRilRequest;

    move-result-object v3

    .line 670
    .local v3, "rr":Lcom/android/internal/telephony/QcRilRequest;
    if-nez v3, :cond_0

    .line 671
    const-string v6, "QcrilMsgTunnelSocket"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected solicited response! sn: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :goto_0
    return-void

    .line 676
    :cond_0
    const/4 v2, 0x0

    .line 678
    .local v2, "ret":Ljava/lang/Object;
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v6

    if-lez v6, :cond_3

    .line 681
    :cond_1
    :try_start_0
    iget v6, v3, Lcom/android/internal/telephony/QcRilRequest;->mRequest:I

    packed-switch v6, :pswitch_data_0

    .line 690
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized solicited response: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/QcRilRequest;->mRequest:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    .end local v2    # "ret":Ljava/lang/Object;
    :catch_0
    move-exception v5

    .line 697
    .local v5, "tr":Ljava/lang/Throwable;
    const-string v6, "QcrilMsgTunnelSocket"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/QcRilRequest;->serialString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " < "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/QcRilRequest;->mRequest:I

    invoke-static {v8}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " exception, possible invalid RIL response"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 701
    iget-object v6, v3, Lcom/android/internal/telephony/QcRilRequest;->mResult:Landroid/os/Message;

    if-eqz v6, :cond_2

    .line 702
    iget-object v6, v3, Lcom/android/internal/telephony/QcRilRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v9, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 703
    iget-object v6, v3, Lcom/android/internal/telephony/QcRilRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 705
    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/telephony/QcRilRequest;->release()V

    goto :goto_0

    .line 683
    .end local v5    # "tr":Ljava/lang/Throwable;
    .restart local v2    # "ret":Ljava/lang/Object;
    :pswitch_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 685
    const-string v6, "QcrilMsgTunnelSocket"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "responseRaw returns: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 710
    .end local v2    # "ret":Ljava/lang/Object;
    :cond_3
    if-eqz v0, :cond_4

    .line 711
    invoke-virtual {v3, v0, v2}, Lcom/android/internal/telephony/QcRilRequest;->onError(ILjava/lang/Object;)V

    .line 712
    invoke-virtual {v3}, Lcom/android/internal/telephony/QcRilRequest;->release()V

    goto/16 :goto_0

    .line 716
    :cond_4
    const-string v6, "QcrilMsgTunnelSocket"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/QcRilRequest;->serialString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " < "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/QcRilRequest;->mRequest:I

    invoke-static {v8}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/QcRilRequest;->mRequest:I

    invoke-direct {p0, v8, v2}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v6, v3, Lcom/android/internal/telephony/QcRilRequest;->mResult:Landroid/os/Message;

    if-eqz v6, :cond_5

    .line 720
    iget-object v6, v3, Lcom/android/internal/telephony/QcRilRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v2, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 721
    iget-object v6, v3, Lcom/android/internal/telephony/QcRilRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 724
    :cond_5
    invoke-virtual {v3}, Lcom/android/internal/telephony/QcRilRequest;->release()V

    goto/16 :goto_0

    .line 681
    :pswitch_data_0
    .packed-switch 0x3b
        :pswitch_0
    .end packed-switch
.end method

.method private processUnsolOemhookResponse(Ljava/nio/ByteBuffer;)V
    .locals 13
    .param p1, "oemHookResponse"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v12, 0x0

    .line 809
    const/high16 v0, 0x80000

    .line 812
    .local v0, "QCRILHOOK_BASE":I
    const v1, 0x803f0

    .line 815
    .local v1, "QCRILHOOK_UNSOL_WIFI_SAFE_CHANNELS_CHANGED":I
    const/high16 v3, 0x90000

    .line 816
    .local v3, "QCRIL_EVT_OEM_BASE":I
    const v2, 0x903e8

    .line 819
    .local v2, "QCRIL_EVT_HOOK_UNSOL_SKY_PROTOCOL":I
    const/4 v7, 0x0

    .local v7, "response_id":I
    const/4 v8, 0x0

    .line 821
    .local v8, "response_size":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 822
    const-string v9, "QcrilMsgTunnelSocket"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Response ID in RIL_UNSOL_OEM_HOOK_RAW is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 825
    if-gez v8, :cond_1

    .line 826
    const-string v9, "QcrilMsgTunnelSocket"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Response Size is Invalid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    :cond_0
    :goto_0
    return-void

    .line 829
    :cond_1
    new-array v6, v8, [B

    .line 830
    .local v6, "response_data":[B
    const/4 v9, 0x0

    invoke-virtual {p1, v6, v9, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 832
    packed-switch v7, :pswitch_data_0

    .line 846
    const-string v9, "QcrilMsgTunnelSocket"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Response ID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "is not served in this process."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const-string v9, "QcrilMsgTunnelSocket"

    const-string v10, "To broadcast an Intent via the notifier to external apps"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    iget-object v9, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mUnsolOemHookExtAppRegistrant:Landroid/os/Registrant;

    if-eqz v9, :cond_0

    .line 849
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 850
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 851
    .local v5, "origData":[B
    iget-object v9, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mUnsolOemHookExtAppRegistrant:Landroid/os/Registrant;

    new-instance v10, Landroid/os/AsyncResult;

    invoke-direct {v10, v12, v5, v12}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v9, v10}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 837
    .end local v5    # "origData":[B
    :pswitch_0
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mSkyRegListManager:Lcom/android/internal/telephony/SkyRegListManager;

    invoke-virtual {v9, v6}, Lcom/android/internal/telephony/SkyRegListManager;->notify([B)V

    .line 838
    const-string v9, "QcrilMsgTunnelSocket"

    const-string v10, "QCRIL_EVT_HOOK_UNSOL_SKY_PROTOCOL notify"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 839
    :catch_0
    move-exception v4

    .line 840
    .local v4, "e":Ljava/lang/Exception;
    const-string v9, "QcrilMsgTunnelSocket"

    const-string v10, "QCRIL_EVT_HOOK_UNSOL_SKY_PROTOCOL Notify error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 832
    :pswitch_data_0
    .packed-switch 0x903e8
        :pswitch_0
    .end packed-switch
.end method

.method private processUnsolicited(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x0

    .line 619
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 622
    .local v1, "response":I
    packed-switch v1, :pswitch_data_0

    .line 627
    :try_start_0
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized unsol response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    :catch_0
    move-exception v3

    .line 631
    .local v3, "tr":Ljava/lang/Throwable;
    const-string v4, "QcrilMsgTunnelSocket"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception processing unsol response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    .end local v3    # "tr":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 624
    :pswitch_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 636
    .local v2, "ret":Ljava/lang/Object;
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 638
    :pswitch_1
    const-string v4, "QcrilMsgTunnelSocket"

    const-string v5, "Received RIL_UNSOL_OEM_HOOK_RAW message"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v2

    .line 640
    check-cast v4, [B

    check-cast v4, [B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 641
    .local v0, "oemHookResponse":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 643
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->isQcUnsolOemHookResp(Ljava/nio/ByteBuffer;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 644
    const-string v4, "QcrilMsgTunnelSocket"

    const-string v5, "OEM ID check Passed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->processUnsolOemhookResponse(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 646
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    if-eqz v4, :cond_0

    .line 647
    const-string v4, "QcrilMsgTunnelSocket"

    const-string v5, "External OEM message, to be notified"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v4, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v6, v2, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 622
    nop

    :pswitch_data_0
    .packed-switch 0x404
        :pswitch_0
    .end packed-switch

    .line 636
    :pswitch_data_1
    .packed-switch 0x404
        :pswitch_1
    .end packed-switch
.end method

.method private static readRilMessage(Ljava/io/InputStream;[B)I
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 321
    const/4 v2, 0x0

    .line 322
    .local v2, "offset":I
    const/4 v3, 0x4

    .line 323
    .local v3, "remaining":I
    const/4 v0, 0x0

    .line 325
    .local v0, "countRead":I
    const-string v5, "QcrilMsgTunnelSocket"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Before reading offset = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " remaining = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " countRead = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_0
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 331
    const-string v5, "QcrilMsgTunnelSocket"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "After reading offset = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " remaining = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " countRead = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    if-gez v0, :cond_1

    .line 336
    const-string v5, "QcrilMsgTunnelSocket"

    const-string v6, "Hit EOS reading message length"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 382
    :goto_0
    return v1

    .line 340
    :cond_1
    add-int/2addr v2, v0

    .line 341
    sub-int/2addr v3, v0

    .line 342
    if-gtz v3, :cond_0

    .line 344
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    const/4 v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    const/4 v6, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    const/4 v6, 0x3

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int v1, v5, v6

    .line 350
    .local v1, "messageLength":I
    const-string v5, "QcrilMsgTunnelSocket"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "messageLength extracted from first 4 inputStream reads = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/4 v2, 0x0

    .line 355
    move v3, v1

    .line 356
    const/4 v0, 0x0

    .line 358
    const-string v5, "QcrilMsgTunnelSocket"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "offset = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " remaining = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " countRead = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_2
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 364
    const-string v5, "QcrilMsgTunnelSocket"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "offset = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " remaining = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " countRead = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    if-gez v0, :cond_3

    .line 369
    const-string v5, "QcrilMsgTunnelSocket"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Hit EOS reading message.  messageLength="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " remaining="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 371
    goto/16 :goto_0

    .line 374
    :cond_3
    add-int/2addr v2, v0

    .line 375
    sub-int/2addr v3, v0

    .line 376
    if-gtz v3, :cond_2

    .line 379
    const-string v4, "QcrilMsgTunnelSocket"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readRilMessage: Buffer = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " HexData = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1, v1}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->bytesToHexString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private releaseWakeLockIfDone()V
    .locals 3

    .prologue
    .line 605
    iget-object v1, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 606
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestMessagesPending:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestMessagesWaiting:I

    if-nez v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mSender:Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;->removeMessages(I)V

    .line 610
    iget-object v0, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 612
    :cond_0
    monitor-exit v1

    .line 613
    return-void

    .line 612
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static requestToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .prologue
    .line 501
    sparse-switch p0, :sswitch_data_0

    .line 507
    const-string v0, "<unknown request>"

    :goto_0
    return-object v0

    .line 503
    :sswitch_0
    const-string v0, "OEM_HOOK_RAW"

    goto :goto_0

    .line 505
    :sswitch_1
    const-string v0, "UNSOL_OEM_HOOK_RAW"

    goto :goto_0

    .line 501
    :sswitch_data_0
    .sparse-switch
        0x3b -> :sswitch_0
        0x404 -> :sswitch_1
    .end sparse-switch
.end method

.method private responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 772
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 774
    .local v0, "response":[B
    if-eqz v0, :cond_0

    .line 775
    const-string v1, "QcrilMsgTunnelSocket"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ByteArray from parcel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->bytesToHexString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :cond_0
    return-object v0
.end method

.method private retToString(ILjava/lang/Object;)Ljava/lang/String;
    .locals 9
    .param p1, "req"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 728
    if-nez p2, :cond_0

    .line 729
    const-string v4, ""

    .line 763
    .end local p2    # "ret":Ljava/lang/Object;
    :goto_0
    return-object v4

    .line 734
    .restart local p2    # "ret":Ljava/lang/Object;
    :cond_0
    instance-of v7, p2, [I

    if-eqz v7, :cond_2

    .line 735
    check-cast p2, [I

    .end local p2    # "ret":Ljava/lang/Object;
    move-object v2, p2

    check-cast v2, [I

    .line 736
    .local v2, "intArray":[I
    array-length v3, v2

    .line 737
    .local v3, "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "{"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 738
    .local v5, "sb":Ljava/lang/StringBuilder;
    if-lez v3, :cond_1

    .line 739
    const/4 v0, 0x0

    .line 740
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aget v7, v2, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 741
    :goto_1
    if-ge v1, v3, :cond_1

    .line 742
    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget v8, v2, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 745
    .end local v1    # "i":I
    :cond_1
    const-string v7, "}"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 747
    .local v4, "s":Ljava/lang/String;
    goto :goto_0

    .end local v2    # "intArray":[I
    .end local v3    # "length":I
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .restart local p2    # "ret":Ljava/lang/Object;
    :cond_2
    instance-of v7, p2, [Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 748
    check-cast p2, [Ljava/lang/String;

    .end local p2    # "ret":Ljava/lang/Object;
    move-object v6, p2

    check-cast v6, [Ljava/lang/String;

    .line 749
    .local v6, "strings":[Ljava/lang/String;
    array-length v3, v6

    .line 750
    .restart local v3    # "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "{"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 751
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    if-lez v3, :cond_3

    .line 752
    const/4 v0, 0x0

    .line 753
    .restart local v0    # "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aget-object v7, v6, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    :goto_2
    if-ge v1, v3, :cond_3

    .line 755
    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-object v8, v6, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 758
    .end local v1    # "i":I
    :cond_3
    const-string v7, "}"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 760
    .restart local v4    # "s":Ljava/lang/String;
    goto :goto_0

    .line 761
    .end local v3    # "length":I
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "strings":[Ljava/lang/String;
    .restart local p2    # "ret":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "s":Ljava/lang/String;
    goto :goto_0
.end method

.method private send(Lcom/android/internal/telephony/QcRilRequest;)V
    .locals 3
    .param p1, "rr"    # Lcom/android/internal/telephony/QcRilRequest;

    .prologue
    const/4 v2, 0x1

    .line 560
    iget-object v1, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mSocket:Landroid/net/LocalSocket;

    if-nez v1, :cond_0

    .line 561
    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/android/internal/telephony/QcRilRequest;->onError(ILjava/lang/Object;)V

    .line 562
    invoke-virtual {p1}, Lcom/android/internal/telephony/QcRilRequest;->release()V

    .line 571
    :goto_0
    return-void

    .line 566
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mSender:Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 568
    .local v0, "msg":Landroid/os/Message;
    invoke-direct {p0}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->acquireWakeLock()V

    .line 570
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 860
    const/16 v1, 0x3b

    invoke-static {v1, p2}, Lcom/android/internal/telephony/QcRilRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/QcRilRequest;

    move-result-object v0

    .line 863
    .local v0, "rr":Lcom/android/internal/telephony/QcRilRequest;
    const-string v1, "QcrilMsgTunnelSocket"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/QcRilRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/QcRilRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-static {p1, v3}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->bytesToHexString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    iget-object v1, v0, Lcom/android/internal/telephony/QcRilRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 868
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->send(Lcom/android/internal/telephony/QcRilRequest;)V

    .line 870
    return-void
.end method

.method public setOnUnsolOemHookExtApp(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 899
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mUnsolOemHookExtAppRegistrant:Landroid/os/Registrant;

    .line 900
    return-void
.end method

.method public setOnUnsolOemHookRaw(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 891
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    .line 892
    return-void
.end method

.method public unSetOnUnsolOemHookExtApp(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 903
    iget-object v0, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mUnsolOemHookExtAppRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 904
    return-void
.end method

.method public unSetOnUnsolOemHookRaw(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 896
    return-void
.end method
