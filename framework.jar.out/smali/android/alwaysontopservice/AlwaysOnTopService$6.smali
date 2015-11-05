.class Landroid/alwaysontopservice/AlwaysOnTopService$6;
.super Ljava/lang/Object;
.source "AlwaysOnTopService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 703
    iput-object p1, p0, Landroid/alwaysontopservice/AlwaysOnTopService$6;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 709
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService$6;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    invoke-virtual {v0}, Landroid/alwaysontopservice/AlwaysOnTopService;->requestHideSelf()V

    .line 710
    return-void
.end method
