.class Landroid/alwaysontopservice/AlwaysOnTopService$5;
.super Ljava/lang/Object;
.source "AlwaysOnTopService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/alwaysontopservice/AlwaysOnTopService;->createListener()V
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
    .line 646
    iput-object p1, p0, Landroid/alwaysontopservice/AlwaysOnTopService$5;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 650
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 652
    .local v0, "action":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v3, v5

    .line 653
    .local v3, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v4, v5

    .line 655
    .local v4, "y":I
    const/4 v1, 0x0

    .line 656
    .local v1, "winX":I
    const/4 v2, 0x0

    .line 657
    .local v2, "winY":I
    packed-switch v0, :pswitch_data_0

    .line 697
    :goto_0
    return v7

    .line 660
    :pswitch_0
    iget-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService$5;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iput v3, v5, Landroid/alwaysontopservice/AlwaysOnTopService;->mMoveX:I

    .line 661
    iget-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService$5;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iput v4, v5, Landroid/alwaysontopservice/AlwaysOnTopService;->mMoveY:I

    goto :goto_0

    .line 666
    :pswitch_1
    iget-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService$5;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iget-boolean v5, v5, Landroid/alwaysontopservice/AlwaysOnTopService;->mTitleMove:Z

    if-nez v5, :cond_0

    .line 667
    iget-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService$5;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iput-boolean v6, v5, Landroid/alwaysontopservice/AlwaysOnTopService;->mTitleMove:Z

    .line 668
    iget-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService$5;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    invoke-virtual {v5}, Landroid/alwaysontopservice/AlwaysOnTopService;->OnTitleMoveStart()V

    .line 671
    :cond_0
    iget-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService$5;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iget v5, v5, Landroid/alwaysontopservice/AlwaysOnTopService;->mMoveX:I

    sub-int v1, v3, v5

    .line 672
    iget-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService$5;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iget v5, v5, Landroid/alwaysontopservice/AlwaysOnTopService;->mMoveY:I

    sub-int v2, v4, v5

    .line 673
    iget-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService$5;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    invoke-virtual {v5, v1, v2, v6}, Landroid/alwaysontopservice/AlwaysOnTopService;->setMoveRect(IIZ)Z

    .line 675
    sget v5, Landroid/alwaysontopservice/AlwaysOnTopService;->windowX:I

    add-int/2addr v5, v1

    sput v5, Landroid/alwaysontopservice/AlwaysOnTopService;->windowX:I

    .line 676
    sget v5, Landroid/alwaysontopservice/AlwaysOnTopService;->windowY:I

    add-int/2addr v5, v2

    sput v5, Landroid/alwaysontopservice/AlwaysOnTopService;->windowY:I

    .line 678
    iget-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService$5;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iput v3, v5, Landroid/alwaysontopservice/AlwaysOnTopService;->mMoveX:I

    .line 679
    iget-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService$5;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iput v4, v5, Landroid/alwaysontopservice/AlwaysOnTopService;->mMoveY:I

    goto :goto_0

    .line 683
    :pswitch_2
    iget-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService$5;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iget-boolean v5, v5, Landroid/alwaysontopservice/AlwaysOnTopService;->mTitleMove:Z

    if-eqz v5, :cond_1

    .line 684
    iget-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService$5;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iput-boolean v7, v5, Landroid/alwaysontopservice/AlwaysOnTopService;->mTitleMove:Z

    .line 685
    iget-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService$5;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    invoke-virtual {v5}, Landroid/alwaysontopservice/AlwaysOnTopService;->OnTitleMoveStop()V

    .line 688
    :cond_1
    iget-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService$5;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iput v7, v5, Landroid/alwaysontopservice/AlwaysOnTopService;->mMoveX:I

    .line 689
    iget-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService$5;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iput v7, v5, Landroid/alwaysontopservice/AlwaysOnTopService;->mMoveY:I

    .line 691
    iget-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService$5;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    # invokes: Landroid/alwaysontopservice/AlwaysOnTopService;->checkFrameSize()Z
    invoke-static {v5}, Landroid/alwaysontopservice/AlwaysOnTopService;->access$000(Landroid/alwaysontopservice/AlwaysOnTopService;)Z

    .line 692
    iget-object v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService$5;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iget-object v5, v5, Landroid/alwaysontopservice/AlwaysOnTopService;->mDevorView:Landroid/view/View;

    sget-object v6, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    invoke-virtual {v5, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    goto :goto_0

    .line 657
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
