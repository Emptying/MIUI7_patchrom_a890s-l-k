.class Lcom/android/server/power/ShutdownThread$7;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$ims:Lcom/pantech/framework/ims/util/IImsServiceInterface;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;Lcom/pantech/framework/ims/util/IImsServiceInterface;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$7;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$7;->val$ims:Lcom/pantech/framework/ims/util/IImsServiceInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 442
    :try_start_0
    # getter for: Lcom/android/server/power/ShutdownThread;->mUserTriggeredPowerOff:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 443
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$7;->val$ims:Lcom/pantech/framework/ims/util/IImsServiceInterface;

    const/16 v2, 0x65

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/pantech/framework/ims/util/IImsServiceInterface;->setByeReasonCode(IZ)I

    .line 447
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$7;->val$ims:Lcom/pantech/framework/ims/util/IImsServiceInterface;

    invoke-interface {v1}, Lcom/pantech/framework/ims/util/IImsServiceInterface;->unregister()I

    .line 453
    :goto_1
    return-void

    .line 445
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$7;->val$ims:Lcom/pantech/framework/ims/util/IImsServiceInterface;

    const/16 v2, 0x6a

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/pantech/framework/ims/util/IImsServiceInterface;->setByeReasonCode(IZ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 449
    :catch_0
    move-exception v0

    .line 451
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IMS"

    const-string v2, "(ShutdownThread) VT unregister Exception occur"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
