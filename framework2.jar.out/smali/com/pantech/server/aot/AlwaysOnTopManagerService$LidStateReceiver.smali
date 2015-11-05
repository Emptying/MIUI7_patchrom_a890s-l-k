.class Lcom/pantech/server/aot/AlwaysOnTopManagerService$LidStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlwaysOnTopManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/server/aot/AlwaysOnTopManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LidStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;


# direct methods
.method constructor <init>(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$LidStateReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 295
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.LID_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    const-string v1, "value"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 302
    .local v0, "value":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$LidStateReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-virtual {v1}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->moveAOTFrame()V

    .line 304
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$LidStateReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-virtual {v1}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->skipAOTWindow()V

    .line 312
    .end local v0    # "value":Ljava/lang/Boolean;
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.pantech.intent.action.FINGER_KEY_DOUBLE_PRESS_LCD_OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    const-string v1, "AlwaysOnTopManagerService"

    const-string v2, "Received > ACTION_FINGER_KEY_DOUBLE_PRESS_LCD_OFF intent. > goToSleep()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$LidStateReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v1, v1, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->powerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    goto :goto_0
.end method
