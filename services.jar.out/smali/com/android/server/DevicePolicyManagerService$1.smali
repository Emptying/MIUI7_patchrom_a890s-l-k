.class Lcom/android/server/DevicePolicyManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DevicePolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/DevicePolicyManagerService;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/server/DevicePolicyManagerService$1;->this$0:Lcom/android/server/DevicePolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 282
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p0}, Lcom/android/server/DevicePolicyManagerService$1;->getSendingUserId()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 285
    .local v1, "userHandle":I
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 289
    :cond_0
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService$1;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/DevicePolicyManagerService$1$1;

    invoke-direct {v3, p0, v1}, Lcom/android/server/DevicePolicyManagerService$1$1;-><init>(Lcom/android/server/DevicePolicyManagerService$1;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 295
    :cond_1
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.security.STORAGE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 297
    :cond_2
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService$1;->this$0:Lcom/android/server/DevicePolicyManagerService;

    # invokes: Lcom/android/server/DevicePolicyManagerService;->manageMonitoringCertificateNotification(Landroid/content/Intent;)V
    invoke-static {v2, p2}, Lcom/android/server/DevicePolicyManagerService;->access$100(Lcom/android/server/DevicePolicyManagerService;Landroid/content/Intent;)V

    .line 299
    :cond_3
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 300
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService$1;->this$0:Lcom/android/server/DevicePolicyManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/DevicePolicyManagerService;->removeUserData(I)V

    .line 318
    :cond_4
    :goto_0
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 319
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService$1;->this$0:Lcom/android/server/DevicePolicyManagerService;

    # getter for: Lcom/android/server/DevicePolicyManagerService;->mHomeKeySettingsObserver:Lcom/android/server/DevicePolicyManagerService$SettingsObserver;
    invoke-static {v2}, Lcom/android/server/DevicePolicyManagerService;->access$300(Lcom/android/server/DevicePolicyManagerService;)Lcom/android/server/DevicePolicyManagerService$SettingsObserver;

    move-result-object v2

    if-nez v2, :cond_5

    .line 320
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService$1;->this$0:Lcom/android/server/DevicePolicyManagerService;

    new-instance v3, Lcom/android/server/DevicePolicyManagerService$SettingsObserver;

    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService$1;->this$0:Lcom/android/server/DevicePolicyManagerService;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, v4, v5}, Lcom/android/server/DevicePolicyManagerService$SettingsObserver;-><init>(Lcom/android/server/DevicePolicyManagerService;Landroid/os/Handler;)V

    # setter for: Lcom/android/server/DevicePolicyManagerService;->mHomeKeySettingsObserver:Lcom/android/server/DevicePolicyManagerService$SettingsObserver;
    invoke-static {v2, v3}, Lcom/android/server/DevicePolicyManagerService;->access$302(Lcom/android/server/DevicePolicyManagerService;Lcom/android/server/DevicePolicyManagerService$SettingsObserver;)Lcom/android/server/DevicePolicyManagerService$SettingsObserver;

    .line 321
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService$1;->this$0:Lcom/android/server/DevicePolicyManagerService;

    # getter for: Lcom/android/server/DevicePolicyManagerService;->mHomeKeySettingsObserver:Lcom/android/server/DevicePolicyManagerService$SettingsObserver;
    invoke-static {v2}, Lcom/android/server/DevicePolicyManagerService;->access$300(Lcom/android/server/DevicePolicyManagerService;)Lcom/android/server/DevicePolicyManagerService$SettingsObserver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/DevicePolicyManagerService$SettingsObserver;->observe()V

    .line 325
    :cond_5
    return-void

    .line 301
    :cond_6
    const-string v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 306
    :cond_7
    const-string v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 308
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService$1;->this$0:Lcom/android/server/DevicePolicyManagerService;

    monitor-enter v3

    .line 309
    :try_start_0
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService$1;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 310
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :cond_8
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService$1;->this$0:Lcom/android/server/DevicePolicyManagerService;

    # invokes: Lcom/android/server/DevicePolicyManagerService;->handlePackagesChanged(I)V
    invoke-static {v2, v1}, Lcom/android/server/DevicePolicyManagerService;->access$200(Lcom/android/server/DevicePolicyManagerService;I)V

    goto :goto_0

    .line 310
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
