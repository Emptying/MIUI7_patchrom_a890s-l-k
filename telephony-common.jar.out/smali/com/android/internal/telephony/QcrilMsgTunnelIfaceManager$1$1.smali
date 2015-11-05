.class Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$1$1;
.super Landroid/os/Handler;
.source "QcrilMsgTunnelIfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$1;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$1;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$1$1;->this$1:Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 115
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 134
    :goto_0
    return-void

    .line 118
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MessageRequest;

    .line 119
    .local v2, "request":Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MessageRequest;
    const/4 v3, 0x2

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$1$1;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 120
    .local v1, "onCompleted":Landroid/os/Message;
    sget-object v4, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;->mQcrilMsgTunnelSocket:Lcom/android/internal/telephony/QcrilMsgTunnelSocket;

    iget-object v3, v2, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MessageRequest;->argument:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    invoke-virtual {v4, v3, v1}, Lcom/android/internal/telephony/QcrilMsgTunnelSocket;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_0

    .line 125
    .end local v1    # "onCompleted":Landroid/os/Message;
    .end local v2    # "request":Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MessageRequest;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 126
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MessageRequest;

    .line 127
    .restart local v2    # "request":Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MessageRequest;
    iput-object v0, v2, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$MessageRequest;->result:Ljava/lang/Object;

    .line 129
    monitor-enter v2

    .line 130
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 131
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
