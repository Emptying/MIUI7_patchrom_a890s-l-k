.class Landroid/media/ConfirmRecord$1;
.super Landroid/os/FileObserver;
.source "ConfirmRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ConfirmRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/ConfirmRecord;


# direct methods
.method constructor <init>(Landroid/media/ConfirmRecord;Ljava/lang/String;I)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # I

    .prologue
    .line 56
    iput-object p1, p0, Landroid/media/ConfirmRecord$1;->this$0:Landroid/media/ConfirmRecord;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 58
    packed-switch p1, :pswitch_data_0

    .line 68
    :goto_0
    return-void

    .line 61
    :pswitch_0
    iget-object v0, p0, Landroid/media/ConfirmRecord$1;->this$0:Landroid/media/ConfirmRecord;

    iget-object v1, p0, Landroid/media/ConfirmRecord$1;->this$0:Landroid/media/ConfirmRecord;

    const-string v2, "/proc/lvs_state"

    invoke-virtual {v1, v2}, Landroid/media/ConfirmRecord;->readProc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Landroid/media/ConfirmRecord;->mLocalVoiceSearchState:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/media/ConfirmRecord;->access$002(Landroid/media/ConfirmRecord;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    iget-object v0, p0, Landroid/media/ConfirmRecord$1;->this$0:Landroid/media/ConfirmRecord;

    # getter for: Landroid/media/ConfirmRecord;->TAG:Ljava/lang/String;
    invoke-static {v0}, Landroid/media/ConfirmRecord;->access$100(Landroid/media/ConfirmRecord;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/lvs_state was changed.(CLOSE_WRITE), state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/ConfirmRecord$1;->this$0:Landroid/media/ConfirmRecord;

    # getter for: Landroid/media/ConfirmRecord;->mLocalVoiceSearchState:Ljava/lang/String;
    invoke-static {v2}, Landroid/media/ConfirmRecord;->access$000(Landroid/media/ConfirmRecord;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method
