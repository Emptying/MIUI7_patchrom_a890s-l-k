.class final Lcom/android/server/NotificationManagerService$BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BatteryReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .locals 0

    .prologue
    .line 3343
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$BatteryReceiver;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/NotificationManagerService;
    .param p2, "x1"    # Lcom/android/server/NotificationManagerService$1;

    .prologue
    .line 3343
    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService$BatteryReceiver;-><init>(Lcom/android/server/NotificationManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v10, 0x1f41

    const/16 v9, 0x1f40

    const/4 v3, 0x0

    const/16 v8, 0x64

    const/4 v4, 0x1

    .line 3346
    iget-object v5, p0, Lcom/android/server/NotificationManagerService$BatteryReceiver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mBatteryStatus:I
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$5200(Lcom/android/server/NotificationManagerService;)I

    move-result v2

    .line 3347
    .local v2, "oldBatteryStatus":I
    iget-object v5, p0, Lcom/android/server/NotificationManagerService$BatteryReceiver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mBatteryLevel:I
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$5300(Lcom/android/server/NotificationManagerService;)I

    move-result v1

    .line 3350
    .local v1, "oldBatteryLevel":I
    iget-object v5, p0, Lcom/android/server/NotificationManagerService$BatteryReceiver;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v6, "status"

    invoke-virtual {p2, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    # setter for: Lcom/android/server/NotificationManagerService;->mBatteryStatus:I
    invoke-static {v5, v6}, Lcom/android/server/NotificationManagerService;->access$5202(Lcom/android/server/NotificationManagerService;I)I

    .line 3351
    iget-object v5, p0, Lcom/android/server/NotificationManagerService$BatteryReceiver;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v6, "level"

    invoke-virtual {p2, v6, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    # setter for: Lcom/android/server/NotificationManagerService;->mBatteryLevel:I
    invoke-static {v5, v6}, Lcom/android/server/NotificationManagerService;->access$5302(Lcom/android/server/NotificationManagerService;I)I

    .line 3352
    iget-object v5, p0, Lcom/android/server/NotificationManagerService$BatteryReceiver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v6, p0, Lcom/android/server/NotificationManagerService$BatteryReceiver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mBatteryStatus:I
    invoke-static {v6}, Lcom/android/server/NotificationManagerService;->access$5200(Lcom/android/server/NotificationManagerService;)I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/server/NotificationManagerService$BatteryReceiver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mBatteryStatus:I
    invoke-static {v6}, Lcom/android/server/NotificationManagerService;->access$5200(Lcom/android/server/NotificationManagerService;)I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_1

    :cond_0
    move v3, v4

    :cond_1
    # setter for: Lcom/android/server/NotificationManagerService;->mIsPowered:Z
    invoke-static {v5, v3}, Lcom/android/server/NotificationManagerService;->access$5402(Lcom/android/server/NotificationManagerService;Z)Z

    .line 3355
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$BatteryReceiver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mIsPowered:Z
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$5400(Lcom/android/server/NotificationManagerService;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3357
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$BatteryReceiver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mLedWakelockHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$5500(Lcom/android/server/NotificationManagerService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 3358
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$BatteryReceiver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mLedWakelockHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$5500(Lcom/android/server/NotificationManagerService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3367
    :cond_2
    const/4 v0, 0x1

    .line 3369
    .local v0, "isStatusChanged":Z
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$BatteryReceiver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mBatteryStatus:I
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$5200(Lcom/android/server/NotificationManagerService;)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 3370
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$BatteryReceiver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mLowBatteryWarningLevel:I
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$5600(Lcom/android/server/NotificationManagerService;)I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 3371
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$BatteryReceiver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mBatteryLevel:I
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$5300(Lcom/android/server/NotificationManagerService;)I

    move-result v3

    iget-object v5, p0, Lcom/android/server/NotificationManagerService$BatteryReceiver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mLowBatteryWarningLevel:I
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$5600(Lcom/android/server/NotificationManagerService;)I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 3372
    const/4 v0, 0x0

    .line 3387
    :cond_3
    :goto_0
    if-ne v0, v4, :cond_4

    .line 3388
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$BatteryReceiver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mLedWakelockHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$5500(Lcom/android/server/NotificationManagerService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 3389
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$BatteryReceiver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mLedWakelockHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$5500(Lcom/android/server/NotificationManagerService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3390
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$BatteryReceiver;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateBatteryLED()V
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$1800(Lcom/android/server/NotificationManagerService;)V

    .line 3392
    :cond_4
    return-void

    .line 3375
    :cond_5
    if-ge v1, v8, :cond_6

    .line 3376
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$BatteryReceiver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mBatteryLevel:I
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$5300(Lcom/android/server/NotificationManagerService;)I

    move-result v3

    iget-object v5, p0, Lcom/android/server/NotificationManagerService$BatteryReceiver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mLowBatteryWarningLevel:I
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$5600(Lcom/android/server/NotificationManagerService;)I

    move-result v5

    if-lt v3, v5, :cond_3

    iget-object v3, p0, Lcom/android/server/NotificationManagerService$BatteryReceiver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mBatteryLevel:I
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$5300(Lcom/android/server/NotificationManagerService;)I

    move-result v3

    if-ge v3, v8, :cond_3

    .line 3377
    const/4 v0, 0x0

    goto :goto_0

    .line 3381
    :cond_6
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$BatteryReceiver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mBatteryLevel:I
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$5300(Lcom/android/server/NotificationManagerService;)I

    move-result v3

    if-ne v3, v8, :cond_3

    .line 3382
    const/4 v0, 0x0

    goto :goto_0
.end method
