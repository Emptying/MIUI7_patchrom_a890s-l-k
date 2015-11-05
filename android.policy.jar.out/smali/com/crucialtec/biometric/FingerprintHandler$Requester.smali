.class public Lcom/crucialtec/biometric/FingerprintHandler$Requester;
.super Ljava/lang/Object;
.source "FingerprintHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crucialtec/biometric/FingerprintHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Requester"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crucialtec/biometric/FingerprintHandler;

.field final workTask:Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;


# direct methods
.method constructor <init>(Lcom/crucialtec/biometric/FingerprintHandler;Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;)V
    .locals 0
    .param p2, "workTask"    # Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;

    .prologue
    .line 799
    iput-object p1, p0, Lcom/crucialtec/biometric/FingerprintHandler$Requester;->this$0:Lcom/crucialtec/biometric/FingerprintHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 800
    iput-object p2, p0, Lcom/crucialtec/biometric/FingerprintHandler$Requester;->workTask:Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;

    .line 801
    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 808
    const-string v1, "Requester"

    const-string v2, "cancel()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object v1, p0, Lcom/crucialtec/biometric/FingerprintHandler$Requester;->this$0:Lcom/crucialtec/biometric/FingerprintHandler;

    # invokes: Lcom/crucialtec/biometric/FingerprintHandler;->SetShouldExit(Z)V
    invoke-static {v1, v0}, Lcom/crucialtec/biometric/FingerprintHandler;->access$200(Lcom/crucialtec/biometric/FingerprintHandler;Z)V

    .line 811
    iget-object v1, p0, Lcom/crucialtec/biometric/FingerprintHandler$Requester;->this$0:Lcom/crucialtec/biometric/FingerprintHandler;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/crucialtec/biometric/FingerprintHandler;->requester:Lcom/crucialtec/biometric/FingerprintHandler$Requester;

    .line 813
    iget-object v1, p0, Lcom/crucialtec/biometric/FingerprintHandler$Requester;->workTask:Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/crucialtec/biometric/FingerprintHandler$Requester;->workTask:Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;

    invoke-virtual {v1}, Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 815
    iget-object v1, p0, Lcom/crucialtec/biometric/FingerprintHandler$Requester;->workTask:Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;

    invoke-virtual {v1, v0}, Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;->cancel(Z)Z

    move-result v0

    .line 817
    :cond_0
    return v0
.end method
