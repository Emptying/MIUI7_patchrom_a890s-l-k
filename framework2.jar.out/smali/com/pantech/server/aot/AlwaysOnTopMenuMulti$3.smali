.class Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$3;
.super Ljava/lang/Object;
.source "AlwaysOnTopMenuMulti.java"

# interfaces
.implements Lcom/pantech/server/aot/menu/AotContainer$ChangedChildViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->initWindow_Old()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;


# direct methods
.method constructor <init>(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangedChildView(I)V
    .locals 3
    .param p1, "childIndex"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 456
    if-nez p1, :cond_0

    .line 457
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    # getter for: Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mLeftMoreImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->access$000(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 458
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    # getter for: Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mRightMoreImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->access$100(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 466
    :goto_0
    return-void

    .line 459
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    # getter for: Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mLeftMoreImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->access$000(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    # getter for: Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mRightMoreImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->access$100(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    # getter for: Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mLeftMoreImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->access$000(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 464
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    # getter for: Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mRightMoreImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->access$100(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
