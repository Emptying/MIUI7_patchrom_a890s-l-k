.class Lcom/android/internal/telephony/QcRilHook$2;
.super Ljava/lang/Object;
.source "QcRilHook.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/QcRilHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/QcRilHook;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/QcRilHook;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/android/internal/telephony/QcRilHook$2;->this$0:Lcom/android/internal/telephony/QcRilHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/internal/telephony/QcRilHook$2;->this$0:Lcom/android/internal/telephony/QcRilHook;

    invoke-static {p2}, Lcom/android/internal/telephony/IQcrilMsgTunnelService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IQcrilMsgTunnelService;

    move-result-object v1

    # setter for: Lcom/android/internal/telephony/QcRilHook;->mService:Lcom/android/internal/telephony/IQcrilMsgTunnelService;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/QcRilHook;->access$102(Lcom/android/internal/telephony/QcRilHook;Lcom/android/internal/telephony/IQcrilMsgTunnelService;)Lcom/android/internal/telephony/IQcrilMsgTunnelService;

    .line 493
    iget-object v0, p0, Lcom/android/internal/telephony/QcRilHook$2;->this$0:Lcom/android/internal/telephony/QcRilHook;

    # getter for: Lcom/android/internal/telephony/QcRilHook;->mService:Lcom/android/internal/telephony/IQcrilMsgTunnelService;
    invoke-static {v0}, Lcom/android/internal/telephony/QcRilHook;->access$100(Lcom/android/internal/telephony/QcRilHook;)Lcom/android/internal/telephony/IQcrilMsgTunnelService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 494
    const-string v0, "TELEPHONY_QC_RIL_OEM_HOOK"

    const-string v1, "QcrilMsgTunnelService Connect Failed (onServiceConnected)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/QcRilHook$2;->this$0:Lcom/android/internal/telephony/QcRilHook;

    const/4 v1, 0x1

    # setter for: Lcom/android/internal/telephony/QcRilHook;->mBound:Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/QcRilHook;->access$202(Lcom/android/internal/telephony/QcRilHook;Z)Z

    .line 499
    return-void

    .line 496
    :cond_0
    const-string v0, "TELEPHONY_QC_RIL_OEM_HOOK"

    const-string v1, "QcrilMsgTunnelService Connected Successfully (onServiceConnected)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 503
    const-string v0, "TELEPHONY_QC_RIL_OEM_HOOK"

    const-string v1, "The connection to the service got disconnected unexpectedly!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v0, p0, Lcom/android/internal/telephony/QcRilHook$2;->this$0:Lcom/android/internal/telephony/QcRilHook;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/telephony/QcRilHook;->mService:Lcom/android/internal/telephony/IQcrilMsgTunnelService;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/QcRilHook;->access$102(Lcom/android/internal/telephony/QcRilHook;Lcom/android/internal/telephony/IQcrilMsgTunnelService;)Lcom/android/internal/telephony/IQcrilMsgTunnelService;

    .line 505
    iget-object v0, p0, Lcom/android/internal/telephony/QcRilHook$2;->this$0:Lcom/android/internal/telephony/QcRilHook;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/telephony/QcRilHook;->mBound:Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/QcRilHook;->access$202(Lcom/android/internal/telephony/QcRilHook;Z)Z

    .line 506
    return-void
.end method
