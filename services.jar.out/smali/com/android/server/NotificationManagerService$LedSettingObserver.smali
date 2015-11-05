.class Lcom/android/server/NotificationManagerService$LedSettingObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LedSettingObserver"
.end annotation


# static fields
.field private static final APPNOTI_COLOR_KEYNAME:Ljava/lang/String; = "LEDLighting_AppNoti_Color"

.field private static final CHARGING_KEYNAME:Ljava/lang/String; = "LEDLighting_Recharge_OnOff"

.field private static final GLOBAL_KEYNAME:Ljava/lang/String; = "LEDLighting_OnOff"

.field private static final LOWBATT_COLOR_KEYNAME:Ljava/lang/String; = "LEDLighting_BatteryRow_Color"

.field private static final LOWBATT_KEYNAME:Ljava/lang/String; = "LEDLighting_BatteryRow_OnOff"

.field private static final MISSED_KEYNAME:Ljava/lang/String; = "LEDLighting_ConditionMissedNoti_OnOff"

.field private static final MSGNOTI_KEYNAME:Ljava/lang/String; = "LEDLighting_MsgNoti_OnOff"


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/NotificationManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 3437
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$LedSettingObserver;->this$0:Lcom/android/server/NotificationManagerService;

    .line 3438
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3439
    return-void
.end method

