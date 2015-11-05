.class Lcom/android/server/LedManagerService$LedClientDeathHandler;
.super Ljava/lang/Object;
.source "LedManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LedManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LedClientDeathHandler"
.end annotation


# instance fields
.field private mAppId:I

.field private mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/LedManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LedManagerService;Landroid/os/IBinder;I)V
    .locals 0
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "appId"    # I

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/server/LedManagerService$LedClientDeathHandler;->this$0:Lcom/android/server/LedManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    iput-object p2, p0, Lcom/android/server/LedManagerService$LedClientDeathHandler;->mToken:Landroid/os/IBinder;

    .line 421
    iput p3, p0, Lcom/android/server/LedManagerService$LedClientDeathHandler;->mAppId:I

    .line 422
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 426
    const-string v1, "LedManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "binderDied. [appId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/LedManagerService$LedClientDeathHandler;->mAppId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v1, p0, Lcom/android/server/LedManagerService$LedClientDeathHandler;->this$0:Lcom/android/server/LedManagerService;

    # getter for: Lcom/android/server/LedManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/LedManagerService;->access$1100(Lcom/android/server/LedManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 430
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LedManagerService$LedClientDeathHandler;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 431
    iget-object v1, p0, Lcom/android/server/LedManagerService$LedClientDeathHandler;->this$0:Lcom/android/server/LedManagerService;

    iget v3, p0, Lcom/android/server/LedManagerService$LedClientDeathHandler;->mAppId:I

    # invokes: Lcom/android/server/LedManagerService;->findDeathHandlerIndexLocked(I)I
    invoke-static {v1, v3}, Lcom/android/server/LedManagerService;->access$1200(Lcom/android/server/LedManagerService;I)I

    move-result v0

    .line 432
    .local v0, "index":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 433
    iget-object v1, p0, Lcom/android/server/LedManagerService$LedClientDeathHandler;->this$0:Lcom/android/server/LedManagerService;

    # getter for: Lcom/android/server/LedManagerService;->mLedClientDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/LedManagerService;->access$1300(Lcom/android/server/LedManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 437
    :cond_0
    iget-object v1, p0, Lcom/android/server/LedManagerService$LedClientDeathHandler;->this$0:Lcom/android/server/LedManagerService;

    # getter for: Lcom/android/server/LedManagerService;->mLedInfoQueue:Lcom/android/server/LedInfoQueue;
    invoke-static {v1}, Lcom/android/server/LedManagerService;->access$1400(Lcom/android/server/LedManagerService;)Lcom/android/server/LedInfoQueue;

    move-result-object v1

    iget v3, p0, Lcom/android/server/LedManagerService$LedClientDeathHandler;->mAppId:I

    invoke-virtual {v1, v3}, Lcom/android/server/LedInfoQueue;->dequeueLedInfoLocked(I)Z

    .line 440
    iget-object v1, p0, Lcom/android/server/LedManagerService$LedClientDeathHandler;->this$0:Lcom/android/server/LedManagerService;

    # getter for: Lcom/android/server/LedManagerService;->mCurrentLedInfo:Lcom/android/internal/pantech/led/LedInfo;
    invoke-static {v1}, Lcom/android/server/LedManagerService;->access$1500(Lcom/android/server/LedManagerService;)Lcom/android/internal/pantech/led/LedInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/LedManagerService$LedClientDeathHandler;->this$0:Lcom/android/server/LedManagerService;

    # getter for: Lcom/android/server/LedManagerService;->mCurrentLedInfo:Lcom/android/internal/pantech/led/LedInfo;
    invoke-static {v1}, Lcom/android/server/LedManagerService;->access$1500(Lcom/android/server/LedManagerService;)Lcom/android/internal/pantech/led/LedInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/pantech/led/LedInfo;->getAppId()I

    move-result v1

    iget v3, p0, Lcom/android/server/LedManagerService$LedClientDeathHandler;->mAppId:I

    if-ne v1, v3, :cond_1

    .line 441
    iget-object v1, p0, Lcom/android/server/LedManagerService$LedClientDeathHandler;->this$0:Lcom/android/server/LedManagerService;

    # getter for: Lcom/android/server/LedManagerService;->mCurrentLedInfo:Lcom/android/internal/pantech/led/LedInfo;
    invoke-static {v1}, Lcom/android/server/LedManagerService;->access$1500(Lcom/android/server/LedManagerService;)Lcom/android/internal/pantech/led/LedInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/pantech/led/LedInfo;->isPeriodicEvent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 442
    iget-object v1, p0, Lcom/android/server/LedManagerService$LedClientDeathHandler;->this$0:Lcom/android/server/LedManagerService;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/LedManagerService;->setFinishEventLocked(Z)V
    invoke-static {v1, v3}, Lcom/android/server/LedManagerService;->access$800(Lcom/android/server/LedManagerService;Z)V

    .line 448
    :cond_1
    :goto_0
    monitor-exit v2

    .line 449
    return-void

    .line 445
    :cond_2
    iget-object v1, p0, Lcom/android/server/LedManagerService$LedClientDeathHandler;->this$0:Lcom/android/server/LedManagerService;

    # getter for: Lcom/android/server/LedManagerService;->mOneShotEventRunnable:Lcom/android/server/LedManagerService$OneShotEvent;
    invoke-static {v1}, Lcom/android/server/LedManagerService;->access$1600(Lcom/android/server/LedManagerService;)Lcom/android/server/LedManagerService$OneShotEvent;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/LedManagerService$OneShotEvent;->stopRunnable(Z)V

    goto :goto_0

    .line 448
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAppId()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/android/server/LedManagerService$LedClientDeathHandler;->mAppId:I

    return v0
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/server/LedManagerService$LedClientDeathHandler;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/LedManagerService$LedClientDeathHandler;->mAppId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
