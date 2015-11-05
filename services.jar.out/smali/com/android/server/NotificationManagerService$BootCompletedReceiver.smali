.class final Lcom/android/server/NotificationManagerService$BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BootCompletedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .locals 0

    .prologue
    .line 3153
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$BootCompletedReceiver;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/NotificationManagerService;
    .param p2, "x1"    # Lcom/android/server/NotificationManagerService$1;

    .prologue
    .line 3153
    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService$BootCompletedReceiver;-><init>(Lcom/android/server/NotificationManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3156
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$BootCompletedReceiver;->this$0:Lcom/android/server/NotificationManagerService;

    new-instance v1, Lcom/android/server/NotificationManagerService$LocalVoiceSettingObserver;

    iget-object v2, p0, Lcom/android/server/NotificationManagerService$BootCompletedReceiver;->this$0:Lcom/android/server/NotificationManagerService;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/server/NotificationManagerService$LocalVoiceSettingObserver;-><init>(Lcom/android/server/NotificationManagerService;Landroid/os/Handler;)V

    # setter for: Lcom/android/server/NotificationManagerService;->mLocalVoiceSettingObserver:Lcom/android/server/NotificationManagerService$LocalVoiceSettingObserver;
    invoke-static {v0, v1}, Lcom/android/server/NotificationManagerService;->access$4602(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$LocalVoiceSettingObserver;)Lcom/android/server/NotificationManagerService$LocalVoiceSettingObserver;

    .line 3157
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$BootCompletedReceiver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mLocalVoiceSettingObserver:Lcom/android/server/NotificationManagerService$LocalVoiceSettingObserver;
    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$4600(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$LocalVoiceSettingObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NotificationManagerService$LocalVoiceSettingObserver;->observe()V

    .line 3161
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$BootCompletedReceiver;->this$0:Lcom/android/server/NotificationManagerService;

    new-instance v1, Lcom/android/server/NotificationManagerService$LedSettingObserver;

    iget-object v2, p0, Lcom/android/server/NotificationManagerService$BootCompletedReceiver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v3, p0, Lcom/android/server/NotificationManagerService$BootCompletedReceiver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$4800(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$WorkerHandler;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/NotificationManagerService$LedSettingObserver;-><init>(Lcom/android/server/NotificationManagerService;Landroid/os/Handler;)V

    # setter for: Lcom/android/server/NotificationManagerService;->mLedSettingObserver:Lcom/android/server/NotificationManagerService$LedSettingObserver;
    invoke-static {v0, v1}, Lcom/android/server/NotificationManagerService;->access$4702(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$LedSettingObserver;)Lcom/android/server/NotificationManagerService$LedSettingObserver;

    .line 3162
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$BootCompletedReceiver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mLedSettingObserver:Lcom/android/server/NotificationManagerService$LedSettingObserver;
    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$4700(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$LedSettingObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NotificationManagerService$LedSettingObserver;->observe()V

    .line 3165
    return-void
.end method
