.class Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$8;
.super Ljava/lang/Object;
.source "AlwaysOnTopMenuMulti.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;
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
    .line 929
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$8;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 932
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$8;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    iget-object v3, v3, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v4, v3, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 933
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    iget-object v5, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$8;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    iget v5, v5, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->ITEM_START_ID:I

    sub-int v1, v3, v5

    .line 935
    .local v1, "viewID":I
    move v2, v1

    .line 936
    .local v2, "which":I
    if-gez v2, :cond_0

    .line 937
    monitor-exit v4

    .line 977
    :goto_0
    return-void

    .line 939
    :cond_0
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$8;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    iget-object v3, v3, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$8;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    iget-object v3, v3, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    array-length v3, v3

    if-gt v3, v2, :cond_2

    .line 940
    :cond_1
    monitor-exit v4

    goto :goto_0

    .line 976
    .end local v1    # "viewID":I
    .end local v2    # "which":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 945
    .restart local v1    # "viewID":I
    .restart local v2    # "which":I
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$8;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    iget-boolean v3, v3, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mIsCalling:Z

    if-ne v3, v6, :cond_4

    .line 946
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$8;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    iget-object v3, v3, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mContext:Landroid/content/Context;

    const v5, 0x10406fb

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 947
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$8;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    iget-object v3, v3, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    if-eqz v3, :cond_3

    .line 948
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$8;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    iget-object v3, v3, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-virtual {v3}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->hideAlwaysOnTopMenu()V

    .line 950
    :cond_3
    monitor-exit v4

    goto :goto_0

    .line 954
    :cond_4
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$8;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    iget-object v3, v3, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    aget-object v0, v3, v2

    .line 955
    .local v0, "aotInfo":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    invoke-virtual {v0}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getEnabled()Z

    move-result v3

    if-nez v3, :cond_6

    .line 957
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$8;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    iget-object v5, v3, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$8;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    iget-object v3, v3, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x104070b

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$8;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    iget-object v3, v3, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$8;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    iget-object v3, v3, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mDockTitleMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    invoke-static {v5, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 961
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$8;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    iget-object v3, v3, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    if-eqz v3, :cond_5

    .line 962
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$8;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    iget-object v3, v3, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-virtual {v3}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->hideAlwaysOnTopMenu()V

    .line 964
    :cond_5
    monitor-exit v4

    goto/16 :goto_0

    .line 971
    :cond_6
    if-eqz v0, :cond_7

    .line 972
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$8;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    iget-object v3, v3, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    if-eqz v3, :cond_7

    .line 973
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti$8;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;

    iget-object v3, v3, Lcom/pantech/server/aot/AlwaysOnTopMenuMulti;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-virtual {v0}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->startAlwaysOnTopEx(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 976
    :cond_7
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
