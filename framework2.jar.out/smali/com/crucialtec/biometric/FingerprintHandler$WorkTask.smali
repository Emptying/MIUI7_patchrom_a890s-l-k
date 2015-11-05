.class abstract Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;
.super Landroid/os/AsyncTask;
.source "FingerprintHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crucialtec/biometric/FingerprintHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "WorkTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field static final PUBLISH_CAPTURE_INIT:I = 0x9

.field static final PUBLISH_ENROL:I = 0x5

.field static final PUBLISH_FINGER_LEAVE:I = 0x8

.field static final PUBLISH_FINGER_PRESENT:I = 0x1

.field static final PUBLISH_FINGER_SCANNED:I = 0x3

.field static final PUBLISH_FINGER_SCANNING:I = 0x2

.field static final PUBLISH_PROCESS:I = 0x4

.field static final PUBLISH_SWIPE_TEST:I = 0x7

.field static final PUBLISH_VERIFY:I = 0x6


# instance fields
.field protected captureBitmap:Landroid/graphics/Bitmap;

.field final eventListener:Lcom/crucialtec/biometric/FingerprintHandler$CommonEventListener;

.field final synthetic this$0:Lcom/crucialtec/biometric/FingerprintHandler;

.field protected timeout:I


# direct methods
.method constructor <init>(Lcom/crucialtec/biometric/FingerprintHandler;Lcom/crucialtec/biometric/FingerprintHandler$CommonEventListener;ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p2, "eventListener"    # Lcom/crucialtec/biometric/FingerprintHandler$CommonEventListener;
    .param p3, "timeout"    # I
    .param p4, "captureBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 842
    iput-object p1, p0, Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;->this$0:Lcom/crucialtec/biometric/FingerprintHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 838
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;->captureBitmap:Landroid/graphics/Bitmap;

    .line 839
    const/4 v0, -0x1

    iput v0, p0, Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;->timeout:I

    .line 843
    iput-object p2, p0, Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;->eventListener:Lcom/crucialtec/biometric/FingerprintHandler$CommonEventListener;

    .line 844
    iput p3, p0, Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;->timeout:I

    .line 845
    iput-object p4, p0, Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;->captureBitmap:Landroid/graphics/Bitmap;

    .line 846
    return-void
.end method


# virtual methods
.method protected onCancelled()V
    .locals 2

    .prologue
    .line 871
    const-string v0, "WorkTask"

    const-string v1, "onCancelled()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    iget-object v0, p0, Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;->this$0:Lcom/crucialtec/biometric/FingerprintHandler;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/crucialtec/biometric/FingerprintHandler;->requester:Lcom/crucialtec/biometric/FingerprintHandler$Requester;

    .line 873
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 874
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 861
    iget-object v1, p0, Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;->captureBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 862
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;->captureBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 863
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 866
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 867
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 6
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x2

    .line 878
    invoke-virtual {p0}, Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;->eventListener:Lcom/crucialtec/biometric/FingerprintHandler$CommonEventListener;

    if-eqz v0, :cond_0

    .line 879
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 912
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 913
    return-void

    .line 881
    :pswitch_1
    iget-object v0, p0, Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;->eventListener:Lcom/crucialtec/biometric/FingerprintHandler$CommonEventListener;

    invoke-interface {v0}, Lcom/crucialtec/biometric/FingerprintHandler$CommonEventListener;->OnFingerPresent()V

    goto :goto_0

    .line 884
    :pswitch_2
    array-length v0, p1

    if-le v0, v3, :cond_0

    .line 885
    iget-object v1, p0, Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;->eventListener:Lcom/crucialtec/biometric/FingerprintHandler$CommonEventListener;

    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/crucialtec/biometric/FingerprintHandler$CommonEventListener;->OnFingerScanning(II)V

    goto :goto_0

    .line 890
    :pswitch_3
    array-length v0, p1

    if-le v0, v5, :cond_0

    .line 891
    iget-object v1, p0, Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;->eventListener:Lcom/crucialtec/biometric/FingerprintHandler$CommonEventListener;

    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v0, 0x3

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v0, p1, v5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/crucialtec/biometric/FingerprintHandler$CommonEventListener;->OnFingerScanned(IIII)V

    goto :goto_0

    .line 898
    :pswitch_4
    iget-object v0, p0, Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;->eventListener:Lcom/crucialtec/biometric/FingerprintHandler$CommonEventListener;

    invoke-interface {v0}, Lcom/crucialtec/biometric/FingerprintHandler$CommonEventListener;->OnProcess()V

    goto :goto_0

    .line 901
    :pswitch_5
    iget-object v0, p0, Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;->eventListener:Lcom/crucialtec/biometric/FingerprintHandler$CommonEventListener;

    invoke-interface {v0}, Lcom/crucialtec/biometric/FingerprintHandler$CommonEventListener;->OnFingerLeave()V

    goto :goto_0

    .line 905
    :pswitch_6
    iget-object v0, p0, Lcom/crucialtec/biometric/FingerprintHandler$WorkTask;->eventListener:Lcom/crucialtec/biometric/FingerprintHandler$CommonEventListener;

    invoke-interface {v0}, Lcom/crucialtec/biometric/FingerprintHandler$CommonEventListener;->OnFingerCaptureInit()V

    goto :goto_0

    .line 879
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected toResult(I)Lcom/crucialtec/biometric/FingerprintHandler$RESULT;
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 919
    if-gez p1, :cond_0

    .line 921
    sparse-switch p1, :sswitch_data_0

    .line 974
    sget-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->UNKNOWN_ERROR:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    .line 978
    :goto_0
    return-object v0

    .line 923
    :sswitch_0
    sget-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->IO_EXCEPTION:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    goto :goto_0

    .line 925
    :sswitch_1
    sget-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->OUT_OF_MEMORY:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    goto :goto_0

    .line 927
    :sswitch_2
    sget-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->ENO_SPACE_STORAGE:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    goto :goto_0

    .line 929
    :sswitch_3
    sget-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->REQUEST_TIMEOUT:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    goto :goto_0

    .line 931
    :sswitch_4
    sget-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->USER_CANCEL:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    goto :goto_0

    .line 933
    :sswitch_5
    sget-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->SWIPE_TOO_FAST:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    goto :goto_0

    .line 935
    :sswitch_6
    sget-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->SWIPE_TOO_SLOW:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    goto :goto_0

    .line 937
    :sswitch_7
    sget-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->SHORT_SWIPE:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    goto :goto_0

    .line 939
    :sswitch_8
    sget-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->OUT_OF_SKEWNESS:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    goto :goto_0

    .line 941
    :sswitch_9
    sget-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->ALIGN_CENTER:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    goto :goto_0

    .line 943
    :sswitch_a
    sget-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->MISMATCH_TEMPLATE:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    goto :goto_0

    .line 945
    :sswitch_b
    sget-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->INVALID_PARAMETER:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    goto :goto_0

    .line 947
    :sswitch_c
    sget-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->INVALID_FINGERPRINT:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    goto :goto_0

    .line 949
    :sswitch_d
    sget-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->IO_EXCEPTION:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    goto :goto_0

    .line 951
    :sswitch_e
    sget-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->ALREADY_ENROLLED:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    goto :goto_0

    .line 954
    :sswitch_f
    sget-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->NOT_FOUND_TEMPLATE:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    goto :goto_0

    .line 957
    :sswitch_10
    sget-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->DIFFERENT_FINGER:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    goto :goto_0

    .line 959
    :sswitch_11
    sget-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->REVERSE_DIRECTION:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    goto :goto_0

    .line 961
    :sswitch_12
    sget-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->ENOTENOUGH_INFORMATION:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    goto :goto_0

    .line 964
    :sswitch_13
    sget-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->ESHORT_SWIPE_NOTENOUGH_FRAME:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    goto :goto_0

    .line 966
    :sswitch_14
    sget-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->EINVALID_FILE_FORMAT:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    goto :goto_0

    .line 968
    :sswitch_15
    sget-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->ETEMPLATE_IO_ERROR:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    goto :goto_0

    .line 970
    :sswitch_16
    sget-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->EANDROIDBITMAP_LOCKPIXELS:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    goto :goto_0

    .line 972
    :sswitch_17
    sget-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->IGNORE_NOTIFY:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    goto :goto_0

    .line 978
    :cond_0
    sget-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->SUCCESS:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    goto :goto_0

    .line 921
    nop

    :sswitch_data_0
    .sparse-switch
        -0xc364 -> :sswitch_17
        -0xc363 -> :sswitch_16
        -0xc362 -> :sswitch_15
        -0xc361 -> :sswitch_14
        -0xc35f -> :sswitch_13
        -0xc35e -> :sswitch_12
        -0xc35d -> :sswitch_11
        -0xc35c -> :sswitch_10
        -0xc35b -> :sswitch_f
        -0xc35a -> :sswitch_e
        -0xc359 -> :sswitch_d
        -0xc358 -> :sswitch_c
        -0xc357 -> :sswitch_b
        -0xc356 -> :sswitch_a
        -0xc355 -> :sswitch_9
        -0xc354 -> :sswitch_8
        -0xc353 -> :sswitch_7
        -0xc352 -> :sswitch_6
        -0xc351 -> :sswitch_5
        -0x7d -> :sswitch_4
        -0x6e -> :sswitch_3
        -0x1c -> :sswitch_2
        -0xc -> :sswitch_1
        -0x5 -> :sswitch_0
    .end sparse-switch
.end method
