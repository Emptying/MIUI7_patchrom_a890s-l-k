.class Lcom/android/server/DevicePolicyManagerService$TouchModeDeathHandler;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchModeDeathHandler"
.end annotation


# instance fields
.field mCallback:Landroid/os/IBinder;

.field mOwnerPid:I

.field mTouchMode:I

.field mType:I

.field final synthetic this$0:Lcom/android/server/DevicePolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/DevicePolicyManagerService;IILandroid/os/IBinder;)V
    .locals 1
    .param p2, "type"    # I
    .param p3, "touchMode"    # I
    .param p4, "callback"    # Landroid/os/IBinder;

    .prologue
    .line 6654
    iput-object p1, p0, Lcom/android/server/DevicePolicyManagerService$TouchModeDeathHandler;->this$0:Lcom/android/server/DevicePolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6655
    iput p2, p0, Lcom/android/server/DevicePolicyManagerService$TouchModeDeathHandler;->mType:I

    .line 6656
    iput p3, p0, Lcom/android/server/DevicePolicyManagerService$TouchModeDeathHandler;->mTouchMode:I

    .line 6657
    iput-object p4, p0, Lcom/android/server/DevicePolicyManagerService$TouchModeDeathHandler;->mCallback:Landroid/os/IBinder;

    .line 6658
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/DevicePolicyManagerService$TouchModeDeathHandler;->mOwnerPid:I

    .line 6659
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 6

    .prologue
    .line 6663
    const-string v2, "DevicePolicyManagerService"

    const-string v3, "binder died."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6664
    # getter for: Lcom/android/server/DevicePolicyManagerService;->mTouchModeLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/DevicePolicyManagerService;->access$800()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 6665
    :try_start_0
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService$TouchModeDeathHandler;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService$TouchModeDeathHandler;->mCallback:Landroid/os/IBinder;

    iget v5, p0, Lcom/android/server/DevicePolicyManagerService$TouchModeDeathHandler;->mType:I

    # invokes: Lcom/android/server/DevicePolicyManagerService;->findClientIndexLocked(Landroid/os/IBinder;I)I
    invoke-static {v2, v4, v5}, Lcom/android/server/DevicePolicyManagerService;->access$900(Lcom/android/server/DevicePolicyManagerService;Landroid/os/IBinder;I)I

    move-result v0

    .line 6667
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 6668
    monitor-exit v3

    .line 6692
    :goto_0
    return-void

    .line 6671
    :cond_0
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService$TouchModeDeathHandler;->mCallback:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v2, p0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 6672
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService$TouchModeDeathHandler;->this$0:Lcom/android/server/DevicePolicyManagerService;

    # getter for: Lcom/android/server/DevicePolicyManagerService;->mTouchModeClient:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/DevicePolicyManagerService;->access$1000(Lcom/android/server/DevicePolicyManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6675
    iget v2, p0, Lcom/android/server/DevicePolicyManagerService$TouchModeDeathHandler;->mType:I

    if-nez v2, :cond_3

    .line 6676
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService$TouchModeDeathHandler;->this$0:Lcom/android/server/DevicePolicyManagerService;

    # invokes: Lcom/android/server/DevicePolicyManagerService;->isCovered()Z
    invoke-static {v2}, Lcom/android/server/DevicePolicyManagerService;->access$1100(Lcom/android/server/DevicePolicyManagerService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6677
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService$TouchModeDeathHandler;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "high_sensitive_touch"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 6678
    .local v1, "mode":I
    const-string v2, "DevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/DevicePolicyManagerService$TouchModeDeathHandler;->mType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", restore front touch mode to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6679
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService$TouchModeDeathHandler;->this$0:Lcom/android/server/DevicePolicyManagerService;

    # getter for: Lcom/android/server/DevicePolicyManagerService;->sky_ctrl_drv:Lcom/pantech/test/Sky_ctrl_drv;
    invoke-static {v2}, Lcom/android/server/DevicePolicyManagerService;->access$1200(Lcom/android/server/DevicePolicyManagerService;)Lcom/pantech/test/Sky_ctrl_drv;

    move-result-object v2

    const/16 v4, 0x1771

    invoke-virtual {v2, v4, v1}, Lcom/pantech/test/Sky_ctrl_drv;->Sky_Ctrl_Touch_With_Arg(II)I

    .line 6680
    monitor-exit v3

    goto :goto_0

    .line 6691
    .end local v0    # "index":I
    .end local v1    # "mode":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 6682
    .restart local v0    # "index":I
    :cond_1
    :try_start_1
    const-string v2, "DevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/DevicePolicyManagerService$TouchModeDeathHandler;->mType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", restore front touch mode to resolved result"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6683
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService$TouchModeDeathHandler;->this$0:Lcom/android/server/DevicePolicyManagerService;

    # getter for: Lcom/android/server/DevicePolicyManagerService;->sky_ctrl_drv:Lcom/pantech/test/Sky_ctrl_drv;
    invoke-static {v2}, Lcom/android/server/DevicePolicyManagerService;->access$1200(Lcom/android/server/DevicePolicyManagerService;)Lcom/pantech/test/Sky_ctrl_drv;

    move-result-object v2

    const/16 v4, 0x1771

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService$TouchModeDeathHandler;->this$0:Lcom/android/server/DevicePolicyManagerService;

    # invokes: Lcom/android/server/DevicePolicyManagerService;->resolveFrontTouchModeLocked()I
    invoke-static {v5}, Lcom/android/server/DevicePolicyManagerService;->access$1300(Lcom/android/server/DevicePolicyManagerService;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/pantech/test/Sky_ctrl_drv;->Sky_Ctrl_Touch_With_Arg(II)I

    .line 6691
    :cond_2
    :goto_1
    monitor-exit v3

    goto/16 :goto_0

    .line 6686
    :cond_3
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService$TouchModeDeathHandler;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v4, 0x0

    # invokes: Lcom/android/server/DevicePolicyManagerService;->getRearTouchSetting(I)Z
    invoke-static {v2, v4}, Lcom/android/server/DevicePolicyManagerService;->access$1400(Lcom/android/server/DevicePolicyManagerService;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6687
    const-string v2, "DevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/DevicePolicyManagerService$TouchModeDeathHandler;->mType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", restore rear touch mode to resolved result"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6688
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService$TouchModeDeathHandler;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService$TouchModeDeathHandler;->this$0:Lcom/android/server/DevicePolicyManagerService;

    # invokes: Lcom/android/server/DevicePolicyManagerService;->resolveRearTouchModeLocked()I
    invoke-static {v4}, Lcom/android/server/DevicePolicyManagerService;->access$1500(Lcom/android/server/DevicePolicyManagerService;)I

    move-result v4

    # invokes: Lcom/android/server/DevicePolicyManagerService;->setRearTouchMode(I)Z
    invoke-static {v2, v4}, Lcom/android/server/DevicePolicyManagerService;->access$1600(Lcom/android/server/DevicePolicyManagerService;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 6696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/DevicePolicyManagerService$TouchModeDeathHandler;->mOwnerPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/DevicePolicyManagerService$TouchModeDeathHandler;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/DevicePolicyManagerService$TouchModeDeathHandler;->mTouchMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callback : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService$TouchModeDeathHandler;->mCallback:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
