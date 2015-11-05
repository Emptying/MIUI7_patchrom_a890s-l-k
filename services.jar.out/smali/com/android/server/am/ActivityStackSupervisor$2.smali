.class Lcom/android/server/am/ActivityStackSupervisor$2;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;)V
    .locals 0

    .prologue
    .line 2926
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$2;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 2928
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$2;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {p2}, Lcom/pantech/app/appprotection/IApplockService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/pantech/app/appprotection/IApplockService;

    move-result-object v1

    # setter for: Lcom/android/server/am/ActivityStackSupervisor;->mApplockService:Lcom/pantech/app/appprotection/IApplockService;
    invoke-static {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->access$002(Lcom/android/server/am/ActivityStackSupervisor;Lcom/pantech/app/appprotection/IApplockService;)Lcom/pantech/app/appprotection/IApplockService;

    .line 2930
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 2932
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$2;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/am/ActivityStackSupervisor;->mApplockService:Lcom/pantech/app/appprotection/IApplockService;
    invoke-static {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->access$002(Lcom/android/server/am/ActivityStackSupervisor;Lcom/pantech/app/appprotection/IApplockService;)Lcom/pantech/app/appprotection/IApplockService;

    .line 2934
    return-void
.end method
