.class Lcom/android/internal/policy/impl/PhoneWindowManager$3$1;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$3;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$3;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$3;)V
    .locals 0

    .prologue
    .line 843
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$3$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 845
    const/4 v0, 0x1

    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mPenCoverVCapture:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$902(Z)Z

    .line 846
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$3$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$3;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->takeScreenshot()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1000(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 847
    return-void
.end method
