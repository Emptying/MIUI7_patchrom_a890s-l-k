.class Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilReceiver;
.super Ljava/lang/Object;
.source "QcrilMsgTunnelSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/QcrilMsgTunnelSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QcRilReceiver"
.end annotation


# instance fields
.field buffer:[B

.field final synthetic this$0:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/QcrilMsgTunnelSocket;)V
    .locals 1

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilReceiver;->this$0:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilReceiver;->buffer:[B

    .line 390
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/16 v14, 0x8

    .line 394
    const/4 v6, 0x0

    .line 395
    .local v6, "retryCount":I
    const-string v7, "qmux_radio/rild_oem0"

    .line 399
    .local v7, "rilSocket":Ljava/lang/String;
    :goto_0
    const/4 v8, 0x0

    .line 403
    .local v8, "s":Landroid/net/LocalSocket;
    :try_start_0
    new-instance v9, Landroid/net/LocalSocket;

    invoke-direct {v9}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 404
    .end local v8    # "s":Landroid/net/LocalSocket;
    .local v9, "s":Landroid/net/LocalSocket;
    :try_start_1
    new-instance v3, Landroid/net/LocalSocketAddress;

    sget-object v11, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v7, v11}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 405
    .local v3, "l":Landroid/net/LocalSocketAddress;
    invoke-virtual {v9, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 406
    const-string v11, "QcrilMsgTunnelSocket"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Connecting to socket "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 438
    const/4 v6, 0x0

    .line 440
    :try_start_2
    iget-object v11, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilReceiver;->this$0:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    iput-object v9, v11, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mSocket:Landroid/net/LocalSocket;

    .line 441
    const-string v11, "QcrilMsgTunnelSocket"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Connected to \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' socket"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 443
    const/4 v4, 0x0

    .line 445
    .local v4, "length":I
    :try_start_3
    iget-object v11, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilReceiver;->this$0:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    iget-object v11, v11, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v11}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 450
    .local v2, "is":Ljava/io/InputStream;
    :goto_1
    iget-object v11, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilReceiver;->buffer:[B

    # invokes: Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->readRilMessage(Ljava/io/InputStream;[B)I
    invoke-static {v2, v11}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->access$200(Ljava/io/InputStream;[B)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    move-result v4

    .line 452
    if-gez v4, :cond_3

    .line 477
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_2
    :try_start_4
    const-string v11, "QcrilMsgTunnelSocket"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Disconnected from \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' socket"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 480
    :try_start_5
    iget-object v11, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilReceiver;->this$0:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    iget-object v11, v11, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v11}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 484
    :goto_3
    :try_start_6
    iget-object v11, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilReceiver;->this$0:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->mSocket:Landroid/net/LocalSocket;

    .line 485
    invoke-static {}, Lcom/android/internal/telephony/QcRilRequest;->resetSerial()V

    .line 488
    iget-object v11, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilReceiver;->this$0:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    const/4 v12, 0x1

    const/4 v13, 0x0

    # invokes: Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->clearRequestsList(IZ)V
    invoke-static {v11, v12, v13}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->access$400(Lcom/android/internal/telephony/QcrilMsgTunnelSocket;IZ)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 490
    .end local v3    # "l":Landroid/net/LocalSocketAddress;
    .end local v4    # "length":I
    :catch_0
    move-exception v10

    move-object v8, v9

    .line 491
    .end local v9    # "s":Landroid/net/LocalSocket;
    .restart local v8    # "s":Landroid/net/LocalSocket;
    .local v10, "tr":Ljava/lang/Throwable;
    :goto_4
    const-string v11, "QcrilMsgTunnelSocket"

    const-string v12, "Uncaught exception"

    invoke-static {v11, v12, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 496
    return-void

    .line 407
    .end local v10    # "tr":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 408
    .local v0, "ex":Ljava/io/IOException;
    :goto_5
    :try_start_7
    const-string v11, "QcrilMsgTunnelSocket"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Reason: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    .line 410
    if-eqz v8, :cond_0

    .line 411
    :try_start_8
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    .line 421
    :cond_0
    :goto_6
    if-ne v6, v14, :cond_2

    .line 422
    :try_start_9
    const-string v11, "QcrilMsgTunnelSocket"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Couldn\'t find \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' socket after "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " times, continuing to retry silently"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    .line 430
    :cond_1
    :goto_7
    const-wide/16 v11, 0xfa0

    :try_start_a
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    .line 434
    :goto_8
    add-int/lit8 v6, v6, 0x1

    .line 435
    goto/16 :goto_0

    .line 413
    :catch_2
    move-exception v1

    .line 414
    .local v1, "ex2":Ljava/io/IOException;
    :try_start_b
    const-string v11, "QcrilMsgTunnelSocket"

    const-string v12, "IOException 2"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 490
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v1    # "ex2":Ljava/io/IOException;
    :catch_3
    move-exception v10

    goto :goto_4

    .line 424
    .restart local v0    # "ex":Ljava/io/IOException;
    :cond_2
    if-lez v6, :cond_1

    if-ge v6, v14, :cond_1

    .line 425
    const-string v11, "QcrilMsgTunnelSocket"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Couldn\'t find \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' socket; "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "retrying after timeout"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_7

    .line 457
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v8    # "s":Landroid/net/LocalSocket;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "l":Landroid/net/LocalSocketAddress;
    .restart local v4    # "length":I
    .restart local v9    # "s":Landroid/net/LocalSocket;
    :cond_3
    :try_start_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 458
    .local v5, "p":Landroid/os/Parcel;
    iget-object v11, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilReceiver;->buffer:[B

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 459
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 462
    const-string v11, "QcrilMsgTunnelSocket"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Read packet: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " bytes. Data Available = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Landroid/os/Parcel;->dataAvail()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Position = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Landroid/os/Parcel;->dataPosition()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 467
    iget-object v11, p0, Lcom/android/internal/telephony/QcrilMsgTunnelSocket$QcRilReceiver;->this$0:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    # invokes: Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->processResponse(Landroid/os/Parcel;)V
    invoke-static {v11, v5}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->access$300(Lcom/android/internal/telephony/QcrilMsgTunnelSocket;Landroid/os/Parcel;)V

    .line 468
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_1

    .line 470
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v5    # "p":Landroid/os/Parcel;
    :catch_4
    move-exception v0

    .line 471
    .restart local v0    # "ex":Ljava/io/IOException;
    :try_start_d
    const-string v11, "QcrilMsgTunnelSocket"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' socket closed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 472
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_5
    move-exception v10

    .line 473
    .restart local v10    # "tr":Ljava/lang/Throwable;
    const-string v11, "QcrilMsgTunnelSocket"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Uncaught exception read length="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Exception:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_2

    .line 431
    .end local v3    # "l":Landroid/net/LocalSocketAddress;
    .end local v4    # "length":I
    .end local v9    # "s":Landroid/net/LocalSocket;
    .end local v10    # "tr":Ljava/lang/Throwable;
    .restart local v0    # "ex":Ljava/io/IOException;
    .restart local v8    # "s":Landroid/net/LocalSocket;
    :catch_6
    move-exception v11

    goto/16 :goto_8

    .line 481
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v8    # "s":Landroid/net/LocalSocket;
    .restart local v3    # "l":Landroid/net/LocalSocketAddress;
    .restart local v4    # "length":I
    .restart local v9    # "s":Landroid/net/LocalSocket;
    :catch_7
    move-exception v11

    goto/16 :goto_3

    .line 407
    .end local v3    # "l":Landroid/net/LocalSocketAddress;
    .end local v4    # "length":I
    :catch_8
    move-exception v0

    move-object v8, v9

    .end local v9    # "s":Landroid/net/LocalSocket;
    .restart local v8    # "s":Landroid/net/LocalSocket;
    goto/16 :goto_5
.end method
