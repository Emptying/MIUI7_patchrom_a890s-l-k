.class final Lcom/android/server/LedManagerService$BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LedManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LedManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BootCompletedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LedManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/LedManagerService;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/server/LedManagerService$BootCompletedReceiver;->this$0:Lcom/android/server/LedManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LedManagerService;Lcom/android/server/LedManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/LedManagerService;
    .param p2, "x1"    # Lcom/android/server/LedManagerService$1;

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lcom/android/server/LedManagerService$BootCompletedReceiver;-><init>(Lcom/android/server/LedManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/server/LedManagerService$BootCompletedReceiver;->this$0:Lcom/android/server/LedManagerService;

    # invokes: Lcom/android/server/LedManagerService;->startWatchingForBootAnimationFinished()V
    invoke-static {v0}, Lcom/android/server/LedManagerService;->access$900(Lcom/android/server/LedManagerService;)V

    .line 340
    return-void
.end method
