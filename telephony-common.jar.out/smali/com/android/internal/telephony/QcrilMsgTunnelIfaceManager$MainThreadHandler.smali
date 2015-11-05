.class public Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MainThreadHandler;
.super Landroid/os/Handler;
.source "QcrilMsgTunnelIfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MainThreadHandler;->this$0:Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 170
    const-string v6, "QcrilMsgTunnelIfaceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage what="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 216
    const-string v6, "QcrilMsgTunnelIfaceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MessageHandler: unexpected message code: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_0
    return-void

    .line 174
    :pswitch_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MessageRequest;

    .line 175
    .local v4, "request":Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MessageRequest;
    const/4 v6, 0x2

    invoke-virtual {p0, v6, v4}, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 176
    .local v3, "onCompleted":Landroid/os/Message;
    sget-object v7, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;->mQcrilMsgTunnelSocket:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    iget-object v6, v4, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MessageRequest;->argument:Ljava/lang/Object;

    check-cast v6, [B

    check-cast v6, [B

    invoke-virtual {v7, v6, v3}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_0

    .line 181
    .end local v3    # "onCompleted":Landroid/os/Message;
    .end local v4    # "request":Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MessageRequest;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 182
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MessageRequest;

    .line 183
    .restart local v4    # "request":Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MessageRequest;
    iput-object v0, v4, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MessageRequest;->result:Ljava/lang/Object;

    .line 185
    monitor-enter v4

    .line 186
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 187
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 191
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "request":Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MessageRequest;
    :pswitch_2
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MessageRequestAsync;

    .line 192
    .local v5, "requestAsync":Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MessageRequestAsync;
    const/4 v6, 0x4

    invoke-virtual {p0, v6, v5}, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 194
    .restart local v3    # "onCompleted":Landroid/os/Message;
    sget-object v7, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;->mQcrilMsgTunnelSocket:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    iget-object v6, v5, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MessageRequestAsync;->arg1:Ljava/lang/Object;

    check-cast v6, [B

    check-cast v6, [B

    invoke-virtual {v7, v6, v3}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_0

    .line 199
    .end local v3    # "onCompleted":Landroid/os/Message;
    .end local v5    # "requestAsync":Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MessageRequestAsync;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 200
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MessageRequestAsync;

    .line 201
    .restart local v5    # "requestAsync":Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MessageRequestAsync;
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iput-object v6, v5, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MessageRequestAsync;->result:Ljava/lang/Object;

    .line 202
    iget-object v1, v5, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MessageRequestAsync;->arg2:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/IOemHookCallback;

    .line 204
    .local v1, "cb":Lcom/android/internal/telephony/IOemHookCallback;
    :try_start_1
    iget-object v6, v5, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MessageRequestAsync;->result:Ljava/lang/Object;

    check-cast v6, [B

    check-cast v6, [B

    invoke-interface {v1, v6}, Lcom/android/internal/telephony/IOemHookCallback;->onOemHookResponse([B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v2

    .line 206
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 211
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "cb":Lcom/android/internal/telephony/IOemHookCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v5    # "requestAsync":Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MessageRequestAsync;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 212
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v7, p0, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MainThreadHandler;->this$0:Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;

    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    check-cast v6, [B

    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;->broadcastUnsolOemHookIntent([B)V

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
