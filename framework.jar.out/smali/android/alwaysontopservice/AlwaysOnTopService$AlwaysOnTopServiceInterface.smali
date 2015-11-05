.class public Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;
.super Ljava/lang/Object;
.source "AlwaysOnTopService.java"

# interfaces
.implements Landroid/view/alwaysontop/AlwaysOnTopInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/alwaysontopservice/AlwaysOnTopService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlwaysOnTopServiceInterface"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/alwaysontopservice/AlwaysOnTopService;


# direct methods
.method public constructor <init>(Landroid/alwaysontopservice/AlwaysOnTopService;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attachToken(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 211
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iget-object v0, v0, Landroid/alwaysontopservice/AlwaysOnTopService;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iput-object p1, v0, Landroid/alwaysontopservice/AlwaysOnTopService;->mToken:Landroid/os/IBinder;

    .line 213
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iget-object v0, v0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    invoke-virtual {v0, p1}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->setToken(Landroid/os/IBinder;)V

    .line 215
    :cond_0
    return-void
.end method

.method public hideAlwaysOnTop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 188
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    invoke-virtual {v1}, Landroid/alwaysontopservice/AlwaysOnTopService;->isAlwaysOnViewShown()Z

    move-result v0

    .line 189
    .local v0, "wasVis":Z
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iput v2, v1, Landroid/alwaysontopservice/AlwaysOnTopService;->mShowAlwaysOnFlags:I

    .line 190
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iput-boolean v2, v1, Landroid/alwaysontopservice/AlwaysOnTopService;->mShowAlwaysOnRequested:Z

    .line 191
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iput-boolean v2, v1, Landroid/alwaysontopservice/AlwaysOnTopService;->mShowAlwaysOnForced:Z

    .line 192
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    invoke-virtual {v1}, Landroid/alwaysontopservice/AlwaysOnTopService;->hideWindow()V

    .line 193
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iget-object v1, v1, Landroid/alwaysontopservice/AlwaysOnTopService;->mAotm:Landroid/view/alwaysontop/AlwaysOnTopManager;

    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iget-object v2, v2, Landroid/alwaysontopservice/AlwaysOnTopService;->mCurId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/view/alwaysontop/AlwaysOnTopManager;->hideAlwaysOnTop(Ljava/lang/String;)Z

    .line 194
    return-void
.end method

.method public moveAOTFrame()V
    .locals 2

    .prologue
    .line 255
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iget-boolean v0, v0, Landroid/alwaysontopservice/AlwaysOnTopService;->check:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Landroid/alwaysontopservice/AlwaysOnTopService;->check:Z

    .line 257
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iget-boolean v1, v1, Landroid/alwaysontopservice/AlwaysOnTopService;->check:Z

    invoke-virtual {v0, v1}, Landroid/alwaysontopservice/AlwaysOnTopService;->onMoveFrame(Z)V

    .line 258
    return-void

    .line 255
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState()V
    .locals 1

    .prologue
    .line 236
    sget-boolean v0, Landroid/alwaysontopservice/AlwaysOnTopService;->mFinishMiniMode:Z

    if-eqz v0, :cond_0

    .line 238
    const/4 v0, 0x0

    sput-boolean v0, Landroid/alwaysontopservice/AlwaysOnTopService;->mFinishMiniMode:Z

    .line 240
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Landroid/alwaysontopservice/AlwaysOnTopService;->mRestoreMode:Z

    .line 241
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    invoke-virtual {v0}, Landroid/alwaysontopservice/AlwaysOnTopService;->OnRestoreState()V

    .line 242
    return-void
.end method

.method public saveState()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    invoke-virtual {v0}, Landroid/alwaysontopservice/AlwaysOnTopService;->OnSaveState()V

    .line 230
    return-void
.end method

.method public sendMediaStateEvent(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "state"    # I

    .prologue
    .line 221
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    invoke-virtual {v0, p1, p2}, Landroid/alwaysontopservice/AlwaysOnTopService;->OnMediaState(II)V

    .line 222
    return-void
.end method

.method public showAlwaysOnTop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 200
    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    invoke-virtual {v2}, Landroid/alwaysontopservice/AlwaysOnTopService;->isAlwaysOnViewShown()Z

    move-result v1

    .line 201
    .local v1, "wasVis":Z
    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iput v4, v2, Landroid/alwaysontopservice/AlwaysOnTopService;->mShowAlwaysOnFlags:I

    .line 202
    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/alwaysontopservice/AlwaysOnTopService;->showWindow(Z)V

    .line 204
    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iget-object v2, v2, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    invoke-virtual {v2}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 205
    .local v0, "root":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0, v4}, Landroid/view/ViewRootImpl;->setSkipWindow(Z)Z

    .line 207
    :cond_0
    return-void
.end method

.method public skipAOTWindow()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    invoke-virtual {v0}, Landroid/alwaysontopservice/AlwaysOnTopService;->OnSkipWindow()V

    .line 250
    return-void
.end method

.method public visibleAOTFrame(Z)V
    .locals 1
    .param p1, "flipFlag"    # Z

    .prologue
    .line 264
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    invoke-virtual {v0, p1}, Landroid/alwaysontopservice/AlwaysOnTopService;->onVisibleFrame(Z)V

    .line 265
    return-void
.end method
