.class Lcom/android/server/LedManagerService$LedManagerHandler;
.super Landroid/os/Handler;
.source "LedManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LedManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LedManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LedManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LedManagerService;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/server/LedManagerService$LedManagerHandler;->this$0:Lcom/android/server/LedManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 141
    const-string v1, "LedManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: msg: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", info: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/pantech/led/LedInfo;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 156
    :goto_0
    return-void

    .line 144
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/LedManagerService$LedManagerHandler;->this$0:Lcom/android/server/LedManagerService;

    # invokes: Lcom/android/server/LedManagerService;->sceduleLedInfo()V
    invoke-static {v0}, Lcom/android/server/LedManagerService;->access$200(Lcom/android/server/LedManagerService;)V

    goto :goto_0

    .line 147
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/LedManagerService$LedManagerHandler;->this$0:Lcom/android/server/LedManagerService;

    # invokes: Lcom/android/server/LedManagerService;->pauseLedEvent()V
    invoke-static {v0}, Lcom/android/server/LedManagerService;->access$300(Lcom/android/server/LedManagerService;)V

    goto :goto_0

    .line 150
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/LedManagerService$LedManagerHandler;->this$0:Lcom/android/server/LedManagerService;

    # invokes: Lcom/android/server/LedManagerService;->checkIfBootAnimationFinished()V
    invoke-static {v0}, Lcom/android/server/LedManagerService;->access$400(Lcom/android/server/LedManagerService;)V

    goto :goto_0

    .line 153
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/LedManagerService$LedManagerHandler;->this$0:Lcom/android/server/LedManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/LedManagerService;->removeEvent(ILandroid/os/IBinder;)V

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
