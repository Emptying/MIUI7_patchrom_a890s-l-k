.class Lcom/android/internal/policy/impl/PhoneWindowManager$43;
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
    .line 8255
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$43;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 8258
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 8265
    :goto_0
    return-void

    .line 8261
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_0

    .line 8262
    .local v0, "changed":Z
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$43;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->beginPenOption(Z)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3700(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V

    goto :goto_0

    .line 8261
    .end local v0    # "changed":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 8258
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method
