.class Lcom/android/server/wm/WindowManagerService$H$1;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService$H;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wm/WindowManagerService$H;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService$H;)V
    .locals 0

    .prologue
    .line 8158
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$H$1;->this$1:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 8161
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H$1;->this$1:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingFocusChange:Z

    .line 8162
    return-void
.end method
