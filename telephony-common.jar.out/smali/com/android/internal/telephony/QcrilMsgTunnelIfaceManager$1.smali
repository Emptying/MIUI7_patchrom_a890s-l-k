.class Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$1;
.super Ljava/lang/Thread;
.source "QcrilMsgTunnelIfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$1;->this$0:Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 105
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$1;->this$0:Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;

    new-instance v1, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$1$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$1$1;-><init>(Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager$1;)V

    # setter for: Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;->mSubThreadHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;->access$002(Lcom/android/internal/telephony/QcrilMsgTunnelIfaceManager;Landroid/os/Handler;)Landroid/os/Handler;

    .line 136
    const-string v0, "QcrilMsgTunnelIfaceManager"

    const-string v1, "Thread loop started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 138
    const-string v0, "QcrilMsgTunnelIfaceManager"

    const-string v1, "Thread loop exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method
