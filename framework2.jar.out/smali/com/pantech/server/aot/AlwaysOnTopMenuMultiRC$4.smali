.class Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC$4;
.super Ljava/lang/Object;
.source "AlwaysOnTopMenuMultiRC.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;


# direct methods
.method constructor <init>(Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;)V
    .locals 0

    .prologue
    .line 655
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC$4;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    .line 658
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC$4;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;

    iget-object v6, v6, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v6, v6, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 659
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC$4;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;

    iget v8, v8, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->ITEM_START_ID:I

    sub-int v3, v7, v8

    .line 661
    .local v3, "viewID":I
    move v4, v3

    .line 662
    .local v4, "which":I
    if-gez v4, :cond_0

    .line 663
    monitor-exit v6

    .line 709
    :goto_0
    return-void

    .line 665
    :cond_0
    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC$4;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;

    iget-object v7, v7, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC$4;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;

    iget-object v7, v7, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    array-length v7, v7

    if-gt v7, v4, :cond_2

    .line 666
    :cond_1
    monitor-exit v6

    goto :goto_0

    .line 708
    .end local v3    # "viewID":I
    .end local v4    # "which":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 671
    .restart local v3    # "viewID":I
    .restart local v4    # "which":I
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC$4;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;

    iget-boolean v7, v7, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mIsCalling:Z

    if-ne v7, v0, :cond_4

    .line 672
    iget-object v5, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC$4;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;

    iget-object v5, v5, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mContext:Landroid/content/Context;

    const v7, 0x10406fb

    const/4 v8, 0x1

    invoke-static {v5, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 673
    iget-object v5, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC$4;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;

    iget-object v5, v5, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    if-eqz v5, :cond_3

    .line 674
    iget-object v5, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC$4;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;

    iget-object v5, v5, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-virtual {v5}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->hideAlwaysOnTopMenu()V

    .line 676
    :cond_3
    monitor-exit v6

    goto :goto_0

    .line 680
    :cond_4
    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC$4;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;

    iget-object v7, v7, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    aget-object v1, v7, v4

    .line 681
    .local v1, "aotInfo":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    invoke-virtual {v1}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getEnabled()Z

    move-result v7

    if-nez v7, :cond_6

    .line 683
    iget-object v5, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC$4;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;

    iget-object v7, v5, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC$4;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;

    iget-object v5, v5, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x104070b

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v5, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC$4;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;

    iget-object v5, v5, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget-object v5, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC$4;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;

    iget-object v5, v5, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mDockTitleMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v11, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    invoke-static {v7, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 687
    iget-object v5, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC$4;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;

    iget-object v5, v5, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    if-eqz v5, :cond_5

    .line 688
    iget-object v5, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC$4;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;

    iget-object v5, v5, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-virtual {v5}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->hideAlwaysOnTopMenu()V

    .line 690
    :cond_5
    monitor-exit v6

    goto/16 :goto_0

    .line 697
    :cond_6
    if-eqz v1, :cond_7

    .line 698
    const-string v7, "persist.launcher2.aotfolder"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_8

    .line 699
    .local v0, "aotFolderExist":Z
    :goto_1
    invoke-virtual {v1}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 700
    .local v2, "id":Ljava/lang/String;
    const-string v5, "com.pantech.app.aotfolder/.AOTFolder"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    if-nez v0, :cond_9

    .line 701
    iget-object v5, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC$4;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;

    invoke-virtual {v5}, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->initWindow()V

    .line 708
    .end local v0    # "aotFolderExist":Z
    .end local v2    # "id":Ljava/lang/String;
    :cond_7
    :goto_2
    monitor-exit v6

    goto/16 :goto_0

    :cond_8
    move v0, v5

    .line 698
    goto :goto_1

    .line 703
    .restart local v0    # "aotFolderExist":Z
    .restart local v2    # "id":Ljava/lang/String;
    :cond_9
    iget-object v5, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC$4;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;

    iget-object v5, v5, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    if-eqz v5, :cond_7

    .line 704
    iget-object v5, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC$4;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;

    iget-object v5, v5, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;->mAotmService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-virtual {v1}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->startAlwaysOnTopEx(Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method
