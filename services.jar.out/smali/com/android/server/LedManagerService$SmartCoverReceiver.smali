.class final Lcom/android/server/LedManagerService$SmartCoverReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LedManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LedManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SmartCoverReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LedManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/LedManagerService;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/server/LedManagerService$SmartCoverReceiver;->this$0:Lcom/android/server/LedManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LedManagerService;Lcom/android/server/LedManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/LedManagerService;
    .param p2, "x1"    # Lcom/android/server/LedManagerService$1;

    .prologue
    .line 380
    invoke-direct {p0, p1}, Lcom/android/server/LedManagerService$SmartCoverReceiver;-><init>(Lcom/android/server/LedManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 383
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.LID_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    const-string v1, "value"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 385
    .local v0, "open":Z
    const-string v1, "LedManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cover open : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v1, p0, Lcom/android/server/LedManagerService$SmartCoverReceiver;->this$0:Lcom/android/server/LedManagerService;

    # getter for: Lcom/android/server/LedManagerService;->mCoverState:Z
    invoke-static {v1}, Lcom/android/server/LedManagerService;->access$1000(Lcom/android/server/LedManagerService;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 396
    .end local v0    # "open":Z
    :cond_0
    :goto_0
    return-void

    .line 389
    .restart local v0    # "open":Z
    :cond_1
    iget-object v1, p0, Lcom/android/server/LedManagerService$SmartCoverReceiver;->this$0:Lcom/android/server/LedManagerService;

    # setter for: Lcom/android/server/LedManagerService;->mCoverState:Z
    invoke-static {v1, v0}, Lcom/android/server/LedManagerService;->access$1002(Lcom/android/server/LedManagerService;Z)Z

    .line 390
    iget-object v1, p0, Lcom/android/server/LedManagerService$SmartCoverReceiver;->this$0:Lcom/android/server/LedManagerService;

    # getter for: Lcom/android/server/LedManagerService;->mCoverState:Z
    invoke-static {v1}, Lcom/android/server/LedManagerService;->access$1000(Lcom/android/server/LedManagerService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 391
    iget-object v1, p0, Lcom/android/server/LedManagerService$SmartCoverReceiver;->this$0:Lcom/android/server/LedManagerService;

    iget-object v1, v1, Lcom/android/server/LedManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 393
    :cond_2
    iget-object v1, p0, Lcom/android/server/LedManagerService$SmartCoverReceiver;->this$0:Lcom/android/server/LedManagerService;

    iget-object v1, v1, Lcom/android/server/LedManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
