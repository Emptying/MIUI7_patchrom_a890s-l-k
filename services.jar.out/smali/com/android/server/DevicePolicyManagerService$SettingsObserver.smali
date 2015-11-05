.class Lcom/android/server/DevicePolicyManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DevicePolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/DevicePolicyManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 6973
    iput-object p1, p0, Lcom/android/server/DevicePolicyManagerService$SettingsObserver;->this$0:Lcom/android/server/DevicePolicyManagerService;

    .line 6974
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6975
    return-void
.end method

.method private getValue(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 11
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 6996
    if-nez p1, :cond_1

    .line 7027
    :cond_0
    :goto_0
    return v9

    .line 7000
    :cond_1
    const/4 v8, 0x0

    .line 7001
    .local v8, "value":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_name"

    aput-object v0, v2, v9

    const-string v0, "_value"

    aput-object v0, v2, v10

    .line 7002
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

    .line 7004
    .local v3, "where":Ljava/lang/String;
    const/4 v6, 0x0

    .line 7006
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    # getter for: Lcom/android/server/DevicePolicyManagerService;->CONTENT_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/DevicePolicyManagerService;->access$1700()Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7007
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 7008
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7009
    const-string v0, "_value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 7020
    :goto_1
    if-eqz v6, :cond_2

    .line 7021
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7025
    :cond_2
    const-string v0, "DevicePolicyManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getValue key = "

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

    .line 7027
    const-string v0, "0"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v9

    :goto_2
    move v9, v0

    goto :goto_0

    .line 7012
    :cond_3
    :try_start_1
    const-string v0, "DevicePolicyManagerService"

    const-string v1, "[getValue] cursor item is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 7015
    :catch_0
    move-exception v7

    .line 7016
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "DevicePolicyManagerService"

    const-string v1, "failed in getValue()."

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7020
    if-eqz v6, :cond_0

    .line 7021
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 7020
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 7021
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7020
    :cond_4
    throw v0

    :cond_5
    move v0, v10

    .line 7027
    goto :goto_2
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    .line 6978
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService$SettingsObserver;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 6979
    .local v0, "resolver":Landroid/content/ContentResolver;
    # getter for: Lcom/android/server/DevicePolicyManagerService;->CONTENT_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/DevicePolicyManagerService;->access$1700()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 6980
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/DevicePolicyManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 6981
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 6984
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 6985
    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 6988
    if-eqz p1, :cond_0

    # getter for: Lcom/android/server/DevicePolicyManagerService;->CONTENT_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/DevicePolicyManagerService;->access$1700()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6989
    :cond_0
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService$SettingsObserver;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 6990
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService$SettingsObserver;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v2, "SAHK_UHomeKey"

    invoke-direct {p0, v0, v2}, Lcom/android/server/DevicePolicyManagerService$SettingsObserver;->getValue(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    # setter for: Lcom/android/server/DevicePolicyManagerService;->mIsHomeKeyEnable:Z
    invoke-static {v1, v2}, Lcom/android/server/DevicePolicyManagerService;->access$1802(Lcom/android/server/DevicePolicyManagerService;Z)Z

    .line 6991
    const-string v1, "DevicePolicyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getValue] update() mIsHomeKeyEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService$SettingsObserver;->this$0:Lcom/android/server/DevicePolicyManagerService;

    # getter for: Lcom/android/server/DevicePolicyManagerService;->mIsHomeKeyEnable:Z
    invoke-static {v3}, Lcom/android/server/DevicePolicyManagerService;->access$1800(Lcom/android/server/DevicePolicyManagerService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6993
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    return-void
.end method
