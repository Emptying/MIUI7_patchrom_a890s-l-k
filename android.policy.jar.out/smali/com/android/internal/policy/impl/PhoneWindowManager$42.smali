.class Lcom/android/internal/policy/impl/PhoneWindowManager$42;
.super Landroid/os/Handler;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 8214
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$42;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 8217
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 8252
    :goto_0
    return-void

    .line 8221
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    .line 8222
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$42;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelNotification(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3100(Lcom/android/internal/policy/impl/PhoneWindowManager;ZZ)V

    .line 8226
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$42;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->cancel10HoursTimer()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3200(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    goto :goto_0

    .line 8224
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$42;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelNotification(ZZ)V
    invoke-static {v0, v2, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3100(Lcom/android/internal/policy/impl/PhoneWindowManager;ZZ)V

    goto :goto_1

    .line 8231
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1

    .line 8233
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$42;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->sendNotification(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3300(Lcom/android/internal/policy/impl/PhoneWindowManager;ZZ)V

    .line 8239
    :goto_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$42;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->set10HoursTimer()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3500(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    goto :goto_0

    .line 8235
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$42;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->sendNotification(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3300(Lcom/android/internal/policy/impl/PhoneWindowManager;ZZ)V

    .line 8237
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$42;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->playPenEjectNotificationSound()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3400(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    goto :goto_2

    .line 8244
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$42;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->sendNotification(ZZ)V
    invoke-static {v0, v2, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3300(Lcom/android/internal/policy/impl/PhoneWindowManager;ZZ)V

    goto :goto_0

    .line 8249
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$42;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->playNotificationSoundVibrate(Ljava/lang/String;[J)V
    invoke-static {v0, v3, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3600(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/String;[J)V

    goto :goto_0

    .line 8217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
