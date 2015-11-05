.class Lcom/crucialtec/biometric/FingerprintHandler$VerifyTask;
.super Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;
.source "FingerprintHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crucialtec/biometric/FingerprintHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VerifyTask"
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
    .line 1094
    iput-object p1, p0, Lcom/crucialtec/biometric/FingerprintHandler$VerifyTask;->this$0:Lcom/crucialtec/biometric/FingerprintHandler;

    .line 1095
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;-><init>(Lcom/crucialtec/biometric/FingerprintHandler;Lcom/crucialtec/biometric/FingerprintHandler$CommonEventListener;ILandroid/graphics/Bitmap;)V

    .line 1097
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/crucialtec/biometric/FingerprintHandler$VerifyTask;->this$0:Lcom/crucialtec/biometric/FingerprintHandler;

    # getter for: Lcom/crucialtec/biometric/FingerprintHandler;->hasDevice:Z
    invoke-static {v0}, Lcom/crucialtec/biometric/FingerprintHandler;->access$300(Lcom/crucialtec/biometric/FingerprintHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/crucialtec/biometric/FingerprintHandler$VerifyTask;->this$0:Lcom/crucialtec/biometric/FingerprintHandler;

    const/4 v1, 0x0

    # invokes: Lcom/crucialtec/biometric/FingerprintHandler;->SetShouldExit(Z)V
    invoke-static {v0, v1}, Lcom/crucialtec/biometric/FingerprintHandler;->access$200(Lcom/crucialtec/biometric/FingerprintHandler;Z)V

    .line 1115
    iget-object v0, p0, Lcom/crucialtec/biometric/FingerprintHandler$VerifyTask;->this$0:Lcom/crucialtec/biometric/FingerprintHandler;

    iget v1, p0, Lcom/crucialtec/biometric/FingerprintHandler$VerifyTask;->timeout:I

    iget-object v2, p0, Lcom/crucialtec/biometric/FingerprintHandler$VerifyTask;->captureBitmap:Landroid/graphics/Bitmap;

    # invokes: Lcom/crucialtec/biometric/FingerprintHandler;->Verify(ILandroid/graphics/Bitmap;Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;)I
    invoke-static {v0, v1, v2, p0}, Lcom/crucialtec/biometric/FingerprintHandler;->access$500(Lcom/crucialtec/biometric/FingerprintHandler;ILandroid/graphics/Bitmap;Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1183
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
    .line 1092
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/crucialtec/biometric/FingerprintHandler$VerifyTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/crucialtec/biometric/FingerprintHandler$VerifyTask;->this$0:Lcom/crucialtec/biometric/FingerprintHandler;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/crucialtec/biometric/FingerprintHandler;->requester:Lcom/crucialtec/biometric/FingerprintHandler$Requester;

    .line 1189
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/crucialtec/biometric/FingerprintHandler$VerifyTask;->toResult(I)Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/crucialtec/biometric/FingerprintHandler$VerifyTask;->publishProgress([Ljava/lang/Object;)V

    .line 1190
    invoke-super {p0, p1}, Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1191
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1092
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/crucialtec/biometric/FingerprintHandler$VerifyTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 3
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    .line 1101
    invoke-virtual {p0}, Lcom/crucialtec/biometric/FingerprintHandler$VerifyTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/crucialtec/biometric/FingerprintHandler$VerifyTask;->eventListener:Lcom/crucialtec/biometric/FingerprintHandler$CommonEventListener;

    if-eqz v0, :cond_0

    .line 1102
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1108
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 1109
    return-void

    .line 1104
    :pswitch_0
    iget-object v0, p0, Lcom/crucialtec/biometric/FingerprintHandler$VerifyTask;->eventListener:Lcom/crucialtec/biometric/FingerprintHandler$CommonEventListener;

    check-cast v0, Lcom/crucialtec/biometric/FingerprintHandler$OnVerifyEventListener;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    const/4 v2, 0x2

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/crucialtec/biometric/FingerprintHandler$OnVerifyEventListener;->OnVerify(Lcom/crucialtec/biometric/FingerprintHandler$RESULT;I)V

    goto :goto_0

    .line 1102
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
