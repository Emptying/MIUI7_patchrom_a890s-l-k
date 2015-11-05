.class Lcom/crucialtec/biometric/FingerprintHandler$SwipeTestTask;
.super Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;
.source "FingerprintHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crucialtec/biometric/FingerprintHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwipeTestTask"
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
    .line 1201
    iput-object p1, p0, Lcom/crucialtec/biometric/FingerprintHandler$SwipeTestTask;->this$0:Lcom/crucialtec/biometric/FingerprintHandler;

    .line 1202
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;-><init>(Lcom/crucialtec/biometric/FingerprintHandler;Lcom/crucialtec/biometric/FingerprintHandler$CommonEventListener;ILandroid/graphics/Bitmap;)V

    .line 1204
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/crucialtec/biometric/FingerprintHandler$SwipeTestTask;->this$0:Lcom/crucialtec/biometric/FingerprintHandler;

    const/4 v1, 0x0

    # invokes: Lcom/crucialtec/biometric/FingerprintHandler;->SetShouldExit(Z)V
    invoke-static {v0, v1}, Lcom/crucialtec/biometric/FingerprintHandler;->access$200(Lcom/crucialtec/biometric/FingerprintHandler;Z)V

    .line 1226
    iget-object v0, p0, Lcom/crucialtec/biometric/FingerprintHandler$SwipeTestTask;->this$0:Lcom/crucialtec/biometric/FingerprintHandler;

    iget v1, p0, Lcom/crucialtec/biometric/FingerprintHandler$SwipeTestTask;->timeout:I

    iget-object v2, p0, Lcom/crucialtec/biometric/FingerprintHandler$SwipeTestTask;->captureBitmap:Landroid/graphics/Bitmap;

    # invokes: Lcom/crucialtec/biometric/FingerprintHandler;->SwipeTest(ILandroid/graphics/Bitmap;Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;)I
    invoke-static {v0, v1, v2, p0}, Lcom/crucialtec/biometric/FingerprintHandler;->access$600(Lcom/crucialtec/biometric/FingerprintHandler;ILandroid/graphics/Bitmap;Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1199
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/crucialtec/biometric/FingerprintHandler$SwipeTestTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 1220
    invoke-super {p0}, Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;->onCancelled()V

    .line 1221
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 1231
    const-string v0, "SwipeTestTask"

    const-string v1, "onPostExecute()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    iget-object v0, p0, Lcom/crucialtec/biometric/FingerprintHandler$SwipeTestTask;->this$0:Lcom/crucialtec/biometric/FingerprintHandler;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/crucialtec/biometric/FingerprintHandler;->requester:Lcom/crucialtec/biometric/FingerprintHandler$Requester;

    .line 1233
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/crucialtec/biometric/FingerprintHandler$SwipeTestTask;->toResult(I)Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/crucialtec/biometric/FingerprintHandler$SwipeTestTask;->publishProgress([Ljava/lang/Object;)V

    .line 1234
    invoke-super {p0, p1}, Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1235
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1199
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/crucialtec/biometric/FingerprintHandler$SwipeTestTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 2
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    .line 1208
    invoke-virtual {p0}, Lcom/crucialtec/biometric/FingerprintHandler$SwipeTestTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/crucialtec/biometric/FingerprintHandler$SwipeTestTask;->eventListener:Lcom/crucialtec/biometric/FingerprintHandler$CommonEventListener;

    if-eqz v0, :cond_0

    .line 1209
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1215
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 1216
    return-void

    .line 1211
    :pswitch_0
    iget-object v0, p0, Lcom/crucialtec/biometric/FingerprintHandler$SwipeTestTask;->eventListener:Lcom/crucialtec/biometric/FingerprintHandler$CommonEventListener;

    check-cast v0, Lcom/crucialtec/biometric/FingerprintHandler$OnSwipeTestEventListener;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    invoke-interface {v0, v1}, Lcom/crucialtec/biometric/FingerprintHandler$OnSwipeTestEventListener;->OnSwipeTest(Lcom/crucialtec/biometric/FingerprintHandler$RESULT;)V

    goto :goto_0

    .line 1209
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method