.method private getLedColor(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 9
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultColor"    # I

    .prologue
    .line 3509
    if-nez p1, :cond_1

    .line 3510
    const-string v0, "NotificationService"

    const-string v1, "getLedColor : Invalid cr value"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3539
    .end local p3    # "defaultColor":I
    :cond_0
    :goto_0
    return p3

    .line 3514
    .restart local p3    # "defaultColor":I
    :cond_1
    const/4 v8, 0x0

    .line 3515
    .local v8, "value":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_name"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_value"

    aput-object v1, v2, v0

    .line 3516
    .local v2, "proj":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3518
    .local v3, "where":Ljava/lang/String;
    const/4 v6, 0x0

    .line 3520
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    # getter for: Lcom/android/server/NotificationManagerService;->CONTENT_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/NotificationManagerService;->access$4900()Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3521
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 3522
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3523
    const-string v0, "_value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 3534
    :goto_1
    if-eqz v6, :cond_2

    .line 3535
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3539
    :cond_2
    invoke-static {v8, p3}, Lcom/android/internal/pantech/led/LedInfo;->convertColorStringToValue(Ljava/lang/String;I)I

    move-result p3

    goto :goto_0

    .line 3526
    :cond_3
    :try_start_1
    const-string v0, "NotificationService"

    const-string v1, "[get led color idx] cursor item is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3529
    :catch_0
    move-exception v7

    .line 3530
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "NotificationService"

    const-string v1, "PMS::failed to read LedSetting. so write initial value"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3534
    if-eqz v6, :cond_0

    .line 3535
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3534
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 3535
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3534
    :cond_4
    throw v0
.end method

.method private getLedState(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 11
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3472
    if-nez p1, :cond_0

    .line 3505
    :goto_0
    return v9

    .line 3476
    :cond_0
    const/4 v8, 0x0

    .line 3477
    .local v8, "value":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_name"

    aput-object v0, v2, v9

    const-string v0, "_value"

    aput-object v0, v2, v10

    .line 3478
    .local v2, "proj":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3480
    .local v3, "where":Ljava/lang/String;
    const/4 v6, 0x0

    .line 3482
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    # getter for: Lcom/android/server/NotificationManagerService;->CONTENT_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/NotificationManagerService;->access$4900()Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3483
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 3484
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3485
    const-string v0, "_value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 3496
    :goto_1
    if-eqz v6, :cond_1

    .line 3497
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3502
    :cond_1
    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NMS::Led setting. key = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", value = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3505
    const-string v0, "0"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v9

    :goto_2
    move v9, v0

    goto :goto_0

    .line 3488
    :cond_2
    :try_start_1
    const-string v0, "NotificationService"

    const-string v1, "[get led state] cursor item is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3491
    :catch_0
    move-exception v7

    .line 3492
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "NotificationService"

    const-string v1, "PMS::failed to read LedSetting."

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3496
    if-eqz v6, :cond_3

    .line 3497
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v9, v10

    .line 3493
    goto/16 :goto_0

    .line 3496
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 3497
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3496
    :cond_4
    throw v0

    :cond_5
    move v0, v10

    .line 3505
    goto :goto_2
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    .line 3442
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$LedSettingObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3443
    .local v0, "resolver":Landroid/content/ContentResolver;
    # getter for: Lcom/android/server/NotificationManagerService;->CONTENT_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/NotificationManagerService;->access$4900()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3444
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/NotificationManagerService$LedSettingObserver;->update(Landroid/net/Uri;)V

    .line 3445
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 3449
    invoke-virtual {p0, p2}, Lcom/android/server/NotificationManagerService$LedSettingObserver;->update(Landroid/net/Uri;)V

    .line 3450
    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 3453
    iget-object v2, p0, Lcom/android/server/NotificationManagerService$LedSettingObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3454
    .local v1, "resolver":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    # getter for: Lcom/android/server/NotificationManagerService;->CONTENT_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/NotificationManagerService;->access$4900()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3455
    :cond_0
    iget-object v2, p0, Lcom/android/server/NotificationManagerService$LedSettingObserver;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v3, "LEDLighting_OnOff"

    invoke-direct {p0, v1, v3}, Lcom/android/server/NotificationManagerService$LedSettingObserver;->getLedState(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    # setter for: Lcom/android/server/NotificationManagerService;->mLEDGlobalEnable:Z
    invoke-static {v2, v3}, Lcom/android/server/NotificationManagerService;->access$5802(Lcom/android/server/NotificationManagerService;Z)Z

    .line 3456
    iget-object v2, p0, Lcom/android/server/NotificationManagerService$LedSettingObserver;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v3, "LEDLighting_Recharge_OnOff"

    invoke-direct {p0, v1, v3}, Lcom/android/server/NotificationManagerService$LedSettingObserver;->getLedState(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    # setter for: Lcom/android/server/NotificationManagerService;->mChargingLedState:Z
    invoke-static {v2, v3}, Lcom/android/server/NotificationManagerService;->access$5902(Lcom/android/server/NotificationManagerService;Z)Z

    .line 3457
    iget-object v2, p0, Lcom/android/server/NotificationManagerService$LedSettingObserver;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v3, "LEDLighting_MsgNoti_OnOff"

    invoke-direct {p0, v1, v3}, Lcom/android/server/NotificationManagerService$LedSettingObserver;->getLedState(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    # setter for: Lcom/android/server/NotificationManagerService;->mMsgNotiLedState:Z
    invoke-static {v2, v3}, Lcom/android/server/NotificationManagerService;->access$6002(Lcom/android/server/NotificationManagerService;Z)Z

    .line 3459
    iget-object v2, p0, Lcom/android/server/NotificationManagerService$LedSettingObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mMissedLedState:Z
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$6100(Lcom/android/server/NotificationManagerService;)Z

    move-result v0

    .line 3460
    .local v0, "missedLedState":Z
    iget-object v2, p0, Lcom/android/server/NotificationManagerService$LedSettingObserver;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v3, "LEDLighting_ConditionMissedNoti_OnOff"

    invoke-direct {p0, v1, v3}, Lcom/android/server/NotificationManagerService$LedSettingObserver;->getLedState(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    # setter for: Lcom/android/server/NotificationManagerService;->mMissedLedState:Z
    invoke-static {v2, v3}, Lcom/android/server/NotificationManagerService;->access$6102(Lcom/android/server/NotificationManagerService;Z)Z

    .line 3461
    iget-object v2, p0, Lcom/android/server/NotificationManagerService$LedSettingObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mMissedLedState:Z
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$6100(Lcom/android/server/NotificationManagerService;)Z

    move-result v2

    if-eq v0, v2, :cond_1

    .line 3462
    iget-object v2, p0, Lcom/android/server/NotificationManagerService$LedSettingObserver;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v2, v3}, Lcom/android/server/NotificationManagerService;->access$1202(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 3464
    :cond_1
    iget-object v2, p0, Lcom/android/server/NotificationManagerService$LedSettingObserver;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v3, "LEDLighting_BatteryRow_OnOff"

    invoke-direct {p0, v1, v3}, Lcom/android/server/NotificationManagerService$LedSettingObserver;->getLedState(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    # setter for: Lcom/android/server/NotificationManagerService;->mLowBattLedState:Z
    invoke-static {v2, v3}, Lcom/android/server/NotificationManagerService;->access$6202(Lcom/android/server/NotificationManagerService;Z)Z

    .line 3466
    iget-object v2, p0, Lcom/android/server/NotificationManagerService$LedSettingObserver;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v3, "LEDLighting_AppNoti_Color"

    const v4, 0xffff

    invoke-direct {p0, v1, v3, v4}, Lcom/android/server/NotificationManagerService$LedSettingObserver;->getLedColor(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    # setter for: Lcom/android/server/NotificationManagerService;->mDefaultNotificationColor:I
    invoke-static {v2, v3}, Lcom/android/server/NotificationManagerService;->access$6302(Lcom/android/server/NotificationManagerService;I)I

    .line 3467
    iget-object v2, p0, Lcom/android/server/NotificationManagerService$LedSettingObserver;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v3, "LEDLighting_BatteryRow_Color"

    const/high16 v4, 0xff0000

    invoke-direct {p0, v1, v3, v4}, Lcom/android/server/NotificationManagerService$LedSettingObserver;->getLedColor(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    # setter for: Lcom/android/server/NotificationManagerService;->mLowBattLedColor:I
    invoke-static {v2, v3}, Lcom/android/server/NotificationManagerService;->access$6402(Lcom/android/server/NotificationManagerService;I)I

    .line 3469
    .end local v0    # "missedLedState":Z
    :cond_2
    return-void
.end method
