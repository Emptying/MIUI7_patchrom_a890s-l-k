.class Lcom/android/internal/telephony/gsm/SkyOtaSubs$1;
.super Landroid/content/BroadcastReceiver;
.source "SkyOtaSubs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/SkyOtaSubs;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/SkyOtaSubs;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/SkyOtaSubs;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SkyOtaSubs$1;->this$0:Lcom/android/internal/telephony/gsm/SkyOtaSubs;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "action":Ljava/lang/String;
    # getter for: Lcom/android/internal/telephony/gsm/SkyOtaSubs;->map:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/internal/telephony/gsm/SkyOtaSubs;->access$000()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 70
    .local v2, "what":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SkyOtaSubs$1;->this$0:Lcom/android/internal/telephony/gsm/SkyOtaSubs;

    # getter for: Lcom/android/internal/telephony/gsm/SkyOtaSubs;->mH:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/SkyOtaSubs;->access$100(Lcom/android/internal/telephony/gsm/SkyOtaSubs;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 72
    const-string v3, "SKY OTA SUBS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Received"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SkyOtaSubs$1;->this$0:Lcom/android/internal/telephony/gsm/SkyOtaSubs;

    # getter for: Lcom/android/internal/telephony/gsm/SkyOtaSubs;->mH:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/SkyOtaSubs;->access$100(Lcom/android/internal/telephony/gsm/SkyOtaSubs;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 74
    .local v1, "msg":Landroid/os/Message;
    const-string v3, "data"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 75
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 77
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
