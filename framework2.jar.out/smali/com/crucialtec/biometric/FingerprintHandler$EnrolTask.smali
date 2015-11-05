.class Lcom/crucialtec/biometric/FingerprintHandler$EnrolTask;
.super Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;
.source "FingerprintHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crucialtec/biometric/FingerprintHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnrolTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crucialtec/biometric/FingerprintHandler;


# direct methods
.method constructor <init>(Lcom/crucialtec/biometric/FingerprintHandler;Lcom/crucialtec/biometric/FingerprintHandler$CommonEventListener;ILandroid/graphics/Bitmap;)V
    .locals 0
    .param p2, "eventListener"    # Lcom/crucialtec/biometric/FingerprintHandler$CommonEventListener;
    .param p3, "timeout"    # I
    .param p4, "captureBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 988
    iput-object p1, p0, Lcom/crucialtec/biometric/FingerprintHandler$EnrolTask;->this$0:Lcom/crucialtec/biometric/FingerprintHandler;

    .line 989
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;-><init>(Lcom/crucialtec/biometric/FingerprintHandler;Lcom/crucialtec/biometric/FingerprintHandler$CommonEventListener;ILandroid/graphics/Bitmap;)V

    .line 991
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v1, 0x0

    .line 1016
    iget-object v0, p0, Lcom/crucialtec/biometric/FingerprintHandler$EnrolTask;->this$0:Lcom/crucialtec/biometric/FingerprintHandler;

    # getter for: Lcom/crucialtec/biometric/FingerprintHandler;->hasDevice:Z
    invoke-static {v0}, Lcom/crucialtec/biometric/FingerprintHandler;->access$300(Lcom/crucialtec/biometric/FingerprintHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/crucialtec/biometric/FingerprintHandler$EnrolTask;->this$0:Lcom/crucialtec/biometric/FingerprintHandler;

    # invokes: Lcom/crucialtec/biometric/FingerprintHandler;->SetShouldExit(Z)V
    invoke-static {v0, v1}, Lcom/crucialtec/biometric/FingerprintHandler;->access$200(Lcom/crucialtec/biometric/FingerprintHandler;Z)V

    .line 1018
    iget-object v0, p0, Lcom/crucialtec/biometric/FingerprintHandler$EnrolTask;->this$0:Lcom/crucialtec/biometric/FingerprintHandler;

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/crucialtec/biometric/FingerprintHandler$EnrolTask;->timeout:I

    iget-object v4, p0, Lcom/crucialtec/biometric/FingerprintHandler$EnrolTask;->captureBitmap:Landroid/graphics/Bitmap;

    move-object v5, p0

    # invokes: Lcom/crucialtec/biometric/FingerprintHandler;->Enrol(IIILandroid/graphics/Bitmap;Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;)I
    invoke-static/range {v0 .. v5}, Lcom/crucialtec/biometric/FingerprintHandler;->access$400(Lcom/crucialtec/biometric/FingerprintHandler;IIILandroid/graphics/Bitmap;Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1076
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 986
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/crucialtec/biometric/FingerprintHandler$EnrolTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 1011
    invoke-super {p0}, Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;->onCancelled()V

    .line 1012
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 1081
    const-string v0, "EnrolTask"

    const-string v1, "onPostExecute()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    iget-object v0, p0, Lcom/crucialtec/biometric/FingerprintHandler$EnrolTask;->this$0:Lcom/crucialtec/biometric/FingerprintHandler;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/crucialtec/biometric/FingerprintHandler;->requester:Lcom/crucialtec/biometric/FingerprintHandler$Requester;

    .line 1083
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/crucialtec/biometric/FingerprintHandler$EnrolTask;->toResult(I)Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/crucialtec/biometric/FingerprintHandler$EnrolTask;->publishProgress([Ljava/lang/Object;)V

    .line 1084
    invoke-super {p0, p1}, Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1085
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 986
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/crucialtec/biometric/FingerprintHandler$EnrolTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 2
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    .line 995
    invoke-virtual {p0}, Lcom/crucialtec/biometric/FingerprintHandler$EnrolTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/crucialtec/biometric/FingerprintHandler$EnrolTask;->eventListener:Lcom/crucialtec/biometric/FingerprintHandler$CommonEventListener;

    if-eqz v0, :cond_0

    .line 996
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1002
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 1003
    return-void

    .line 998
    :pswitch_0
    iget-object v0, p0, Lcom/crucialtec/biometric/FingerprintHandler$EnrolTask;->eventListener:Lcom/crucialtec/biometric/FingerprintHandler$CommonEventListener;

    check-cast v0, Lcom/crucialtec/biometric/FingerprintHandler$OnEnrolEventListener;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    invoke-interface {v0, v1}, Lcom/crucialtec/biometric/FingerprintHandler$OnEnrolEventListener;->OnEnrol(Lcom/crucialtec/biometric/FingerprintHandler$RESULT;)V

    goto :goto_0

    .line 996
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
