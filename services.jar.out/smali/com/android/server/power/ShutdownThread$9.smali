.class Lcom/android/server/power/ShutdownThread$9;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;J[Z)V
    .locals 0

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$9;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-wide p2, p0, Lcom/android/server/power/ShutdownThread$9;->val$endTime:J

    iput-object p4, p0, Lcom/android/server/power/ShutdownThread$9;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 578
    const/4 v5, 0x0

    .line 580
    .local v5, "nfc":Landroid/nfc/INfcAdapter;
    const-string v10, "phone"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    .line 582
    .local v7, "phone":Lcom/android/internal/telephony/ITelephony;
    const-string v10, "bluetooth_manager"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 587
    .local v0, "bluetooth":Landroid/bluetooth/IBluetoothManager;
    if-eqz v5, :cond_0

    :try_start_0
    invoke-interface {v5}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    :cond_0
    const/4 v6, 0x1

    .line 589
    .local v6, "nfcOff":Z
    :goto_0
    if-nez v6, :cond_1

    .line 590
    const-string v10, "ShutdownThread"

    const-string v11, "Turning off NFC..."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const/4 v10, 0x0

    invoke-interface {v5, v10}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_6

    :cond_2
    const/4 v1, 0x1

    .line 600
    .local v1, "bluetoothOff":Z
    :goto_2
    if-nez v1, :cond_3

    .line 601
    const-string v10, "ShutdownThread"

    const-string v11, "Disabling Bluetooth..."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/4 v10, 0x0

    invoke-interface {v0, v10}, Landroid/bluetooth/IBluetoothManager;->disable(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 610
    :cond_3
    :goto_3
    const/4 v8, 0x1

    .line 611
    .local v8, "radioOff":Z
    :try_start_2
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 612
    const-string v10, "phone_msim"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v4

    .line 614
    .local v4, "mphone":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-eqz v4, :cond_a

    .line 617
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v10

    if-ge v3, v10, :cond_a

    .line 619
    if-eqz v8, :cond_7

    invoke-interface {v4, v3}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->isRadioOn(I)Z

    move-result v10

    if-nez v10, :cond_7

    const/4 v8, 0x1

    .line 620
    :goto_5
    invoke-interface {v4, v3}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->isRadioOn(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 621
    const-string v10, "ShutdownThread"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Turning off radio on Subscription :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const/4 v10, 0x0

    invoke-interface {v4, v10, v3}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->setRadio(ZI)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 618
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 587
    .end local v1    # "bluetoothOff":Z
    .end local v3    # "i":I
    .end local v4    # "mphone":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    .end local v6    # "nfcOff":Z
    .end local v8    # "radioOff":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_0

    .line 593
    :catch_0
    move-exception v2

    .line 594
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v10, "ShutdownThread"

    const-string v11, "RemoteException during NFC shutdown"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 595
    const/4 v6, 0x1

    .restart local v6    # "nfcOff":Z
    goto :goto_1

    .line 599
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .line 604
    :catch_1
    move-exception v2

    .line 605
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v10, "ShutdownThread"

    const-string v11, "RemoteException during bluetooth shutdown"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 606
    const/4 v1, 0x1

    .restart local v1    # "bluetoothOff":Z
    goto :goto_3

    .line 619
    .end local v2    # "ex":Landroid/os/RemoteException;
    .restart local v3    # "i":I
    .restart local v4    # "mphone":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    .restart local v8    # "radioOff":Z
    :cond_7
    const/4 v8, 0x0

    goto :goto_5

    .line 627
    .end local v3    # "i":I
    .end local v4    # "mphone":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_8
    if-eqz v7, :cond_9

    :try_start_3
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v10

    if-nez v10, :cond_c

    :cond_9
    const/4 v8, 0x1

    .line 628
    :goto_6
    if-nez v8, :cond_a

    .line 629
    const-string v10, "ShutdownThread"

    const-string v11, "Turning off radio..."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const/4 v10, 0x0

    invoke-interface {v7, v10}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 638
    :cond_a
    :goto_7
    const-string v10, "ShutdownThread"

    const-string v11, "Waiting for NFC, Bluetooth and Radio..."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :goto_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/server/power/ShutdownThread$9;->val$endTime:J

    cmp-long v10, v10, v12

    if-gez v10, :cond_12

    .line 641
    if-nez v1, :cond_b

    .line 643
    :try_start_4
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v10

    if-nez v10, :cond_d

    const/4 v1, 0x1

    .line 648
    :goto_9
    if-eqz v1, :cond_b

    .line 649
    const-string v10, "ShutdownThread"

    const-string v11, "Bluetooth turned off."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_b
    if-nez v8, :cond_10

    .line 654
    const/4 v9, 0x1

    .line 655
    .local v9, "subRadioOff":Z
    :try_start_5
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v10

    if-eqz v10, :cond_13

    .line 656
    const-string v10, "phone_msim"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v4

    .line 658
    .restart local v4    # "mphone":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_a
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v10

    if-ge v3, v10, :cond_f

    .line 660
    if-eqz v9, :cond_e

    invoke-interface {v4, v3}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->isRadioOn(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    move-result v10

    if-nez v10, :cond_e

    const/4 v9, 0x1

    .line 659
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 627
    .end local v3    # "i":I
    .end local v4    # "mphone":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    .end local v9    # "subRadioOff":Z
    :cond_c
    const/4 v8, 0x0

    goto :goto_6

    .line 633
    :catch_2
    move-exception v2

    .line 634
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v10, "ShutdownThread"

    const-string v11, "RemoteException during radio shutdown"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 635
    const/4 v8, 0x1

    goto :goto_7

    .line 643
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_d
    const/4 v1, 0x0

    goto :goto_9

    .line 644
    :catch_3
    move-exception v2

    .line 645
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v10, "ShutdownThread"

    const-string v11, "RemoteException during bluetooth shutdown"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 646
    const/4 v1, 0x1

    goto :goto_9

    .line 660
    .end local v2    # "ex":Landroid/os/RemoteException;
    .restart local v3    # "i":I
    .restart local v4    # "mphone":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    .restart local v9    # "subRadioOff":Z
    :cond_e
    const/4 v9, 0x0

    goto :goto_b

    .line 662
    :cond_f
    move v8, v9

    .line 670
    .end local v3    # "i":I
    .end local v4    # "mphone":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :goto_c
    if-eqz v8, :cond_10

    .line 671
    const-string v10, "ShutdownThread"

    const-string v11, "Radio turned off."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    .end local v9    # "subRadioOff":Z
    :cond_10
    if-nez v6, :cond_11

    .line 676
    :try_start_6
    invoke-interface {v5}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_15

    const/4 v6, 0x1

    .line 681
    :goto_d
    if-eqz v6, :cond_11

    .line 682
    const-string v10, "ShutdownThread"

    const-string v11, "NFC turned off."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_11
    if-eqz v8, :cond_16

    if-eqz v1, :cond_16

    if-eqz v6, :cond_16

    .line 687
    const-string v10, "ShutdownThread"

    const-string v11, "NFC, Radio and Bluetooth shutdown complete."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v10, p0, Lcom/android/server/power/ShutdownThread$9;->val$done:[Z

    const/4 v11, 0x0

    const/4 v12, 0x1

    aput-boolean v12, v10, v11

    .line 693
    :cond_12
    return-void

    .line 664
    .restart local v9    # "subRadioOff":Z
    :cond_13
    :try_start_7
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4

    move-result v10

    if-nez v10, :cond_14

    const/4 v8, 0x1

    :goto_e
    goto :goto_c

    :cond_14
    const/4 v8, 0x0

    goto :goto_e

    .line 666
    :catch_4
    move-exception v2

    .line 667
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v10, "ShutdownThread"

    const-string v11, "RemoteException during radio shutdown"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 668
    const/4 v8, 0x1

    goto :goto_c

    .line 676
    .end local v2    # "ex":Landroid/os/RemoteException;
    .end local v9    # "subRadioOff":Z
    :cond_15
    const/4 v6, 0x0

    goto :goto_d

    .line 677
    :catch_5
    move-exception v2

    .line 678
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v10, "ShutdownThread"

    const-string v11, "RemoteException during NFC shutdown"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 679
    const/4 v6, 0x1

    goto :goto_d

    .line 691
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_16
    const-wide/16 v10, 0x1f4

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_8
.end method
