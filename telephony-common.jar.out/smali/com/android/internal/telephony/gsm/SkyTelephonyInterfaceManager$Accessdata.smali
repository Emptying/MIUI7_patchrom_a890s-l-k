.class Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;
.super Ljava/lang/Thread;
.source "SkyTelephonyInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Accessdata"
.end annotation


# static fields
.field private static final LINEAR_FIXED_EF_READ_COMPLETE:I = 0x67

.field private static final LINEAR_FIXED_SIZE_EF_READ_COMPLETE:I = 0x68

.field private static final PERSO_IND_SET_COMPLETE:I = 0x66

.field private static final SMS_CENTER_ADDR_READ_COMPLETE:I = 0x65

.field private static final TRANSPARENT_EF_READ_COMPLETE:I = 0x64


# instance fields
.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private result_linear_fixed_array_size:[I

.field private result_linear_fixed_ef:[B

.field private result_perso_ind:Z

.field private result_smsc:Ljava/lang/String;

.field private result_transparent_ef:[B


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    .line 429
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 402
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mDone:Z

    .line 430
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 431
    return-void
.end method

.method static synthetic access$1002(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;
    .param p1, "x1"    # Z

    .prologue
    .line 400
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mDone:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->result_smsc:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;
    .param p1, "x1"    # Z

    .prologue
    .line 400
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->result_perso_ind:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;
    .param p1, "x1"    # [B

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->result_linear_fixed_ef:[B

    return-object p1
.end method

.method static synthetic access$1402(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;[I)[I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;
    .param p1, "x1"    # [I

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->result_linear_fixed_array_size:[I

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;
    .param p1, "x1"    # [B

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->result_transparent_ef:[B

    return-object p1
.end method


# virtual methods
.method declared-synchronized activatePersoInd(Ljava/lang/String;ZI)Z
    .locals 4
    .param p1, "dck"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "perso_feature"    # I

    .prologue
    .line 642
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 644
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 645
    :catch_0
    move-exception v1

    .line 646
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 642
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 649
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 651
    .local v0, "callback":Landroid/os/Message;
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setPersoFeatureInd(Ljava/lang/String;ZILandroid/os/Message;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 657
    :goto_1
    :try_start_5
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mDone:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v2, :cond_1

    .line 659
    :try_start_6
    const-string v2, "SkyTelephony"

    const-string v3, "wait for done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 661
    :catch_1
    move-exception v1

    .line 663
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 652
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v1

    .line 653
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mDone:Z

    .line 654
    const-string v2, "SkyTelephony"

    const-string v3, "Perso Ind setting Error Occured !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 666
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v2, "SkyTelephony"

    const-string v3, "activatePersoInd  done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 668
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->result_perso_ind:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return v2
.end method

.method declared-synchronized getEFLinearRecordSize(I)[I
    .locals 4
    .param p1, "fileid"    # I

    .prologue
    .line 572
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 574
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 575
    :catch_0
    move-exception v1

    .line 576
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 572
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 579
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 581
    .local v0, "callback":Landroid/os/Message;
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 587
    :cond_1
    :goto_1
    :try_start_5
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mDone:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v2, :cond_2

    .line 589
    const-wide/16 v2, 0xfa0

    :try_start_6
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 590
    const-string v2, "SkyTelephony"

    const-string v3, "wait for done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mDone:Z
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v2, :cond_1

    .line 599
    :cond_2
    :try_start_7
    const-string v2, "SkyTelephony"

    const-string v3, "readEFLinearFixed Size  done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 601
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->result_linear_fixed_array_size:[I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v2

    .line 582
    :catch_1
    move-exception v1

    .line 583
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    :try_start_8
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mDone:Z

    .line 584
    const-string v2, "SkyTelephony"

    const-string v3, "LinearFixed EF read Size Error Occured !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 594
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 596
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1
.end method

.method declared-synchronized readEFLinearFixed(II)[B
    .locals 4
    .param p1, "fileid"    # I
    .param p2, "recordNum"    # I

    .prologue
    .line 537
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 539
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 540
    :catch_0
    move-exception v1

    .line 541
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 537
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 544
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x67

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 547
    .local v0, "callback":Landroid/os/Message;
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v2

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, p1, v3, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 553
    :cond_1
    :goto_1
    :try_start_5
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mDone:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v2, :cond_2

    .line 555
    const-wide/16 v2, 0xfa0

    :try_start_6
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 556
    const-string v2, "SkyTelephony"

    const-string v3, "wait for done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mDone:Z
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v2, :cond_1

    .line 565
    :cond_2
    :try_start_7
    const-string v2, "SkyTelephony"

    const-string v3, "readEFLinearFixed  done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 567
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->result_linear_fixed_ef:[B
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v2

    .line 548
    :catch_1
    move-exception v1

    .line 549
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    :try_start_8
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mDone:Z

    .line 550
    const-string v2, "SkyTelephony"

    const-string v3, "LinearFixed EF read Error Occured !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 560
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 562
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1
.end method

.method declared-synchronized readEFTransparent(I)[B
    .locals 4
    .param p1, "fileid"    # I

    .prologue
    .line 501
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 503
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 504
    :catch_0
    move-exception v1

    .line 505
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 501
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 508
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 510
    .local v0, "callback":Landroid/os/Message;
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 516
    :cond_1
    :goto_1
    :try_start_5
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mDone:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v2, :cond_2

    .line 518
    const-wide/16 v2, 0xfa0

    :try_start_6
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 519
    const-string v2, "SkyTelephony"

    const-string v3, "wait for done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mDone:Z
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v2, :cond_1

    .line 528
    :cond_2
    :try_start_7
    const-string v2, "SkyTelephony"

    const-string v3, "readEFTransparent  done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 530
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->result_transparent_ef:[B
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v2

    .line 511
    :catch_1
    move-exception v1

    .line 512
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    :try_start_8
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mDone:Z

    .line 513
    const-string v2, "SkyTelephony"

    const-string v3, "EF read Error Occured !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 523
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 525
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1
.end method

.method declared-synchronized readSmscAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 607
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 609
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 610
    :catch_0
    move-exception v1

    .line 611
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 607
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 614
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 616
    .local v0, "callback":Landroid/os/Message;
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSmscAddress(Landroid/os/Message;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 622
    :cond_1
    :goto_1
    :try_start_5
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mDone:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v2, :cond_2

    .line 624
    const-wide/16 v2, 0xfa0

    :try_start_6
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 625
    const-string v2, "SkyTelephony"

    const-string v3, "wait for done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mDone:Z
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v2, :cond_1

    .line 634
    :cond_2
    :try_start_7
    const-string v2, "SkyTelephony"

    const-string v3, "readSmscAddress  done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 636
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->result_smsc:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v2

    .line 617
    :catch_1
    move-exception v1

    .line 618
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    :try_start_8
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mDone:Z

    .line 619
    const-string v2, "SkyTelephony"

    const-string v3, "SMSC read Error Occured !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 629
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 631
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1
.end method

.method public run()V
    .locals 1

    .prologue
    .line 435
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 436
    monitor-enter p0

    .line 437
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata$1;-><init>(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mHandler:Landroid/os/Handler;

    .line 494
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 495
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 497
    return-void

    .line 495
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
