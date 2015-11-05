.class Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC$3;
.super Ljava/lang/Object;
.source "AlwaysOnTopMenuMultiRC.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 445
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopMenuMultiRC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 449
    const/4 v0, 0x1

    return v0
.end method
