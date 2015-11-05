.class Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;
.super Landroid/os/Handler;
.source "QcrilMsgTunnelSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/QcrilMsgTunnelSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QcRilSender"
.end annotation


# instance fields
.field dataLength:[B

.field final synthetic this$0:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/QcrilMsgTunnelSocket;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;->this$0:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    .line 148
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 152
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;->dataLength:[B

    .line 149
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 15
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 164
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/telephony/QcRilRequest;

    move-object v8, v10

    check-cast v8, Lcom/android/internal/telephony/QcRilRequest;

    .line 165
    .local v8, "rr":Lcom/android/internal/telephony/QcRilRequest;
    const/4 v7, 0x0

    .line 167
    .local v7, "req":Lcom/android/internal/telephony/QcRilRequest;
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 173
    :pswitch_0
    const/4 v1, 0x0

    .line 177
    .local v1, "alreadySubtracted":Z
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;->this$0:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    iget-object v9, v10, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mSocket:Landroid/net/LocalSocket;

    .line 179
    .local v9, "s":Landroid/net/LocalSocket;
    if-nez v9, :cond_2

    .line 180
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/telephony/QcRilRequest;->onError(ILjava/lang/Object;)V

    .line 181
    invoke-virtual {v8}, Lcom/android/internal/telephony/QcRilRequest;->release()V

    .line 182
    iget-object v10, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;->this$0:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    iget v10, v10, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestMessagesPending:I

    if-lez v10, :cond_1

    .line 183
    iget-object v10, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;->this$0:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    iget v11, v10, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestMessagesPending:I

    add-int/lit8 v11, v11, -0x1

    iput v11, v10, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestMessagesPending:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 184
    :cond_1
    const/4 v1, 0x1

    .line 239
    iget-object v10, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;->this$0:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    # invokes: Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->releaseWakeLockIfDone()V
    invoke-static {v10}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->access$100(Lcom/android/internal/telephony/QcrilMsgTunnelSocket;)V

    goto :goto_0

    .line 188
    :cond_2
    :try_start_1
    iget-object v10, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;->this$0:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    iget-object v11, v10, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 189
    :try_start_2
    iget-object v10, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;->this$0:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    iget-object v10, v10, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v10, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;->this$0:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    iget v12, v10, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestMessagesWaiting:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v10, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestMessagesWaiting:I

    .line 191
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    :try_start_3
    iget-object v10, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;->this$0:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    iget v10, v10, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestMessagesPending:I

    if-lez v10, :cond_3

    .line 194
    iget-object v10, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;->this$0:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    iget v11, v10, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestMessagesPending:I

    add-int/lit8 v11, v11, -0x1

    iput v11, v10, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestMessagesPending:I

    .line 195
    :cond_3
    const/4 v1, 0x1

    .line 199
    iget-object v10, v8, Lcom/android/internal/telephony/QcRilRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v10}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    .line 200
    .local v3, "data":[B
    iget-object v10, v8, Lcom/android/internal/telephony/QcRilRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 201
    const/4 v10, 0x0

    iput-object v10, v8, Lcom/android/internal/telephony/QcRilRequest;->mp:Landroid/os/Parcel;

    .line 203
    array-length v10, v3

    const/16 v11, 0x2000

    if-le v10, v11, :cond_8

    .line 204
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Parcel larger than max bytes allowed! "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 218
    .end local v3    # "data":[B
    .end local v9    # "s":Landroid/net/LocalSocket;
    :catch_0
    move-exception v4

    .line 219
    .local v4, "ex":Ljava/io/IOException;
    :try_start_4
    const-string v10, "QcrilMsgTunnelSocket"

    const-string v11, "IOException"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    iget-object v10, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;->this$0:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    iget v11, v8, Lcom/android/internal/telephony/QcRilRequest;->mSerial:I

    # invokes: Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/QcRilRequest;
    invoke-static {v10, v11}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->access$000(Lcom/android/internal/telephony/QcrilMsgTunnelSocket;I)Lcom/android/internal/telephony/QcRilRequest;

    move-result-object v7

    .line 223
    if-nez v7, :cond_4

    if-nez v1, :cond_5

    .line 224
    :cond_4
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/telephony/QcRilRequest;->onError(ILjava/lang/Object;)V

    .line 225
    invoke-virtual {v8}, Lcom/android/internal/telephony/QcRilRequest;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 239
    :cond_5
    iget-object v10, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;->this$0:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    # invokes: Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->releaseWakeLockIfDone()V
    invoke-static {v10}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->access$100(Lcom/android/internal/telephony/QcrilMsgTunnelSocket;)V

    .line 242
    .end local v4    # "ex":Ljava/io/IOException;
    :goto_1
    if-nez v1, :cond_0

    iget-object v10, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;->this$0:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    iget v10, v10, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestMessagesPending:I

    if-lez v10, :cond_0

    .line 243
    iget-object v10, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;->this$0:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    iget v11, v10, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestMessagesPending:I

    add-int/lit8 v11, v11, -0x1

    iput v11, v10, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestMessagesPending:I

    goto/16 :goto_0

    .line 191
    .restart local v9    # "s":Landroid/net/LocalSocket;
    :catchall_0
    move-exception v10

    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v10
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 227
    .end local v9    # "s":Landroid/net/LocalSocket;
    :catch_1
    move-exception v5

    .line 228
    .local v5, "exc":Ljava/lang/RuntimeException;
    :try_start_7
    const-string v10, "QcrilMsgTunnelSocket"

    const-string v11, "Uncaught exception "

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    iget-object v10, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;->this$0:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    iget v11, v8, Lcom/android/internal/telephony/QcRilRequest;->mSerial:I

    # invokes: Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/QcRilRequest;
    invoke-static {v10, v11}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->access$000(Lcom/android/internal/telephony/QcrilMsgTunnelSocket;I)Lcom/android/internal/telephony/QcRilRequest;

    move-result-object v7

    .line 232
    if-nez v7, :cond_6

    if-nez v1, :cond_7

    .line 233
    :cond_6
    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/telephony/QcRilRequest;->onError(ILjava/lang/Object;)V

    .line 234
    invoke-virtual {v8}, Lcom/android/internal/telephony/QcRilRequest;->release()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 239
    :cond_7
    iget-object v10, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;->this$0:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    # invokes: Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->releaseWakeLockIfDone()V
    invoke-static {v10}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->access$100(Lcom/android/internal/telephony/QcrilMsgTunnelSocket;)V

    goto :goto_1

    .line 210
    .end local v5    # "exc":Ljava/lang/RuntimeException;
    .restart local v3    # "data":[B
    .restart local v9    # "s":Landroid/net/LocalSocket;
    :cond_8
    :try_start_8
    iget-object v10, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;->dataLength:[B

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;->dataLength:[B

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-byte v14, v12, v13

    aput-byte v14, v10, v11

    .line 211
    iget-object v10, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;->dataLength:[B

    const/4 v11, 0x2

    array-length v12, v3

    shr-int/lit8 v12, v12, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 212
    iget-object v10, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;->dataLength:[B

    const/4 v11, 0x3

    array-length v12, v3

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 214
    const-string v10, "QcrilMsgTunnelSocket"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "writing packet: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bytes"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {v9}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;->dataLength:[B

    invoke-virtual {v10, v11}, Ljava/io/OutputStream;->write([B)V

    .line 217
    invoke-virtual {v9}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 239
    iget-object v10, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;->this$0:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    # invokes: Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->releaseWakeLockIfDone()V
    invoke-static {v10}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->access$100(Lcom/android/internal/telephony/QcrilMsgTunnelSocket;)V

    goto/16 :goto_1

    .end local v3    # "data":[B
    .end local v9    # "s":Landroid/net/LocalSocket;
    :catchall_1
    move-exception v10

    iget-object v11, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;->this$0:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    # invokes: Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->releaseWakeLockIfDone()V
    invoke-static {v11}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->access$100(Lcom/android/internal/telephony/QcrilMsgTunnelSocket;)V

    throw v10

    .line 251
    .end local v1    # "alreadySubtracted":Z
    :pswitch_1
    iget-object v10, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;->this$0:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    iget-object v11, v10, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v11

    .line 252
    :try_start_9
    iget-object v10, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;->this$0:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    iget-object v10, v10, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 260
    iget-object v10, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;->this$0:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    iget v10, v10, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestMessagesWaiting:I

    if-eqz v10, :cond_a

    .line 261
    const-string v10, "QcrilMsgTunnelSocket"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NOTE: mReqWaiting is NOT 0 but"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;->this$0:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    iget v13, v13, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestMessagesWaiting:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " at TIMEOUT, reset!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " There still msg waitng for response"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v10, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;->this$0:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    const/4 v12, 0x0

    iput v12, v10, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestMessagesWaiting:I

    .line 268
    iget-object v10, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;->this$0:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    iget-object v12, v10, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 269
    :try_start_a
    iget-object v10, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;->this$0:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    iget-object v10, v10, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 270
    .local v2, "count":I
    const-string v10, "QcrilMsgTunnelSocket"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "WAKE_LOCK_TIMEOUT  mRequestList="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v2, :cond_9

    .line 274
    iget-object v10, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;->this$0:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    iget-object v10, v10, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lcom/android/internal/telephony/QcRilRequest;

    move-object v8, v0

    .line 275
    const-string v10, "QcrilMsgTunnelSocket"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Lcom/android/internal/telephony/QcRilRequest;->mSerial:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Lcom/android/internal/telephony/QcRilRequest;->mRequest:I

    invoke-static {v14}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->requestToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 278
    :cond_9
    monitor-exit v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 286
    .end local v2    # "count":I
    .end local v6    # "i":I
    :cond_a
    :try_start_b
    iget-object v10, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;->this$0:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    iget v10, v10, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestMessagesPending:I

    if-eqz v10, :cond_b

    .line 287
    const-string v10, "QcrilMsgTunnelSocket"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ERROR: mReqPending is NOT 0 but"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;->this$0:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    iget v13, v13, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestMessagesPending:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " at TIMEOUT, reset!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v10, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;->this$0:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    const/4 v12, 0x0

    iput v12, v10, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mRequestMessagesPending:I

    .line 292
    :cond_b
    iget-object v10, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilSender;->this$0:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    iget-object v10, v10, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 294
    :cond_c
    monitor-exit v11

    goto/16 :goto_0

    :catchall_2
    move-exception v10

    monitor-exit v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v10

    .line 278
    :catchall_3
    move-exception v10

    :try_start_c
    monitor-exit v12
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public run()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method
