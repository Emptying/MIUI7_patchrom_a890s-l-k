.class Lcom/android/server/LedManagerService$OneShotEvent;
.super Ljava/lang/Object;
.source "LedManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LedManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OneShotEvent"
.end annotation


# instance fields
.field private mIsRunning:Z

.field private mLedInfo:Lcom/android/internal/pantech/led/LedInfo;

.field private mPatternCount:I

.field private mRepeat:I

.field private mStopSignal:Z

.field final synthetic this$0:Lcom/android/server/LedManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LedManagerService;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/server/LedManagerService$OneShotEvent;->this$0:Lcom/android/server/LedManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    .line 240
    monitor-enter p0

    .line 241
    :try_start_0
    const-string v0, "LedManagerService"

    const-string v1, "---begin OneShotEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/android/server/LedManagerService$OneShotEvent;->this$0:Lcom/android/server/LedManagerService;

    # getter for: Lcom/android/server/LedManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/LedManagerService;->access$500(Lcom/android/server/LedManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LedManagerService$OneShotEvent;->mIsRunning:Z

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LedManagerService$OneShotEvent;->mStopSignal:Z

    .line 245
    iget-object v0, p0, Lcom/android/server/LedManagerService$OneShotEvent;->mLedInfo:Lcom/android/internal/pantech/led/LedInfo;

    invoke-virtual {v0}, Lcom/android/internal/pantech/led/LedInfo;->getPatternCount()I

    move-result v0

    iput v0, p0, Lcom/android/server/LedManagerService$OneShotEvent;->mPatternCount:I

    .line 246
    iget-object v0, p0, Lcom/android/server/LedManagerService$OneShotEvent;->mLedInfo:Lcom/android/internal/pantech/led/LedInfo;

    invoke-virtual {v0}, Lcom/android/internal/pantech/led/LedInfo;->getRepeatCount()I

    move-result v0

    iput v0, p0, Lcom/android/server/LedManagerService$OneShotEvent;->mRepeat:I

    .line 247
    const/4 v9, 0x0

    .local v9, "repeat":I
    :goto_0
    iget v0, p0, Lcom/android/server/LedManagerService$OneShotEvent;->mRepeat:I

    if-ge v9, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/LedManagerService$OneShotEvent;->mStopSignal:Z

    if-nez v0, :cond_2

    .line 248
    const/4 v8, 0x0

    .local v8, "patternIndex":I
    :goto_1
    iget v0, p0, Lcom/android/server/LedManagerService$OneShotEvent;->mPatternCount:I

    if-ge v8, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/LedManagerService$OneShotEvent;->mStopSignal:Z

    if-nez v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/android/server/LedManagerService$OneShotEvent;->mLedInfo:Lcom/android/internal/pantech/led/LedInfo;

    invoke-virtual {v0, v8}, Lcom/android/internal/pantech/led/LedInfo;->getPattern(I)[I

    move-result-object v7

    .line 250
    .local v7, "pattern":[I
    const/4 v0, 0x0

    aget v6, v7, v0

    .line 251
    .local v6, "duration":I
    array-length v0, v7

    if-le v0, v10, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/server/LedManagerService$OneShotEvent;->this$0:Lcom/android/server/LedManagerService;

    const/4 v1, 0x1

    aget v1, v7, v1

    const/4 v2, 0x2

    aget v2, v7, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/LedManagerService$OneShotEvent;->mLedInfo:Lcom/android/internal/pantech/led/LedInfo;

    iget v5, v5, Lcom/android/internal/pantech/led/LedInfo;->mOption:I

    # invokes: Lcom/android/server/LedManagerService;->setLedLocked(IIIII)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/LedManagerService;->access$600(Lcom/android/server/LedManagerService;IIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :goto_2
    int-to-long v0, v6

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 255
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/android/server/LedManagerService$OneShotEvent;->this$0:Lcom/android/server/LedManagerService;

    const/4 v1, 0x1

    aget v1, v7, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/LedManagerService$OneShotEvent;->mLedInfo:Lcom/android/internal/pantech/led/LedInfo;

    iget v4, v4, Lcom/android/internal/pantech/led/LedInfo;->mOption:I

    # invokes: Lcom/android/server/LedManagerService;->setLedLocked(IIII)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/LedManagerService;->access$700(Lcom/android/server/LedManagerService;IIII)V

    goto :goto_2

    .line 272
    .end local v6    # "duration":I
    .end local v7    # "pattern":[I
    .end local v8    # "patternIndex":I
    .end local v9    # "repeat":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 247
    .restart local v8    # "patternIndex":I
    .restart local v9    # "repeat":I
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 265
    .end local v8    # "patternIndex":I
    :cond_2
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/LedManagerService$OneShotEvent;->mStopSignal:Z

    if-nez v0, :cond_3

    .line 266
    iget-object v0, p0, Lcom/android/server/LedManagerService$OneShotEvent;->this$0:Lcom/android/server/LedManagerService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/LedManagerService;->setFinishEventLocked(Z)V
    invoke-static {v0, v1}, Lcom/android/server/LedManagerService;->access$800(Lcom/android/server/LedManagerService;Z)V

    .line 267
    iget-object v0, p0, Lcom/android/server/LedManagerService$OneShotEvent;->this$0:Lcom/android/server/LedManagerService;

    iget-object v0, v0, Lcom/android/server/LedManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 269
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LedManagerService$OneShotEvent;->mIsRunning:Z

    .line 270
    iget-object v0, p0, Lcom/android/server/LedManagerService$OneShotEvent;->this$0:Lcom/android/server/LedManagerService;

    # getter for: Lcom/android/server/LedManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/LedManagerService;->access$500(Lcom/android/server/LedManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 271
    const-string v0, "LedManagerService"

    const-string v1, "---end OneShotEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 273
    return-void

    .line 260
    .restart local v6    # "duration":I
    .restart local v7    # "pattern":[I
    .restart local v8    # "patternIndex":I
    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method public setLedInfo(Lcom/android/internal/pantech/led/LedInfo;)V
    .locals 10
    .param p1, "info"    # Lcom/android/internal/pantech/led/LedInfo;

    .prologue
    .line 277
    invoke-virtual {p1}, Lcom/android/internal/pantech/led/LedInfo;->isPeriodicEvent()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 278
    new-instance v5, Lcom/android/internal/pantech/led/LedInfo;

    invoke-virtual {p1}, Lcom/android/internal/pantech/led/LedInfo;->getAppId()I

    move-result v6

    iget-object v7, p1, Lcom/android/internal/pantech/led/LedInfo;->mColor:[I

    iget v8, p1, Lcom/android/internal/pantech/led/LedInfo;->mOnMs:I

    iget v9, p1, Lcom/android/internal/pantech/led/LedInfo;->mOffMs:I

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/android/internal/pantech/led/LedInfo;-><init>(I[III)V

    iput-object v5, p0, Lcom/android/server/LedManagerService$OneShotEvent;->mLedInfo:Lcom/android/internal/pantech/led/LedInfo;

    .line 292
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v5, p1, Lcom/android/internal/pantech/led/LedInfo;->mPattern:[[I

    array-length v1, v5

    .line 282
    .local v1, "N":I
    iget-object v5, p1, Lcom/android/internal/pantech/led/LedInfo;->mPattern:[[I

    const/4 v6, 0x0

    aget-object v5, v5, v6

    array-length v0, v5

    .line 283
    .local v0, "M":I
    filled-new-array {v1, v0}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    .line 284
    .local v4, "pattern":[[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 285
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v0, :cond_1

    .line 286
    aget-object v5, v4, v2

    iget-object v6, p1, Lcom/android/internal/pantech/led/LedInfo;->mPattern:[[I

    aget-object v6, v6, v2

    aget v6, v6, v3

    aput v6, v5, v3

    .line 285
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 284
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 290
    .end local v3    # "j":I
    :cond_2
    new-instance v5, Lcom/android/internal/pantech/led/LedInfo;

    invoke-virtual {p1}, Lcom/android/internal/pantech/led/LedInfo;->getAppId()I

    move-result v6

    invoke-virtual {p1}, Lcom/android/internal/pantech/led/LedInfo;->getRepeatCount()I

    move-result v7

    invoke-direct {v5, v6, v4, v7}, Lcom/android/internal/pantech/led/LedInfo;-><init>(I[[II)V

    iput-object v5, p0, Lcom/android/server/LedManagerService$OneShotEvent;->mLedInfo:Lcom/android/internal/pantech/led/LedInfo;

    goto :goto_0
.end method

.method public stopRunnable(Z)V
    .locals 1
    .param p1, "pause"    # Z

    .prologue
    .line 295
    monitor-enter p0

    .line 296
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/LedManagerService$OneShotEvent;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LedManagerService$OneShotEvent;->mStopSignal:Z

    .line 298
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 299
    iget-object v0, p0, Lcom/android/server/LedManagerService$OneShotEvent;->this$0:Lcom/android/server/LedManagerService;

    # invokes: Lcom/android/server/LedManagerService;->setFinishEventLocked(Z)V
    invoke-static {v0, p1}, Lcom/android/server/LedManagerService;->access$800(Lcom/android/server/LedManagerService;Z)V

    .line 301
    :cond_0
    monitor-exit p0

    .line 302
    return-void

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
