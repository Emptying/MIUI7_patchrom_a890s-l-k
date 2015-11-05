.class Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata$1;
.super Landroid/os/Handler;
.source "SkyTelephonyInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 440
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 441
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 492
    :goto_0
    return-void

    .line 443
    :pswitch_0
    const-string v1, "SkyTelephony"

    const-string v2, "TRANSPARENT_EF_READ_COMPLETE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    monitor-enter v2

    .line 445
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    # setter for: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->result_transparent_ef:[B
    invoke-static {v3, v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->access$902(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;[B)[B

    .line 446
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    const/4 v3, 0x1

    # setter for: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mDone:Z
    invoke-static {v1, v3}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->access$1002(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;Z)Z

    .line 447
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 448
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 452
    :pswitch_1
    const-string v1, "SkyTelephony"

    const-string v2, "SMS_CENTER_ADDR_READ_COMPLETE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    monitor-enter v2

    .line 454
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # setter for: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->result_smsc:Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->access$1102(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;Ljava/lang/String;)Ljava/lang/String;

    .line 455
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    const/4 v3, 0x1

    # setter for: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mDone:Z
    invoke-static {v1, v3}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->access$1002(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;Z)Z

    .line 456
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 457
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 462
    :pswitch_2
    const-string v2, "SkyTelephony"

    const-string v3, "PERSO_IND_SET_COMPLETE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    monitor-enter v2

    .line 464
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    :goto_1
    # setter for: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->result_perso_ind:Z
    invoke-static {v3, v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->access$1202(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;Z)Z

    .line 465
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    const/4 v3, 0x1

    # setter for: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mDone:Z
    invoke-static {v1, v3}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->access$1002(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;Z)Z

    .line 466
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 467
    monitor-exit v2

    goto :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    .line 464
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 473
    :pswitch_3
    const-string v1, "SkyTelephony"

    const-string v2, "LINEAR_FIXED_EF_READ_COMPLETE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    monitor-enter v2

    .line 475
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    # setter for: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->result_linear_fixed_ef:[B
    invoke-static {v3, v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->access$1302(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;[B)[B

    .line 476
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    const/4 v3, 0x1

    # setter for: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mDone:Z
    invoke-static {v1, v3}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->access$1002(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;Z)Z

    .line 477
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 478
    monitor-exit v2

    goto/16 :goto_0

    :catchall_3
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v1

    .line 482
    :pswitch_4
    const-string v1, "SkyTelephony"

    const-string v2, "LINEAR_FIXED_SIZE_EF_READ_COMPLETE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    monitor-enter v2

    .line 484
    :try_start_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    # setter for: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->result_linear_fixed_array_size:[I
    invoke-static {v3, v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->access$1402(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;[I)[I

    .line 485
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    const/4 v3, 0x1

    # setter for: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mDone:Z
    invoke-static {v1, v3}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->access$1002(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;Z)Z

    .line 486
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 487
    monitor-exit v2

    goto/16 :goto_0

    :catchall_4
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v1

    .line 441
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
