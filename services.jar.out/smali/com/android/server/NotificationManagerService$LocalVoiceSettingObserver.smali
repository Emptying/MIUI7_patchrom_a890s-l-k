.class Lcom/android/server/NotificationManagerService$LocalVoiceSettingObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalVoiceSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/NotificationManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 3169
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$LocalVoiceSettingObserver;->this$0:Lcom/android/server/NotificationManagerService;

    .line 3170
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3171
    return-void
.end method

.method private getUpdate()V
    .locals 3

    .prologue
    .line 3258
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService$LocalVoiceSettingObserver;->getValue()Z

    move-result v1

    .line 3259
    .local v1, "localVoiceSettingState":Z
    iget-object v2, p0, Lcom/android/server/NotificationManagerService$LocalVoiceSettingObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mLocalVoiceSettingState:Z
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$5000(Lcom/android/server/NotificationManagerService;)Z

    move-result v2

    if-eq v2, v1, :cond_0

    .line 3260
    iget-object v2, p0, Lcom/android/server/NotificationManagerService$LocalVoiceSettingObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # setter for: Lcom/android/server/NotificationManagerService;->mLocalVoiceSettingState:Z
    invoke-static {v2, v1}, Lcom/android/server/NotificationManagerService;->access$5002(Lcom/android/server/NotificationManagerService;Z)Z

    .line 3263
    :cond_0
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService$LocalVoiceSettingObserver;->getValue1()I

    move-result v0

    .line 3264
    .local v0, "locaVoiceTriggerState":I
    iget-object v2, p0, Lcom/android/server/NotificationManagerService$LocalVoiceSettingObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mLocalVoiceTriggerState:I
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$5100(Lcom/android/server/NotificationManagerService;)I

    move-result v2

    if-eq v2, v0, :cond_1

    .line 3265
    iget-object v2, p0, Lcom/android/server/NotificationManagerService$LocalVoiceSettingObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # setter for: Lcom/android/server/NotificationManagerService;->mLocalVoiceTriggerState:I
    invoke-static {v2, v0}, Lcom/android/server/NotificationManagerService;->access$5102(Lcom/android/server/NotificationManagerService;I)I

    .line 3267
    :cond_1
    return-void
.end method

.method private getValue()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3181
    const/4 v8, 0x0

    .line 3182
    .local v8, "value":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_name"

    aput-object v0, v2, v10

    const-string v0, "_value"

    aput-object v0, v2, v11

    .line 3183
    .local v2, "proj":[Ljava/lang/String;
    const-string v9, "_name=\'LocalVoiceOnOff\'"

    .line 3185
    .local v9, "where":Ljava/lang/String;
    const/4 v6, 0x0

    .line 3187
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$LocalVoiceSettingObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    # getter for: Lcom/android/server/NotificationManagerService;->CONTENT_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/NotificationManagerService;->access$4900()Landroid/net/Uri;

    move-result-object v1

    const-string v3, "_name=\'LocalVoiceOnOff\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3188
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 3189
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3190
    const-string v0, "_value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 3201
    :goto_0
    if-eqz v6, :cond_0

    .line 3202
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3206
    :cond_0
    if-nez v8, :cond_4

    .line 3210
    :goto_1
    return v10

    .line 3193
    :cond_1
    :try_start_1
    const-string v0, "NotificationService"

    const-string v1, "[voice recog.] cursor item is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3196
    :catch_0
    move-exception v7

    .line 3197
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "NotificationService"

    const-string v1, "Exception happens. local voice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3201
    if-eqz v6, :cond_2

    .line 3202
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v10, v11

    .line 3198
    goto :goto_1

    .line 3201
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 3202
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3201
    :cond_3
    throw v0

    .line 3210
    :cond_4
    const-string v0, "0"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v10

    :goto_2
    move v10, v0

    goto :goto_1

    :cond_5
    move v0, v11

    goto :goto_2
.end method

.method private getValue1()I
    .locals 12

    .prologue
    .line 3215
    const/4 v8, 0x0

    .line 3216
    .local v8, "type":I
    const/4 v10, 0x0

    .line 3217
    .local v10, "value":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_name"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_value"

    aput-object v1, v2, v0

    .line 3218
    .local v2, "proj":[Ljava/lang/String;
    const-string v11, "_name=\'TriggerOnOff\'"

    .line 3220
    .local v11, "where":Ljava/lang/String;
    const/4 v6, 0x0

    .line 3222
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$LocalVoiceSettingObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    # getter for: Lcom/android/server/NotificationManagerService;->CONTENT_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/NotificationManagerService;->access$4900()Landroid/net/Uri;

    move-result-object v1

    const-string v3, "_name=\'TriggerOnOff\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3223
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 3224
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3225
    const-string v0, "_value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 3236
    :goto_0
    if-eqz v6, :cond_0

    .line 3237
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3241
    :cond_0
    if-nez v10, :cond_4

    move v9, v8

    .line 3248
    .end local v8    # "type":I
    .local v9, "type":I
    :goto_1
    return v9

    .line 3228
    .end local v9    # "type":I
    .restart local v8    # "type":I
    :cond_1
    :try_start_1
    const-string v0, "NotificationService"

    const-string v1, "[local recog.] cursor item is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3231
    :catch_0
    move-exception v7

    .line 3232
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "NotificationService"

    const-string v1, "Exception happens. local voice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3236
    if-eqz v6, :cond_2

    .line 3237
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v9, v8

    .line 3233
    .end local v8    # "type":I
    .restart local v9    # "type":I
    goto :goto_1

    .line 3236
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "type":I
    .restart local v8    # "type":I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 3237
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3236
    :cond_3
    throw v0

    .line 3245
    :cond_4
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 3247
    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 3248
    .end local v8    # "type":I
    .restart local v9    # "type":I
    goto :goto_1
.end method


# virtual methods
.method public observe()V
    .locals 3

    .prologue
    .line 3174
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$LocalVoiceSettingObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3175
    .local v0, "cr":Landroid/content/ContentResolver;
    # getter for: Lcom/android/server/NotificationManagerService;->CONTENT_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/NotificationManagerService;->access$4900()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3176
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService$LocalVoiceSettingObserver;->getUpdate()V

    .line 3177
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    .line 3253
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 3254
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService$LocalVoiceSettingObserver;->getUpdate()V

    .line 3255
    return-void
.end method
