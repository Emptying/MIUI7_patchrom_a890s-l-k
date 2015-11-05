.class Landroid/net/wifi/WifiMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonitorThread"
.end annotation


# instance fields
.field private mRecvErrors:I

.field private mStateMachine:Lcom/android/internal/util/StateMachine;

.field private final mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

.field private final mWifiNative:Landroid/net/wifi/WifiNative;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiNative;Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;)V
    .locals 1
    .param p1, "wifiNative"    # Landroid/net/wifi/WifiNative;
    .param p2, "wifiMonitorSingleton"    # Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    .prologue
    .line 585
    const-string v0, "WifiMonitor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 581
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mRecvErrors:I

    .line 582
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 586
    iput-object p1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiNative:Landroid/net/wifi/WifiNative;

    .line 587
    iput-object p2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    .line 588
    return-void
.end method

.method private dispatchEvent(Ljava/lang/String;)Z
    .locals 11
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x7

    const/4 v9, 0x3

    const/4 v6, 0x1

    const/4 v8, -0x1

    const/4 v5, 0x0

    .line 665
    const-string v7, "CTRL-EVENT-"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 666
    const-string v7, "WPA:"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "pre-shared key may be incorrect"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_1

    .line 668
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v7, 0x24007

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 841
    :cond_0
    :goto_0
    return v5

    .line 669
    :cond_1
    const-string v7, "WAPI:"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_miui_0

    const-string v7, "pre-shared key may be incorrect"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_miui_0

    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x24007

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    :cond_miui_0
    const-string v7, "WPS-SUCCESS"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 670
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v7, 0x24008

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 671
    :cond_2
    const-string v7, "WPS-FAIL"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 672
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleWpsFailEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 673
    :cond_3
    const-string v7, "WPS-OVERLAP-DETECTED"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 674
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v7, 0x2400a

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 675
    :cond_4
    const-string v7, "WPS-TIMEOUT"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 676
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v7, 0x2400b

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 677
    :cond_5
    const-string v7, "P2P"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 678
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleP2pEvents(Ljava/lang/String;)V

    goto :goto_0

    .line 679
    :cond_6
    const-string v7, "AP"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 680
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleHostApEvents(Ljava/lang/String;)V

    goto :goto_0

    .line 682
    :cond_7
    invoke-static {}, Landroid/net/wifi/WifiGlobal;->getVendor()Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    move-result-object v7

    sget-object v8, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_KT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-ne v7, v8, :cond_8

    const-string v7, "EAP authentication failed"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 684
    const-string/jumbo v6, "ollehWiFi"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 685
    const-string v6, "WifiMonitor"

    const-string v7, "EAP_AUTH_FAILURE_STR received in non-KI AP"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleEapIdpwCtrlEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 690
    :cond_8
    invoke-static {}, Landroid/net/wifi/WifiGlobal;->getVendor()Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    move-result-object v7

    sget-object v8, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_KT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-ne v7, v8, :cond_9

    const-string v7, "WPA: 4-Way Handshake failed - pre-shared key may be incorrect"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 692
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handlePskNegoFailEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 695
    :cond_9
    const-string v7, "WEP: Shared WEP failed - wep key may be incorrect"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 696
    const-string v6, "WifiMonitor"

    const-string v7, "WEP_NEGO_FAIL_STR"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleWepNegoFailEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 701
    :cond_a
    const-string v7, "EUC-kr Hangul Hidden SSID match"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 702
    const-string v6, "WifiMonitor"

    const-string v7, "EUCKR_HANGUL_SSID_CONFIG_CHANGE_STR"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v7, 0x2400d

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 706
    :cond_b
    const-string v7, "SKT_ADD_INFO_NOTI_TEXT"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 707
    const-string v6, "WifiMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SKT_ADD_INFO_NOTI_TEXT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->skt_passpoint_notifymsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 709
    :cond_c
    const-string v7, "SKT_CONNECTION_INFO_NOTI_HOME_TEXT"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 710
    const-string v6, "WifiMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SKT_CONNECTION_INFO_NOTI_HOME_TEXT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->skt_passpoint_notifymsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 712
    :cond_d
    const-string v7, "SKT_CONNECTION_INFO_NOTI_ROAM_TEXT"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 713
    const-string v6, "WifiMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SKT_CONNECTION_INFO_NOTI_ROAM_TEXT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->skt_passpoint_notifymsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 717
    :cond_e
    invoke-static {}, Landroid/net/wifi/WifiGlobal;->getVendor()Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    move-result-object v7

    sget-object v8, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_SKT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-ne v7, v8, :cond_10

    const-string v7, "Authentication with "

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    const-string v7, " timed out."

    invoke-virtual {p1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 718
    const-string v6, "00:00:00:00:00:00"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 719
    const-string v6, "WifiMonitor"

    const-string v7, "Authentication time out for BSSID all 0\'s doesn\'t need to be handled here"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 722
    :cond_f
    const-string v6, "T wifi zone_secure"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 723
    const-string v6, "WifiMonitor"

    const-string v7, "Auth Fail T wifi zone_secure"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    invoke-virtual {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleAuthTimeout()V

    goto/16 :goto_0

    .line 729
    :cond_10
    const-string v7, "Trying to associate with"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 730
    # setter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapTimeOut:Z
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$602(Z)Z

    .line 731
    # setter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapFailure:Z
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$702(Z)Z

    .line 732
    # setter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAtNotification:Z
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$802(Z)Z

    .line 733
    # setter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapNotification:Z
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$902(Z)Z

    .line 734
    # setter for: Landroid/net/wifi/WifiMonitor;->bIsIdPassWordConnection:Z
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$1002(Z)Z

    .line 735
    # setter for: Landroid/net/wifi/WifiMonitor;->bIsWPSconnection:Z
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$1102(Z)Z

    .line 736
    # setter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAkaNotificationATNotificationFailureAfterAuth:Z
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$1202(Z)Z

    .line 737
    # setter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAkaNotificationATNotificationFailureBeforeAuth:Z
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$1302(Z)Z

    .line 739
    const-string/jumbo v7, "ollehWiFi"

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 740
    # setter for: Landroid/net/wifi/WifiMonitor;->bIsKtAp:Z
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$1402(Z)Z

    .line 745
    :goto_1
    const-string v6, "WifiMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Trying to associate with bIsKtAp : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Landroid/net/wifi/WifiMonitor;->bIsKtAp:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$1400()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 742
    :cond_11
    # setter for: Landroid/net/wifi/WifiMonitor;->bIsKtAp:Z
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$1402(Z)Z

    goto :goto_1

    .line 749
    :cond_12
    const-string v6, "WifiMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "couldn\'t identify event type - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 754
    :cond_13
    # getter for: Landroid/net/wifi/WifiMonitor;->EVENT_PREFIX_LEN_STR:I
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$1500()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 755
    .local v2, "eventName":Ljava/lang/String;
    const/16 v7, 0x20

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 756
    .local v4, "nameEnd":I
    if-eq v4, v8, :cond_14

    .line 757
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 758
    :cond_14
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_15

    .line 759
    const-string v6, "WifiMonitor"

    const-string v7, "Received wpa_supplicant event with empty event name"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 766
    :cond_15
    const-string v7, "CONNECTED"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 767
    const/4 v0, 0x1

    .line 787
    .local v0, "event":I
    :goto_2
    move-object v1, p1

    .line 788
    .local v1, "eventData":Ljava/lang/String;
    if-eq v0, v10, :cond_16

    const/4 v7, 0x5

    if-ne v0, v7, :cond_22

    .line 789
    :cond_16
    const-string v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v1, v7, v6

    .line 802
    :cond_17
    :goto_3
    if-ne v0, v9, :cond_25

    .line 803
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleSupplicantStateChange(Ljava/lang/String;)V

    .line 840
    :cond_18
    :goto_4
    iput v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mRecvErrors:I

    goto/16 :goto_0

    .line 768
    .end local v0    # "event":I
    .end local v1    # "eventData":Ljava/lang/String;
    :cond_19
    const-string v7, "DISCONNECTED"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 769
    const/4 v0, 0x2

    .restart local v0    # "event":I
    goto :goto_2

    .line 770
    .end local v0    # "event":I
    :cond_1a
    const-string v7, "STATE-CHANGE"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 771
    const/4 v0, 0x3

    .restart local v0    # "event":I
    goto :goto_2

    .line 772
    .end local v0    # "event":I
    :cond_1b
    const-string v7, "SCAN-RESULTS"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 773
    const/4 v0, 0x4

    .restart local v0    # "event":I
    goto :goto_2

    .line 774
    .end local v0    # "event":I
    :cond_1c
    const-string v7, "LINK-SPEED"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 775
    const/4 v0, 0x5

    .restart local v0    # "event":I
    goto :goto_2

    .line 776
    .end local v0    # "event":I
    :cond_1d
    const-string v7, "TERMINATING"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 777
    const/4 v0, 0x6

    .restart local v0    # "event":I
    goto :goto_2

    .line 778
    .end local v0    # "event":I
    :cond_1e
    const-string v7, "DRIVER-STATE"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 779
    const/4 v0, 0x7

    .restart local v0    # "event":I
    goto :goto_2

    .line 780
    .end local v0    # "event":I
    :cond_1f
    const-string v7, "EAP-FAILURE"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 781
    const/16 v0, 0x8

    .restart local v0    # "event":I
    goto :goto_2

    .line 782
    .end local v0    # "event":I
    :cond_20
    const-string v7, "ASSOC-REJECT"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 783
    const/16 v0, 0x9

    .restart local v0    # "event":I
    goto :goto_2

    .line 785
    .end local v0    # "event":I
    :cond_21
    const/16 v0, 0xa

    .restart local v0    # "event":I
    goto :goto_2

    .line 790
    .restart local v1    # "eventData":Ljava/lang/String;
    :cond_22
    if-eq v0, v9, :cond_23

    const/16 v7, 0x8

    if-ne v0, v7, :cond_24

    .line 791
    :cond_23
    const-string v7, " "

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 792
    .local v3, "ind":I
    if-eq v3, v8, :cond_17

    .line 793
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 796
    .end local v3    # "ind":I
    :cond_24
    const-string v7, " - "

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 797
    .restart local v3    # "ind":I
    if-eq v3, v8, :cond_17

    .line 798
    add-int/lit8 v7, v3, 0x3

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 804
    .end local v3    # "ind":I
    :cond_25
    if-ne v0, v10, :cond_26

    .line 805
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleDriverEvent(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 806
    :cond_26
    const/4 v7, 0x6

    if-ne v0, v7, :cond_28

    .line 811
    const-string/jumbo v7, "recv error"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 812
    iget v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mRecvErrors:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mRecvErrors:I

    const/16 v8, 0xa

    if-le v7, v8, :cond_0

    .line 814
    const-string v5, "WifiMonitor"

    const-string/jumbo v7, "too many recv errors, closing connection"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :cond_27
    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v7, 0x24002

    invoke-virtual {v5, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    move v5, v6

    .line 823
    goto/16 :goto_0

    .line 824
    :cond_28
    const/16 v6, 0x8

    if-ne v0, v6, :cond_29

    .line 825
    const-string v6, "EAP authentication failed"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 826
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v7, 0x24007

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 828
    invoke-static {}, Landroid/net/wifi/WifiGlobal;->getVendor()Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    move-result-object v6

    sget-object v7, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_KT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-ne v6, v7, :cond_18

    .line 831
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleEvent(ILjava/lang/String;)V

    goto/16 :goto_4

    .line 835
    :cond_29
    const/16 v6, 0x9

    if-ne v0, v6, :cond_2a

    .line 836
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v7, 0x2402b

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_4

    .line 838
    :cond_2a
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleEvent(ILjava/lang/String;)V

    goto/16 :goto_4
.end method

.method private handleAssocRejectFailEvent()V
    .locals 1

    .prologue
    .line 1231
    const-string v0, "ASSOC Reject failed - No response from AP"

    .line 1234
    .local v0, "assocRejectFail":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyAssocRejectFailAlarm()V

    .line 1235
    return-void
.end method

.method private handleConfigEvent(Ljava/lang/String;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 1171
    const-string v0, "CTRL-EVENT-CONFIG-CHANGE"

    .line 1173
    .local v0, "configChangePrefix":Ljava/lang/String;
    const-string v2, "CTRL-EVENT-CONFIG-CHANGE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1175
    const-string v2, "CTRL-EVENT-CONFIG-CHANGE"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1176
    .local v1, "msg":Ljava/lang/String;
    const-string v2, "WifiMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handle config change msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyConfigChange(Ljava/lang/String;)V

    .line 1184
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private handleDriverEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 845
    if-nez p1, :cond_1

    .line 851
    :cond_0
    :goto_0
    return-void

    .line 848
    :cond_1
    const-string v0, "HANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v1, 0x2400c

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method private handleEapCtrlEvent(Ljava/lang/String;)V
    .locals 19
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 1256
    invoke-static {}, Landroid/net/wifi/WifiGlobal;->getVendor()Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    move-result-object v16

    sget-object v17, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_KT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_2

    .line 1258
    const-string v12, "CTRL-EVENT-EAP-STARTED"

    .line 1259
    .local v12, "startedPrefix":Ljava/lang/String;
    const-string v10, "CTRL-EVENT-EAP-NOTIFICATION"

    .line 1260
    .local v10, "notiPrefix":Ljava/lang/String;
    const-string v8, "CTRL-EVENT-EAP-METHOD"

    .line 1261
    .local v8, "methodPrefix":Ljava/lang/String;
    const-string v7, "CTRL-EVENT-EAP-FAILURE"

    .line 1262
    .local v7, "failurePrefix":Ljava/lang/String;
    const-string v14, "CTRL-EVENT-EAP-SUCCESS"

    .line 1264
    .local v14, "successPrefix":Ljava/lang/String;
    const-string v16, "CTRL-EVENT-EAP-NOTIFICATION"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 1267
    const-string v16, "CTRL-EVENT-EAP-NOTIFICATION"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 1268
    .local v9, "msg":Ljava/lang/String;
    const-string v16, "@"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 1269
    :cond_0
    const-string v16, "WifiMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "handle notification msg="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyEapNotification(Ljava/lang/String;)V

    .line 1560
    .end local v9    # "msg":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1280
    .end local v7    # "failurePrefix":Ljava/lang/String;
    .end local v8    # "methodPrefix":Ljava/lang/String;
    .end local v10    # "notiPrefix":Ljava/lang/String;
    .end local v12    # "startedPrefix":Ljava/lang/String;
    .end local v14    # "successPrefix":Ljava/lang/String;
    :cond_2
    const-string v12, "CTRL-EVENT-EAP-STARTED"

    .line 1281
    .restart local v12    # "startedPrefix":Ljava/lang/String;
    const-string v10, "CTRL-EVENT-EAP-NOTIFICATION"

    .line 1282
    .restart local v10    # "notiPrefix":Ljava/lang/String;
    const-string v8, "CTRL-EVENT-EAP-METHOD"

    .line 1283
    .restart local v8    # "methodPrefix":Ljava/lang/String;
    const-string v7, "EAP authentication failed"

    .line 1284
    .restart local v7    # "failurePrefix":Ljava/lang/String;
    const-string v14, "CTRL-EVENT-EAP-SUCCESS"

    .line 1285
    .restart local v14    # "successPrefix":Ljava/lang/String;
    const-string v13, "EAP authentication completed successfully"

    .line 1286
    .local v13, "successPostfix":Ljava/lang/String;
    const-string/jumbo v15, "timed out."

    .line 1288
    .local v15, "timeoutPostfix":Ljava/lang/String;
    const-string v2, "CTRL-EVENT-EAP-REQUSET-EAP_AKA_AUTH-AT_NOTIFICATION-EAP_SIM_GENERAL_FAILURE_AFTER_AUTH"

    .line 1289
    .local v2, "NotificationFailureAfterAuthPrefix":Ljava/lang/String;
    const-string v3, "CTRL-EVENT-EAP-REQUSET-EAP_AKA_AUTH-AT_NOTIFICATION-EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH"

    .line 1290
    .local v3, "NotificationFailureBeforeAuthPrefix":Ljava/lang/String;
    const-string v6, "CTRL-EVENT-EAP-REQUSET-EAP_AKA_AUTH-AT_NOTIFICATION-EAP_SIM_SUCCESS"

    .line 1291
    .local v6, "NotificationSuccessPrefix":Ljava/lang/String;
    const-string v5, "CTRL-EVENT-EAP-REQUSET-EAP_AKA_UMTS_AUTHENTICATION_FAILED_AUTN_INCORRECT_MAC"

    .line 1292
    .local v5, "NotificationFailureIncorrectMACPrefix":Ljava/lang/String;
    const-string v4, "CTRL-EVENT-EAP-REQUSET-EAP_AKA_UMTS_AUTHENTICATION_FAILED_CM_ERROR_MEMORY_PROBLEM"

    .line 1294
    .local v4, "NotificationFailureCMErrorMemoryProblem":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    .line 1296
    .local v11, "r":Landroid/content/res/Resources;
    const-string v16, "WifiMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "handleEapCtrlEvent bReceiveEapFailure : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapFailure:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$700()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " bIsKtAp : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    # getter for: Landroid/net/wifi/WifiMonitor;->bIsKtAp:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$1400()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " bReceiveEapNotification : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapNotification:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$900()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " bReceiveEapRequestAtNotification : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAtNotification:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$800()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " bReceiveEapTimeOut : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapTimeOut:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$600()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " bIsIdPassWordConnection : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    # getter for: Landroid/net/wifi/WifiMonitor;->bIsIdPassWordConnection:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$1000()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " bIsWPSconnection : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    # getter for: Landroid/net/wifi/WifiMonitor;->bIsWPSconnection:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$1100()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " bReceiveEapRequestAkaNotificationATNotificationFailureAfterAuth : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAkaNotificationATNotificationFailureAfterAuth:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$1200()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " bReceiveEapRequestAkaNotificationATNotificationFailureBeforeAuth : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAkaNotificationATNotificationFailureBeforeAuth:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$1300()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    # getter for: Landroid/net/wifi/WifiMonitor;->bIsIdPassWordConnection:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$1000()Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    .line 1308
    # getter for: Landroid/net/wifi/WifiMonitor;->bIsWPSconnection:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$1100()Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    .line 1313
    const-string v16, "CTRL-EVENT-EAP-NOTIFICATION"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 1315
    const-string v16, "WifiMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "handleEapCtrlEvent : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    const/16 v16, 0x1

    # setter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapNotification:Z
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiMonitor;->access$902(Z)Z

    .line 1320
    const-string v16, "CTRL-EVENT-EAP-NOTIFICATION"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 1321
    .restart local v9    # "msg":Ljava/lang/String;
    const-string v16, "@"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 1322
    :cond_3
    const-string v16, "WifiMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "handle notification msg="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyEapNotification(Ljava/lang/String;)V

    .line 1328
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->OemEapNotification(Ljava/lang/String;)V

    .line 1331
    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapFailure:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$700()Z

    move-result v16

    if-nez v16, :cond_1

    .line 1333
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyEapToastPopUp(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1336
    .end local v9    # "msg":Ljava/lang/String;
    :cond_4
    const-string v16, "CTRL-EVENT-EAP-SUCCESS"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    const-string v16, "EAP authentication completed successfully"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 1338
    const-string v16, "WifiMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "handleEapCtrlEvent : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    const v16, 0x10406d1

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1342
    .restart local v9    # "msg":Ljava/lang/String;
    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapNotification:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$900()Z

    move-result v16

    if-nez v16, :cond_1

    .line 1344
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyEapNotification(Ljava/lang/String;)V

    .line 1348
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->OemEapNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1352
    .end local v9    # "msg":Ljava/lang/String;
    :cond_5
    const-string v16, "EAP authentication failed"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 1354
    const-string v16, "WifiMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "handleEapCtrlEvent : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapFailure:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$700()Z

    move-result v16

    if-nez v16, :cond_8

    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapTimeOut:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$600()Z

    move-result v16

    if-nez v16, :cond_8

    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapNotification:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$900()Z

    move-result v16

    if-nez v16, :cond_8

    .line 1357
    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAkaNotificationATNotificationFailureAfterAuth:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$1200()Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_6

    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAkaNotificationATNotificationFailureBeforeAuth:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$1300()Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 1360
    :cond_6
    const v16, 0x10406d2

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1363
    .restart local v9    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyEapToastPopUp(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1367
    .end local v9    # "msg":Ljava/lang/String;
    :cond_7
    const v16, 0x10406d2

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1370
    .restart local v9    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyEapToastPopUp(Ljava/lang/String;)V

    .line 1373
    .end local v9    # "msg":Ljava/lang/String;
    :cond_8
    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapFailure:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$700()Z

    move-result v16

    if-nez v16, :cond_9

    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapNotification:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$900()Z

    move-result v16

    if-nez v16, :cond_9

    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAtNotification:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$800()Z

    move-result v16

    if-nez v16, :cond_9

    .line 1374
    const v16, 0x10406d2

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1377
    .restart local v9    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyEapNotification(Ljava/lang/String;)V

    .line 1381
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->OemEapNotification(Ljava/lang/String;)V

    .line 1386
    .end local v9    # "msg":Ljava/lang/String;
    :cond_9
    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapFailure:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$700()Z

    move-result v16

    if-nez v16, :cond_a

    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAtNotification:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$800()Z

    move-result v16

    if-nez v16, :cond_a

    .line 1387
    const/16 v16, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->OemErrorNotification(I)V

    .line 1391
    :cond_a
    const/16 v16, 0x1

    # setter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapFailure:Z
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiMonitor;->access$702(Z)Z

    goto/16 :goto_0

    .line 1393
    :cond_b
    const-string/jumbo v16, "timed out."

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 1395
    const-string v16, "WifiMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "handleEapCtrlEvent : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    const/16 v16, 0x1

    # setter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapTimeOut:Z
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiMonitor;->access$602(Z)Z

    .line 1399
    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAkaNotificationATNotificationFailureAfterAuth:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$1200()Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAkaNotificationATNotificationFailureBeforeAuth:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$1300()Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    .line 1404
    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapFailure:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$700()Z

    move-result v16

    if-nez v16, :cond_c

    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapNotification:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$900()Z

    move-result v16

    if-nez v16, :cond_c

    .line 1405
    const v16, 0x10406d3

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1408
    .restart local v9    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyEapToastPopUp(Ljava/lang/String;)V

    .line 1411
    .end local v9    # "msg":Ljava/lang/String;
    :cond_c
    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapFailure:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$700()Z

    move-result v16

    if-nez v16, :cond_d

    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapNotification:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$900()Z

    move-result v16

    if-nez v16, :cond_d

    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAtNotification:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$800()Z

    move-result v16

    if-nez v16, :cond_d

    .line 1412
    const v16, 0x10406d3

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1415
    .restart local v9    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyEapNotification(Ljava/lang/String;)V

    .line 1419
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->OemEapNotification(Ljava/lang/String;)V

    .line 1424
    .end local v9    # "msg":Ljava/lang/String;
    :cond_d
    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapFailure:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$700()Z

    move-result v16

    if-nez v16, :cond_1

    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAtNotification:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$800()Z

    move-result v16

    if-nez v16, :cond_1

    .line 1425
    const/16 v16, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->OemErrorNotification(I)V

    goto/16 :goto_0

    .line 1429
    :cond_e
    const-string v16, "CTRL-EVENT-EAP-REQUSET-EAP_AKA_AUTH-AT_NOTIFICATION-EAP_SIM_GENERAL_FAILURE_AFTER_AUTH"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_10

    .line 1431
    const-string v16, "WifiMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "handleEapCtrlEvent : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapNotification:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$900()Z

    move-result v16

    if-nez v16, :cond_f

    .line 1435
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->OemEapAkaNotification(I)V

    .line 1439
    :cond_f
    const/16 v16, 0x1

    # setter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAtNotification:Z
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiMonitor;->access$802(Z)Z

    .line 1440
    const/16 v16, 0x1

    # setter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAkaNotificationATNotificationFailureAfterAuth:Z
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiMonitor;->access$1202(Z)Z

    .line 1443
    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapNotification:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$900()Z

    move-result v16

    if-nez v16, :cond_1

    .line 1446
    const v16, 0x10406d2

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1449
    .restart local v9    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyEapNotification(Ljava/lang/String;)V

    .line 1453
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->OemEapNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1457
    .end local v9    # "msg":Ljava/lang/String;
    :cond_10
    const-string v16, "CTRL-EVENT-EAP-REQUSET-EAP_AKA_AUTH-AT_NOTIFICATION-EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_12

    .line 1459
    const-string v16, "WifiMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "handleEapCtrlEvent : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->OemEapAkaNotification(I)V

    .line 1465
    const/16 v16, 0x1

    # setter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAtNotification:Z
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiMonitor;->access$802(Z)Z

    .line 1466
    const/16 v16, 0x1

    # setter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAkaNotificationATNotificationFailureBeforeAuth:Z
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiMonitor;->access$1302(Z)Z

    .line 1469
    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapNotification:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$900()Z

    move-result v16

    if-nez v16, :cond_11

    .line 1472
    const v16, 0x10406d2

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1475
    .restart local v9    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyEapNotification(Ljava/lang/String;)V

    .line 1479
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->OemEapNotification(Ljava/lang/String;)V

    .line 1483
    .end local v9    # "msg":Ljava/lang/String;
    :cond_11
    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapNotification:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$900()Z

    move-result v16

    if-nez v16, :cond_1

    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapFailure:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$700()Z

    move-result v16

    if-nez v16, :cond_1

    .line 1484
    const/16 v16, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->OemErrorNotification(I)V

    goto/16 :goto_0

    .line 1488
    :cond_12
    const-string v16, "CTRL-EVENT-EAP-REQUSET-EAP_AKA_UMTS_AUTHENTICATION_FAILED_AUTN_INCORRECT_MAC"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_13

    .line 1490
    const-string v16, "WifiMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "handleEapCtrlEvent : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    const/16 v16, 0x1

    # setter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAtNotification:Z
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiMonitor;->access$802(Z)Z

    .line 1495
    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapNotification:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$900()Z

    move-result v16

    if-nez v16, :cond_1

    .line 1496
    const v16, 0x10406d2

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1499
    .restart local v9    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyEapNotification(Ljava/lang/String;)V

    .line 1503
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->OemEapNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1507
    .end local v9    # "msg":Ljava/lang/String;
    :cond_13
    const-string v16, "CTRL-EVENT-EAP-REQUSET-EAP_AKA_UMTS_AUTHENTICATION_FAILED_CM_ERROR_MEMORY_PROBLEM"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_15

    .line 1509
    const-string v16, "WifiMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "handleEapCtrlEvent : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    const/16 v16, 0x1

    # setter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAtNotification:Z
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiMonitor;->access$802(Z)Z

    .line 1514
    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapNotification:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$900()Z

    move-result v16

    if-nez v16, :cond_14

    .line 1515
    const v16, 0x10406d2

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1518
    .restart local v9    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyEapNotification(Ljava/lang/String;)V

    .line 1522
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->OemEapNotification(Ljava/lang/String;)V

    .line 1526
    .end local v9    # "msg":Ljava/lang/String;
    :cond_14
    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapFailure:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$700()Z

    move-result v16

    if-nez v16, :cond_1

    .line 1527
    const/16 v16, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->OemErrorNotification(I)V

    goto/16 :goto_0

    .line 1532
    :cond_15
    const-string v16, "CTRL-EVENT-EAP-REQUSET-EAP_AKA_AUTH-AT_NOTIFICATION-EAP_SIM_SUCCESS"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 1534
    const-string v16, "WifiMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "handleEapCtrlEvent : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    const/16 v16, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->OemEapAkaNotification(I)V

    .line 1540
    const/16 v16, 0x1

    # setter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAtNotification:Z
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiMonitor;->access$802(Z)Z

    .line 1543
    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapNotification:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$900()Z

    move-result v16

    if-nez v16, :cond_1

    .line 1544
    const v16, 0x10406d1

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1547
    .restart local v9    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyEapNotification(Ljava/lang/String;)V

    .line 1551
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->OemEapNotification(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private handleEapIdpwCtrlEvent(Ljava/lang/String;)V
    .locals 7
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 1711
    const-string v0, "EAP authentication failed"

    .line 1712
    .local v0, "eapIdPwFail":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 1714
    .local v3, "r":Landroid/content/res/Resources;
    const-string v4, "EAP authentication failed"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1716
    const-string v4, "WifiMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleEapIdpwCtrlEvent : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    const-string/jumbo v2, "wifi_eap_idpw_failure"

    .line 1720
    .local v2, "msg":Ljava/lang/String;
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Landroid/net/wifi/WifiMonitor$MonitorThread;->OemErrorNotification(I)V

    .line 1724
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.internal.telephony.sky.intent.action.EAP_FAIL_NOTIFICATION"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1726
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "WifiMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Send IntentNoti: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    const-string v4, "eapFailNotification"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1729
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    instance-of v4, v4, Landroid/net/wifi/WifiStateMachine;

    if-eqz v4, :cond_0

    .line 1730
    const-string v4, "WifiMonitor"

    const-string v5, "WifiStateMachine.sendBroadcast() called"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    check-cast v4, Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiStateMachine;->sendBroadcast(Landroid/content/Intent;)V

    .line 1734
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private handleHostApEvents(Ljava/lang/String;)V
    .locals 4
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1018
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1020
    .local v0, "tokens":[Ljava/lang/String;
    aget-object v1, v0, v3

    const-string v2, "AP-STA-CONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1021
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2402a

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1026
    :cond_0
    :goto_0
    return-void

    .line 1023
    :cond_1
    aget-object v1, v0, v3

    const-string v2, "AP-STA-DISCONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1024
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24029

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 6
    .param p1, "newState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 1097
    const/4 v0, 0x0

    .line 1098
    .local v0, "BSSID":Ljava/lang/String;
    const/4 v3, -0x1

    .line 1099
    .local v3, "networkId":I
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v4, :cond_0

    .line 1100
    # getter for: Landroid/net/wifi/WifiMonitor;->mConnectedEventPattern:Ljava/util/regex/Pattern;
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$1600()Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1101
    .local v2, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1102
    const-string v4, "WifiMonitor"

    const-string v5, "Could not find BSSID in CONNECTED event string"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    :goto_0
    invoke-virtual {p0, p1, v0, v3}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V

    .line 1113
    .end local v2    # "match":Ljava/util/regex/Matcher;
    :cond_0
    return-void

    .line 1104
    .restart local v2    # "match":Ljava/util/regex/Matcher;
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 1106
    const/4 v4, 0x2

    :try_start_0
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 1107
    :catch_0
    move-exception v1

    .line 1108
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private handleP2pEvents(Ljava/lang/String;)V
    .locals 4
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    .line 961
    const-string v1, "P2P-DEVICE-FOUND"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 962
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24015

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1012
    :cond_0
    :goto_0
    return-void

    .line 963
    :cond_1
    const-string v1, "P2P-DEVICE-LOST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 964
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24016

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 965
    :cond_2
    const-string v1, "P2P-FIND-STOPPED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 966
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24025

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 967
    :cond_3
    const-string v1, "P2P-GO-NEG-REQUEST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 968
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24017

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 970
    :cond_4
    const-string v1, "P2P-GO-NEG-SUCCESS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 971
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24019

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 972
    :cond_5
    const-string v1, "P2P-GO-NEG-FAILURE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 973
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2401a

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->p2pError(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 974
    :cond_6
    const-string v1, "P2P-GROUP-FORMATION-SUCCESS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 975
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2401b

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 976
    :cond_7
    const-string v1, "P2P-GROUP-FORMATION-FAILURE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 977
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2401c

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->p2pError(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 978
    :cond_8
    const-string v1, "P2P-GROUP-STARTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 979
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2401d

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 980
    :cond_9
    const-string v1, "P2P-GROUP-REMOVED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 981
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2401e

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 982
    :cond_a
    const-string v1, "P2P-INVITATION-RECEIVED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 983
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2401f

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 985
    :cond_b
    const-string v1, "P2P-INVITATION-RESULT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 986
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24020

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->p2pError(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 987
    :cond_c
    const-string v1, "P2P-PROV-DISC-PBC-REQ"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 988
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24021

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 990
    :cond_d
    const-string v1, "P2P-PROV-DISC-PBC-RESP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 991
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24022

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 993
    :cond_e
    const-string v1, "P2P-PROV-DISC-ENTER-PIN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 994
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24023

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 996
    :cond_f
    const-string v1, "P2P-PROV-DISC-SHOW-PIN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 997
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24024

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 999
    :cond_10
    const-string v1, "P2P-PROV-DISC-FAILURE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1000
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24027

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 1001
    :cond_11
    const-string v1, "P2P-SERV-DISC-RESP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1002
    invoke-static {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->newInstance(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1003
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    if-eqz v0, :cond_12

    .line 1004
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24026

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1006
    :cond_12
    const-string v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null service resp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1008
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    :cond_13
    const-string v1, "P2P-REMOVE-AND-REFORM-GROUP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1009
    const-string v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received event= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24028

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0
.end method

.method private handlePskNegoFailEvent(Ljava/lang/String;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 1684
    const-string v1, "WPA: 4-Way Handshake failed - pre-shared key may be incorrect"

    .line 1685
    .local v1, "pskNegoFail":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 1686
    .local v2, "r":Landroid/content/res/Resources;
    const-string v3, "WPA: 4-Way Handshake failed - pre-shared key may be incorrect"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1688
    const-string v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handlePskNegoFailEvent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiMonitor$MonitorThread;->OemErrorNotification(I)V

    .line 1696
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.internal.telephony.sky.intent.action.PSK_NEGO_FAIL_NOTIFICATION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1697
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "WifiMonitor"

    const-string v4, "Send IntentNoti: 1"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    const-string/jumbo v3, "pskNegoFailNotification"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1700
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    instance-of v3, v3, Landroid/net/wifi/WifiStateMachine;

    if-eqz v3, :cond_0

    .line 1701
    const-string v3, "WifiMonitor"

    const-string v4, "WifiStateMachine.sendBroadcast() called"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    check-cast v3, Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiStateMachine;->sendBroadcast(Landroid/content/Intent;)V

    .line 1705
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private handleSupplicantStateChange(Ljava/lang/String;)V
    .locals 20
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    .line 1034
    const/4 v3, 0x0

    .line 1036
    .local v3, "wifiSsid":Landroid/net/wifi/WifiSsid;
    const/4 v4, 0x0

    .line 1038
    .local v4, "SSID":Ljava/lang/String;
    const-string v1, "SSID="

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    .line 1039
    .local v11, "index":I
    const/4 v1, -0x1

    if-eq v11, v1, :cond_0

    .line 1041
    add-int/lit8 v1, v11, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1043
    add-int/lit8 v1, v11, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v3

    .line 1046
    :cond_0
    const-string v1, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1048
    .local v8, "dataTokens":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 1049
    .local v5, "BSSID":Ljava/lang/String;
    const/4 v2, -0x1

    .line 1050
    .local v2, "networkId":I
    const/4 v14, -0x1

    .line 1051
    .local v14, "newState":I
    move-object v7, v8

    .local v7, "arr$":[Ljava/lang/String;
    array-length v12, v7

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v12, :cond_5

    aget-object v16, v7, v10

    .line 1052
    .local v16, "token":Ljava/lang/String;
    const-string v1, "="

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1053
    .local v13, "nameValue":[Ljava/lang/String;
    array-length v1, v13

    const/16 v18, 0x2

    move/from16 v0, v18

    if-eq v1, v0, :cond_2

    .line 1051
    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1057
    :cond_2
    const/4 v1, 0x0

    aget-object v1, v13, v1

    const-string v18, "BSSID"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1058
    const/4 v1, 0x1

    aget-object v5, v13, v1

    .line 1059
    goto :goto_1

    .line 1064
    :cond_3
    const/4 v1, 0x1

    :try_start_0
    aget-object v1, v13, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    .line 1069
    .local v17, "value":I
    const/4 v1, 0x0

    aget-object v1, v13, v1

    const-string v18, "id"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1070
    move/from16 v2, v17

    goto :goto_1

    .line 1065
    .end local v17    # "value":I
    :catch_0
    move-exception v9

    .line 1066
    .local v9, "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 1071
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .restart local v17    # "value":I
    :cond_4
    const/4 v1, 0x0

    aget-object v1, v13, v1

    const-string/jumbo v18, "state"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1072
    move/from16 v14, v17

    goto :goto_1

    .line 1076
    .end local v13    # "nameValue":[Ljava/lang/String;
    .end local v16    # "token":Ljava/lang/String;
    .end local v17    # "value":I
    :cond_5
    const/4 v1, -0x1

    if-ne v14, v1, :cond_6

    .line 1094
    .end local v7    # "arr$":[Ljava/lang/String;
    :goto_2
    return-void

    .line 1078
    .restart local v7    # "arr$":[Ljava/lang/String;
    :cond_6
    sget-object v6, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    .line 1079
    .local v6, "newSupplicantState":Landroid/net/wifi/SupplicantState;
    invoke-static {}, Landroid/net/wifi/SupplicantState;->values()[Landroid/net/wifi/SupplicantState;

    move-result-object v7

    .local v7, "arr$":[Landroid/net/wifi/SupplicantState;
    array-length v12, v7

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v12, :cond_7

    aget-object v15, v7, v10

    .line 1080
    .local v15, "state":Landroid/net/wifi/SupplicantState;
    invoke-virtual {v15}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    if-ne v1, v14, :cond_9

    .line 1081
    move-object v6, v15

    .line 1085
    .end local v15    # "state":Landroid/net/wifi/SupplicantState;
    :cond_7
    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    if-ne v6, v1, :cond_8

    .line 1086
    const-string v1, "WifiMonitor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Invalid supplicant state: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object/from16 v1, p0

    .line 1091
    invoke-virtual/range {v1 .. v6}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifySupplicantStateChange(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    goto :goto_2

    .line 1079
    .restart local v15    # "state":Landroid/net/wifi/SupplicantState;
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_3
.end method

.method private handleWepNegoFailEvent(Ljava/lang/String;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 1189
    const-string v2, "WEP: Shared WEP failed - wep key may be incorrect"

    .line 1191
    .local v2, "wepNegoFail":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 1192
    .local v1, "r":Landroid/content/res/Resources;
    const-string v3, "WEP: Shared WEP failed - wep key may be incorrect"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1194
    const-string v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleWepNegoFailEvent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    const v3, 0x10406d8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1198
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyWepNegoFailPopUp(Ljava/lang/String;)V

    .line 1200
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private handleWpsFailEvent(Ljava/lang/String;)V
    .locals 9
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const v8, 0x24009

    const/4 v7, 0x0

    .line 901
    const-string v4, "WPS-FAIL msg=\\d+(?: config_error=(\\d+))?(?: reason=(\\d+))?"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 902
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 903
    .local v1, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 904
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 905
    .local v0, "cfgErr":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 907
    .local v3, "reason":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 908
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 919
    :cond_0
    if-eqz v0, :cond_1

    .line 920
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 933
    .end local v0    # "cfgErr":Ljava/lang/String;
    .end local v3    # "reason":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v5, v8, v7, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 935
    :goto_0
    return-void

    .line 910
    .restart local v0    # "cfgErr":Ljava/lang/String;
    .restart local v3    # "reason":Ljava/lang/String;
    :pswitch_0
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/4 v6, 0x5

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 914
    :pswitch_1
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/4 v6, 0x4

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 922
    :sswitch_0
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/4 v6, 0x6

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 926
    :sswitch_1
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/4 v6, 0x3

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 908
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 920
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method private p2pError(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    .locals 8
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 939
    sget-object v1, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->UNKNOWN:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 940
    .local v1, "err":Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 941
    .local v3, "tokens":[Ljava/lang/String;
    array-length v4, v3

    if-ge v4, v7, :cond_0

    move-object v4, v1

    .line 954
    :goto_0
    return-object v4

    .line 942
    :cond_0
    aget-object v4, v3, v6

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 943
    .local v2, "nameValue":[Ljava/lang/String;
    array-length v4, v2

    if-eq v4, v7, :cond_1

    move-object v4, v1

    goto :goto_0

    .line 946
    :cond_1
    aget-object v4, v2, v6

    const-string v5, "FREQ_CONFLICT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 947
    sget-object v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->NO_COMMON_CHANNEL:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    goto :goto_0

    .line 950
    :cond_2
    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->valueOf(I)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v4, v1

    .line 954
    goto :goto_0

    .line 951
    :catch_0
    move-exception v0

    .line 952
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public OemEapAkaNotification(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 1591
    const-string v1, "WifiMonitor"

    const-string v2, "OemEapAkaNotification called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.kt.wifiapi.OEMExtension.NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1595
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send IntentNoti: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    if-nez p1, :cond_2

    .line 1598
    const-string v1, "EAP_AKA_NOTIFICATION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1605
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    instance-of v1, v1, Landroid/net/wifi/WifiStateMachine;

    if-eqz v1, :cond_1

    .line 1607
    const-string v1, "WifiMonitor"

    const-string v2, "WifiStateMachine.sendBroadcast() called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    check-cast v1, Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiStateMachine;->sendBroadcast(Landroid/content/Intent;)V

    .line 1611
    :cond_1
    return-void

    .line 1599
    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 1600
    const-string v1, "EAP_AKA_NOTIFICATION"

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 1601
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 1602
    const-string v1, "EAP_AKA_NOTIFICATION"

    const v2, 0x8000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public OemEapNotification(Ljava/lang/String;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1564
    const-string v3, "WifiMonitor"

    const-string v4, "OemEapNotification called"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    if-nez p1, :cond_1

    .line 1568
    const-string v3, "WifiMonitor"

    const-string v4, "OemEapNotification() failed!!! Msg is null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    :cond_0
    :goto_0
    return-void

    .line 1571
    :cond_1
    move-object v2, p1

    .line 1572
    .local v2, "txtPlain":Ljava/lang/String;
    const-string v1, " "

    .line 1573
    .local v1, "txtClipher":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 1576
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.kt.wifiapi.OEMExtension.NOTIFICATION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1577
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Send IntentNoti: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    const-string v3, "EAP_NOTIFICATION"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1580
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    instance-of v3, v3, Landroid/net/wifi/WifiStateMachine;

    if-eqz v3, :cond_0

    .line 1582
    const-string v3, "WifiMonitor"

    const-string v4, "WifiStateMachine.sendBroadcast() called"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    check-cast v3, Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiStateMachine;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public OemErrorNotification(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 1616
    const-string v1, "WifiMonitor"

    const-string v2, "OemErrorNotification called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.kt.wifiapi.OEMExtension.NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1625
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send IntentNoti: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    const-string v1, "ERROR_NOTIFICATION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1628
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    instance-of v1, v1, Landroid/net/wifi/WifiStateMachine;

    if-eqz v1, :cond_0

    .line 1629
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    check-cast v1, Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiStateMachine;->sendBroadcast(Landroid/content/Intent;)V

    .line 1631
    :cond_0
    return-void
.end method

.method public handleAuthTimeout()V
    .locals 2

    .prologue
    .line 1165
    const-string v0, "WifiMonitor"

    const-string v1, "WifiStateMachine.handleAuthTimeout() called "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    return-void
.end method

.method handleEvent(ILjava/lang/String;)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "remainder"    # Ljava/lang/String;

    .prologue
    .line 860
    packed-switch p1, :pswitch_data_0

    .line 898
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 862
    :pswitch_1
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_0

    .line 866
    :pswitch_2
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_0

    .line 870
    :pswitch_3
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v1, 0x24005

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 879
    :pswitch_4
    const-string v0, "CTRL-EVENT-EAP-"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 880
    invoke-direct {p0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleEapCtrlEvent(Ljava/lang/String;)V

    .line 881
    :cond_1
    const-string v0, "EAP authentication failed"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 882
    invoke-direct {p0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleEapCtrlEvent(Ljava/lang/String;)V

    .line 885
    :cond_2
    const-string v0, "CTRL-EVENT-CONFIG-"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 886
    invoke-direct {p0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleConfigEvent(Ljava/lang/String;)V

    .line 890
    :cond_3
    const-string/jumbo v0, "wps connection request"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 891
    const-string v0, "WifiMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(WSC) selected bIsWPSconnection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Landroid/net/wifi/WifiMonitor;->bIsWPSconnection:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$1100()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    const/4 v0, 0x1

    # setter for: Landroid/net/wifi/WifiMonitor;->bIsWPSconnection:Z
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$1102(Z)Z

    goto :goto_0

    .line 860
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public notifyAssocRejectFailAlarm()V
    .locals 3

    .prologue
    .line 1238
    const-string v1, "WifiMonitor"

    const-string v2, "WifiStateMachine.notifyAssocRejectFailAlarm() called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.internal.telephony.sky.intent.action.ASSOC_REJECT_FAIL_ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1244
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    instance-of v1, v1, Landroid/net/wifi/WifiStateMachine;

    if-eqz v1, :cond_0

    .line 1246
    const-string v1, "WifiMonitor"

    const-string v2, "WifiStateMachine.sendBroadcast() called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    check-cast v1, Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiStateMachine;->sendBroadcast(Landroid/content/Intent;)V

    .line 1250
    :cond_0
    return-void
.end method

.method public notifyConfigChange(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1795
    if-nez p1, :cond_0

    .line 1796
    const-string v0, "WifiMonitor"

    const-string/jumbo v1, "notifyConfigChange() failed!!! Msg is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    :goto_0
    return-void

    .line 1799
    :cond_0
    const-string v0, "WifiMonitor"

    const-string v1, "Send CONFIG_CHANGE_EVENT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v1, 0x2400d

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method public notifyEapNotification(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1635
    const-string v1, "WifiMonitor"

    const-string v2, "WifiStateMachine.notifyEapNotification() called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    if-nez p1, :cond_1

    .line 1639
    const-string v1, "WifiMonitor"

    const-string/jumbo v2, "notifyEapNotification() failed!!! Msg is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    :cond_0
    :goto_0
    return-void

    .line 1644
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.internal.telephony.sky.intent.action.WPA_EAP_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1645
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send IntentNoti: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    const-string v1, "eapNotification"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1648
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    instance-of v1, v1, Landroid/net/wifi/WifiStateMachine;

    if-eqz v1, :cond_0

    .line 1650
    const-string v1, "WifiMonitor"

    const-string v2, "WifiStateMachine.sendBroadcast() called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    check-cast v1, Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiStateMachine;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public notifyEapToastPopUp(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1657
    const-string v1, "WifiMonitor"

    const-string/jumbo v2, "notifyEapToastPopUp called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    if-nez p1, :cond_1

    .line 1661
    const-string v1, "WifiMonitor"

    const-string/jumbo v2, "notifyEapToastPopUp() failed!!! Msg is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    :cond_0
    :goto_0
    return-void

    .line 1666
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.internal.telephony.sky.intent.action.WPA_EAP_TOAST_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1668
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send IntentNoti: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    const-string v1, "eapNotification"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1671
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    instance-of v1, v1, Landroid/net/wifi/WifiStateMachine;

    if-eqz v1, :cond_0

    .line 1673
    const-string v1, "WifiMonitor"

    const-string v2, "WifiStateMachine.sendBroadcast() called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    check-cast v1, Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiStateMachine;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method notifyNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V
    .locals 4
    .param p1, "newState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "netId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1126
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_0

    .line 1127
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24003

    invoke-virtual {v1, v2, p3, v3, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1129
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1135
    :goto_0
    return-void

    .line 1131
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24004

    invoke-virtual {v1, v2, p3, v3, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1133
    .restart local v0    # "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method notifySupplicantStateChange(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V
    .locals 9
    .param p1, "networkId"    # I
    .param p2, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p3, "SSID"    # Ljava/lang/String;
    .param p4, "BSSID"    # Ljava/lang/String;
    .param p5, "newState"    # Landroid/net/wifi/SupplicantState;

    .prologue
    .line 1151
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x24006

    new-instance v0, Landroid/net/wifi/StateChangeResult;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/StateChangeResult;-><init>(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    invoke-virtual {v7, v8, v0}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1157
    return-void
.end method

.method public notifyWepNegoFailPopUp(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1203
    const-string v1, "WifiMonitor"

    const-string/jumbo v2, "notifyWepNegoFailPopUp called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    if-nez p1, :cond_1

    .line 1207
    const-string v1, "WifiMonitor"

    const-string/jumbo v2, "notifyWepNegoFailPopUp() failed!!! Msg is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    :cond_0
    :goto_0
    return-void

    .line 1212
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.internal.telephony.sky.intent.action.PSK_NEGO_FAIL_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1214
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send IntentNoti: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    const-string/jumbo v1, "pskNegoFailNotification"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1217
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    instance-of v1, v1, Landroid/net/wifi/WifiStateMachine;

    if-eqz v1, :cond_0

    .line 1219
    const-string v1, "WifiMonitor"

    const-string v2, "WifiStateMachine.sendBroadcast() called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24007

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    .line 593
    :cond_0
    :goto_0
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v7}, Landroid/net/wifi/WifiNative;->waitForEvent()Ljava/lang/String;

    move-result-object v2

    .line 596
    .local v2, "eventStr":Ljava/lang/String;
    const-string v7, "SCAN-RESULTS"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v10, :cond_1

    .line 597
    const-string v7, "WifiMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Event ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_1
    const-string/jumbo v3, "p2p0"

    .line 601
    .local v3, "iface":Ljava/lang/String;
    const/4 v5, 0x0

    .line 602
    .local v5, "m":Landroid/net/wifi/WifiMonitor;
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 604
    const-string v7, "IFNAME="

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 605
    const/16 v7, 0x20

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 606
    .local v6, "space":I
    if-eq v6, v10, :cond_3

    .line 607
    const/4 v7, 0x7

    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 608
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    # invokes: Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor(Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;
    invoke-static {v7, v3}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$300(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;

    move-result-object v5

    .line 609
    if-nez v5, :cond_2

    const-string/jumbo v7, "p2p-"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 613
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    const-string/jumbo v8, "p2p0"

    # invokes: Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor(Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;
    invoke-static {v7, v8}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$300(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;

    move-result-object v5

    .line 615
    :cond_2
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 622
    .end local v6    # "space":I
    :cond_3
    :goto_1
    if-eqz v5, :cond_4

    .line 623
    # getter for: Landroid/net/wifi/WifiMonitor;->mMonitoring:Z
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 624
    # getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v7

    iput-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 633
    :cond_4
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    if-eqz v7, :cond_7

    .line 634
    invoke-direct {p0, v2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->dispatchEvent(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 660
    :goto_2
    return-void

    .line 619
    :cond_5
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    const-string/jumbo v8, "p2p0"

    # invokes: Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor(Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;
    invoke-static {v7, v8}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$300(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;

    move-result-object v5

    goto :goto_1

    .line 626
    :cond_6
    const-string v7, "WifiMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dropping event because monitor ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") is stopped"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 638
    :cond_7
    const-string v7, "WifiMonitor"

    const-string v8, "Sending to all monitors because there\'s no interface id"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const/4 v0, 0x0

    .line 640
    .local v0, "done":Z
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    # getter for: Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;
    invoke-static {v7}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$400(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 642
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/WifiMonitor;>;>;"
    :cond_8
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 643
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 644
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/WifiMonitor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "m":Landroid/net/wifi/WifiMonitor;
    check-cast v5, Landroid/net/wifi/WifiMonitor;

    .line 645
    .restart local v5    # "m":Landroid/net/wifi/WifiMonitor;
    # getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v7

    iput-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 646
    invoke-direct {p0, v2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->dispatchEvent(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 647
    const/4 v0, 0x1

    goto :goto_3

    .line 651
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/WifiMonitor;>;"
    :cond_9
    if-eqz v0, :cond_0

    .line 654
    const-string v7, "WifiMonitor"

    const-string v8, "Disconnecting from the supplicant, no more events"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    const/4 v8, 0x0

    # setter for: Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z
    invoke-static {v7, v8}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$502(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;Z)Z

    goto :goto_2
.end method

.method public skt_passpoint_notifymsg(Ljava/lang/String;)V
    .locals 9
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 1738
    const-string v5, "WifiMonitor"

    const-string/jumbo v6, "skt notifymsg called"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    const-string v5, "\n"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1740
    .local v4, "tokens":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1741
    .local v3, "title":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1742
    .local v0, "details":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1745
    .local v2, "tickerText":Ljava/lang/String;
    const-string v5, "SKT_ADD_INFO_NOTI_TEXT"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1747
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v4, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1748
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v4, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1750
    const/4 v5, 0x3

    aget-object v2, v4, v5

    .line 1752
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1754
    const-string v5, "http://"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1755
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1757
    :cond_0
    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    check-cast v5, Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, v3, v0, v2}, Landroid/net/wifi/WifiStateMachine;->skt_passpoint_noti_add_info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1790
    :cond_1
    :goto_0
    return-void

    .line 1758
    :cond_2
    const-string v5, "SKT_CONNECTION_INFO_NOTI_HOME_TEXT"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1760
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v4, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1761
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v4, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1763
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_4

    .line 1764
    if-nez v2, :cond_3

    .line 1765
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1763
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1767
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1770
    :cond_4
    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    check-cast v5, Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, v3, v0, v2}, Landroid/net/wifi/WifiStateMachine;->skt_passpoint_noti_homp_ap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1771
    .end local v1    # "i":I
    :cond_5
    const-string v5, "SKT_CONNECTION_INFO_NOTI_ROAM_TEXT"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1773
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v4, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1774
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v4, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1776
    const/4 v1, 0x3

    .restart local v1    # "i":I
    :goto_3
    array-length v5, v4

    if-ge v1, v5, :cond_7

    .line 1777
    if-nez v2, :cond_6

    .line 1778
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1776
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1780
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 1783
    :cond_7
    const-string v5, "(null)"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1784
    const-string v0, " "

    .line 1785
    :cond_8
    const-string v5, "(null)"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1786
    const-string v2, " "

    .line 1788
    :cond_9
    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    check-cast v5, Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, v3, v0, v2}, Landroid/net/wifi/WifiStateMachine;->skt_passpoint_noti_roam_ap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
