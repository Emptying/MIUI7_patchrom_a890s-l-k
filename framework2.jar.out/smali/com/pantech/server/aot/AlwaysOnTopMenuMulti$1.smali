.class Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$1;
.super Ljava/lang/Object;
.source "AlwaysOnTopMenuMulti.java"

# interfaces
.implements Lcom/pantech/server/aot/menu/AotContainer$ChangedChildViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->initView()V
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
    .line 274
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$1;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangedChildView(I)V
    .locals 4
    .param p1, "childIndex"    # I

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 277
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$1;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    iget v0, v0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->AOT_ITEM_PAGES:I

    packed-switch v0, :pswitch_data_0

    .line 302
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 281
    :pswitch_1
    if-nez p1, :cond_1

    .line 282
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$1;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    # getter for: Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mLeftMoreImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->access$000(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$1;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    # getter for: Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mRightMoreImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->access$100(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 284
    :cond_1
    if-ne p1, v3, :cond_0

    .line 285
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$1;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    # getter for: Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mLeftMoreImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->access$000(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$1;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    # getter for: Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mRightMoreImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->access$100(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 290
    :pswitch_2
    if-nez p1, :cond_2

    .line 291
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$1;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    # getter for: Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mLeftMoreImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->access$000(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$1;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    # getter for: Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mRightMoreImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->access$100(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 293
    :cond_2
    if-ne p1, v3, :cond_3

    .line 294
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$1;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    # getter for: Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mLeftMoreImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->access$000(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$1;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    # getter for: Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mRightMoreImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->access$100(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 297
    :cond_3
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$1;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    # getter for: Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mLeftMoreImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->access$000(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$1;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    # getter for: Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mRightMoreImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->access$100(Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
