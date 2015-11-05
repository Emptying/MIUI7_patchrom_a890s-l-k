.class Landroid/alwaysontopservice/AlwaysOnTopService$2;
.super Ljava/lang/Object;
.source "AlwaysOnTopService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/alwaysontopservice/AlwaysOnTopService;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/alwaysontopservice/AlwaysOnTopService;


# direct methods
.method constructor <init>(Landroid/alwaysontopservice/AlwaysOnTopService;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Landroid/alwaysontopservice/AlwaysOnTopService$2;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 384
    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService$2;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    # invokes: Landroid/alwaysontopservice/AlwaysOnTopService;->checkFrameSize()Z
    invoke-static {v2}, Landroid/alwaysontopservice/AlwaysOnTopService;->access$000(Landroid/alwaysontopservice/AlwaysOnTopService;)Z

    .line 386
    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService$2;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    # invokes: Landroid/alwaysontopservice/AlwaysOnTopService;->resetPosition()V
    invoke-static {v2}, Landroid/alwaysontopservice/AlwaysOnTopService;->access$100(Landroid/alwaysontopservice/AlwaysOnTopService;)V

    .line 391
    sget-object v2, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v2, v2, v4

    sget-object v3, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aget v3, v3, v4

    sub-int v0, v2, v3

    .line 392
    .local v0, "moveX":I
    sget-object v2, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v2, v2, v5

    sget-object v3, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aget v3, v3, v5

    sub-int v1, v2, v3

    .line 393
    .local v1, "moveY":I
    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService$2;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    invoke-virtual {v2, v0, v1, v4}, Landroid/alwaysontopservice/AlwaysOnTopService;->setMoveRect(IIZ)Z

    .line 394
    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService$2;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iget-boolean v2, v2, Landroid/alwaysontopservice/AlwaysOnTopService;->aotMayMove:Z

    if-eqz v2, :cond_0

    .line 395
    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService$2;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iput-boolean v4, v2, Landroid/alwaysontopservice/AlwaysOnTopService;->aotMayMove:Z

    .line 396
    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService$2;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    # invokes: Landroid/alwaysontopservice/AlwaysOnTopService;->moveFrame()V
    invoke-static {v2}, Landroid/alwaysontopservice/AlwaysOnTopService;->access$200(Landroid/alwaysontopservice/AlwaysOnTopService;)V

    .line 399
    :cond_0
    return-void
.end method
