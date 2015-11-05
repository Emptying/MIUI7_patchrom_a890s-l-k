.class public Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;
.super Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;
.source "SkyTelephonyInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$EventCBThread;,
        Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_CALLBACK_CALL_CONN_SND:I = 0xc8

.field private static final EVENT_CALLBACK_CARD_REMOVED:I = 0xcb

.field private static final EVENT_CALLBACK_END_AUTOANSWER_IND:I = 0xce

.field private static final EVENT_CALLBACK_KT_SUBS_SRV_IND:I = 0xca

.field private static final EVENT_CALLBACK_SKT_SUBS_SUCCESS:I = 0xc9

.field private static final EVENT_CALLBACK_VE_IND:I = 0xcc

.field private static final EVENT_CALLBACK_VE_STOP:I = 0xcd

.field private static final EVENT_SET_PERSO_FEATURE_IND:I = 0xd0

.field private static final EVENT_SET_PH_OP_MODE_COMPLETE:I = 0x65

.field private static final EVENT_UPDATE_EF_TRANSPARENT_COMPLETE:I = 0x64

.field private static final EVENT_VERIFY_PCK_COMPLETE:I = 0xcf

.field static final LOG_TAG:Ljava/lang/String; = "SkyTelephony"

.field public static final SMART_DM_CELL_ID:Ljava/lang/String; = "CELL:"

.field public static final SMART_DM_LAC:Ljava/lang/String; = "LAC:"

.field public static final SMART_DM_MCC:Ljava/lang/String; = "MCC:"

.field public static final SMART_DM_MNC:Ljava/lang/String; = "MNC:"


# instance fields
.field private eventCbThread:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$EventCBThread;

.field is_channel_setting_valid:Z

.field private mContext:Landroid/content/Context;

.field private mCpmgrAutoanswerInd:Landroid/os/Registrant;

.field private mCpmgrCallConnectSnd:Landroid/os/Registrant;

.field private mCpmgrEventCb:Landroid/os/Registrant;

.field mHandler:Landroid/os/Handler;

.field private mPersofeature:I

.field private mTempPck:Ljava/lang/String;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private phone:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 825
    const-string v0, "cpmgrjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 827
    const-string v0, "@@@"

    const-string v1, "@@@ Loading Native Library"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    invoke-static {}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->class_init_native()V

    .line 831
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 5
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    const/4 v4, 0x0

    .line 186
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;-><init>()V

    .line 85
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 86
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 87
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->is_channel_setting_valid:Z

    .line 90
    new-instance v1, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$1;-><init>(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    .line 187
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 188
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mContext:Landroid/content/Context;

    .line 189
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->publish()V

    .line 191
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_cpmgr_init()Z

    move-result v0

    .line 192
    .local v0, "result":Z
    const-string v1, "SkyTelephony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@@ native_cpmgr_init() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v1, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$EventCBThread;

    invoke-direct {v1, p0, v4}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$EventCBThread;-><init>(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->eventCbThread:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$EventCBThread;

    .line 195
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->eventCbThread:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$EventCBThread;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$EventCBThread;->start()V

    .line 196
    return-void
.end method

.method private NativeEventParse(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    .line 761
    packed-switch p1, :pswitch_data_0

    .line 795
    :goto_0
    return-void

    .line 764
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 768
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 772
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xca

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 776
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xcb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 780
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xcc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 784
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xcd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 788
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xce

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 761
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)Lcom/android/internal/telephony/gsm/GSMPhone;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->onReceivedSktSubs()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_cpmgr_wait_for_event()I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->NativeEventParse(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->onReceivedKtSubs()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->onReceivedCardRemoved()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->onReceivedVeInd()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->onReceivedVeStop()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mTempPck:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    .prologue
    .line 38
    iget v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mPersofeature:I

    return v0
.end method

.method private static native class_init_native()V
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 816
    const-string v0, "SkyTelephony"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    return-void
.end method

.method private native native_autoanswer_control(ZI)V
.end method

.method private native native_cpmgr_init()Z
.end method

.method private native native_cpmgr_null()I
.end method

.method private native native_cpmgr_wait_for_event()I
.end method

.method private native native_del_acqDB()V
.end method

.method private native native_fake_roaming_status(I)V
.end method

.method private native native_get_acq_db(I)[I
.end method

.method private native native_get_card_type()I
.end method

.method private native native_get_skt_subs_status()[Z
.end method

.method private native native_get_ve_ind_ss_code()I
.end method

.method private native native_get_ve_ind_url()Ljava/lang/String;
.end method

.method private native native_get_ve_ind_url_len()I
.end method

.method private native native_modem_db_float(I)F
.end method

.method private native native_modem_db_int(I)I
.end method

.method private native native_modem_db_ints(I)[I
.end method

.method private native native_modem_db_strArray(I)[Ljava/lang/String;
.end method

.method private native native_modem_db_string(I)Ljava/lang/String;
.end method

.method private native native_nv_factory_init()V
.end method

.method private native native_remote_nv_read_int(II)I
.end method

.method private native native_remote_nv_read_ints(II)[I
.end method

.method private native native_remote_nv_write_int(III)I
.end method

.method private native native_remote_nv_write_ints(I[II)I
.end method

.method private native native_send_kt_ota_sms_submit_msg()V
.end method

.method private native native_set_cpmgr_lte_roaming_mode_func(Z)V
.end method

.method private native native_set_kt_subs_mode(I)V
.end method

.method private native native_set_operation_mode(I)V
.end method

.method private native native_set_preferred_time(I)V
.end method

.method private native native_set_vt_call_status_func(Z)V
.end method

.method private onReceivedCardRemoved()V
    .locals 2

    .prologue
    .line 732
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.sky.intent.action.SKY_CARD_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 733
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 734
    return-void
.end method

.method private onReceivedKtSubs()V
    .locals 2

    .prologue
    .line 686
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.sky.intent.action.KT_SUBSCRIPTION_SERVICE_IND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 687
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 688
    return-void
.end method

.method private onReceivedSktSubs()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 675
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.sky.intent.action.SKT_SUBSCRIPTION_SUCCESS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 676
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_get_skt_subs_status()[Z

    move-result-object v1

    .line 677
    .local v1, "skt_subs_status":[Z
    const-string v5, "is_success"

    aget-boolean v2, v1, v4

    if-ne v2, v3, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 678
    const-string v5, "immediate_reboot"

    aget-boolean v2, v1, v3

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 680
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 682
    const-string v2, "SkyTelephony"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "is_success : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-boolean v4, v1, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  immediate_reboot : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-boolean v3, v1, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    return-void

    :cond_0
    move v2, v4

    .line 677
    goto :goto_0

    :cond_1
    move v2, v4

    .line 678
    goto :goto_1
.end method

.method private onReceivedVeInd()V
    .locals 7

    .prologue
    .line 737
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.sky.intent.action.SKT_VE_INDICATION"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 738
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_get_ve_ind_ss_code()I

    move-result v1

    .line 739
    .local v1, "ve_ss_code":I
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_get_ve_ind_url_len()I

    move-result v3

    .line 740
    .local v3, "ve_url_len":I
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_get_ve_ind_url()Ljava/lang/String;

    move-result-object v2

    .line 742
    .local v2, "ve_url":Ljava/lang/String;
    const-string v4, "ve_ss_code"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 743
    const-string v4, "ve_url_len"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 744
    const-string v4, "ve_url"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 745
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 747
    const-string v4, "SkyTelephony"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ve_ss_code : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  ve_url_len : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const-string v4, "SkyTelephony"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ve_url : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    return-void
.end method

.method private onReceivedVeStop()V
    .locals 3

    .prologue
    .line 752
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.sky.intent.action.SKT_VE_STOP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 753
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 755
    const-string v1, "SkyTelephony"

    const-string v2, "send ve_stop broadcast : "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    return-void
.end method

.method private publish()V
    .locals 1

    .prologue
    .line 200
    const-string v0, "iskytelephony"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 202
    const-string v0, "iskytelephony"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 204
    :cond_0
    return-void
.end method


# virtual methods
.method public autoanswerControl(ZI)V
    .locals 0
    .param p1, "onoff"    # Z
    .param p2, "contents"    # I

    .prologue
    .line 323
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_autoanswer_control(ZI)V

    .line 324
    return-void
.end method

.method public checkEFLinearRecordSize(I)[I
    .locals 3
    .param p1, "fileid"    # I

    .prologue
    .line 288
    new-instance v1, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 289
    .local v1, "readEF":Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->start()V

    .line 290
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->getEFLinearRecordSize(I)[I

    move-result-object v0

    .line 292
    .local v0, "mResult":[I
    return-object v0
.end method

.method public deleteAcqDb()V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_del_acqDB()V

    .line 246
    return-void
.end method

.method public getGcfMode()Z
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getGcfMode()Z

    move-result v0

    return v0
.end method

.method public getLocalDbInfo_Float(I)F
    .locals 1
    .param p1, "db_num"    # I

    .prologue
    .line 890
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_modem_db_float(I)F

    move-result v0

    return v0
.end method

.method public getLocalDbInfo_Int(I)I
    .locals 1
    .param p1, "db_num"    # I

    .prologue
    .line 882
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_modem_db_int(I)I

    move-result v0

    return v0
.end method

.method public getLocalDbInfo_Ints(I)[I
    .locals 1
    .param p1, "db_num"    # I

    .prologue
    .line 886
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_modem_db_ints(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getLocalDbInfo_String(I)Ljava/lang/String;
    .locals 1
    .param p1, "db_num"    # I

    .prologue
    .line 878
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_modem_db_string(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModemDb_strArray(I)[Ljava/lang/String;
    .locals 1
    .param p1, "db_item"    # I

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_modem_db_strArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOnlyHomeKey()Z
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getOnlyHomeKey()Z

    move-result v0

    return v0
.end method

.method public getQcNvRead_int(II)I
    .locals 4
    .param p1, "nv_item"    # I
    .param p2, "nam"    # I

    .prologue
    .line 207
    const/4 v0, -0x1

    .line 208
    .local v0, "result":I
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_remote_nv_read_int(II)I

    move-result v0

    .line 209
    const-string v1, "SkyTelephony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nv_item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  read_value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return v0
.end method

.method public getQcNvRead_ints(II)[I
    .locals 1
    .param p1, "nv_item"    # I
    .param p2, "nam"    # I

    .prologue
    .line 222
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_remote_nv_read_ints(II)[I

    move-result-object v0

    .line 223
    .local v0, "result":[I
    return-object v0
.end method

.method public getSmscAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 314
    new-instance v0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 315
    .local v0, "getSCA":Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->start()V

    .line 316
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->readSmscAddress()Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "rsp_smsc":Ljava/lang/String;
    return-object v1
.end method

.method public getUsimSubscription()Z
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getUsimSubscription()Z

    move-result v0

    return v0
.end method

.method public get_acq_db(I)[I
    .locals 3
    .param p1, "RAT"    # I

    .prologue
    .line 726
    const-string v0, "SKY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get_acq_db : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_get_acq_db(I)[I

    move-result-object v0

    return-object v0
.end method

.method public loadEFLinearFixed(II)[B
    .locals 3
    .param p1, "fileid"    # I
    .param p2, "recordNum"    # I

    .prologue
    .line 276
    new-instance v1, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 277
    .local v1, "readEF":Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->start()V

    .line 278
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->readEFLinearFixed(II)[B

    move-result-object v0

    .line 280
    .local v0, "mResult":[B
    return-object v0
.end method

.method public loadEFTransparent(I)[B
    .locals 3
    .param p1, "fileid"    # I

    .prologue
    .line 256
    new-instance v1, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 257
    .local v1, "readEF":Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->start()V

    .line 258
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->readEFTransparent(I)[B

    move-result-object v0

    .line 260
    .local v0, "mResult":[B
    return-object v0
.end method

.method public modemNvFactoryInit()V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_nv_factory_init()V

    .line 251
    return-void
.end method

.method public setNetworkKindInternal(I)Z
    .locals 3
    .param p1, "networkType"    # I

    .prologue
    .line 895
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 896
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 899
    :catch_0
    move-exception v0

    .line 900
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOnlyHomeKey(Z)V
    .locals 1
    .param p1, "homekey"    # Z

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setOnlyHomeKey(Z)V

    .line 340
    return-void
.end method

.method public setPhOperationMode(I)V
    .locals 3
    .param p1, "ph_op_mode"    # I

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setPhOperationMode(ILandroid/os/Message;)V

    .line 310
    return-void
.end method

.method public setPreferredSystem(IIIII)V
    .locals 7
    .param p1, "mode"    # I
    .param p2, "domain"    # I
    .param p3, "band"    # I
    .param p4, "lte_band"    # I
    .param p5, "dulation"    # I

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->setPreferredSystem(IIIIILandroid/os/Message;)V

    .line 239
    return-void
.end method

.method public setQcNvWrite_int(III)I
    .locals 4
    .param p1, "nv_item"    # I
    .param p2, "value"    # I
    .param p3, "nam"    # I

    .prologue
    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, "result":I
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_remote_nv_write_int(III)I

    move-result v0

    .line 216
    const-string v1, "SkyTelephony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nv_item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  write_value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return v0
.end method

.method public setQcNvWrite_ints(I[II)I
    .locals 1
    .param p1, "nv_item"    # I
    .param p2, "value"    # [I
    .param p3, "nam"    # I

    .prologue
    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, "result":I
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_remote_nv_write_ints(I[II)I

    move-result v0

    .line 229
    return v0
.end method

.method public setSMSCfgSetGWDomain(I)V
    .locals 2
    .param p1, "gw_domain"    # I

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSMSCfgSetGWDomain(ILandroid/os/Message;)V

    .line 242
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 328
    return-void
.end method

.method public setUsimSubscription(Z)V
    .locals 1
    .param p1, "running"    # Z

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setUsimSubscription(Z)V

    .line 333
    return-void
.end method

.method public set_cpmgr_gnss_operation_mode(I)V
    .locals 3
    .param p1, "operation_mode"    # I

    .prologue
    .line 707
    const-string v0, "KT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set_cpmgr_gnss_operation_mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_set_operation_mode(I)V

    .line 709
    return-void
.end method

.method public set_cpmgr_gnss_preferred_time(I)V
    .locals 3
    .param p1, "time"    # I

    .prologue
    .line 711
    const-string v0, "KT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set_cpmgr_gnss_preferred_time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_set_preferred_time(I)V

    .line 714
    return-void
.end method

.method public set_cpmgr_lte_roaming_mode_func(Z)V
    .locals 3
    .param p1, "onoff"    # Z

    .prologue
    .line 692
    const-string v0, "KTF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set_cpmgr_lte_roaming_mode_func : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_set_cpmgr_lte_roaming_mode_func(Z)V

    .line 694
    return-void
.end method

.method public set_cpmgr_vt_call_status_func(Z)V
    .locals 3
    .param p1, "onoff"    # Z

    .prologue
    .line 699
    const-string v0, "SKY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set_cpmgr_vt_call_status_func : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_set_vt_call_status_func(Z)V

    .line 701
    return-void
.end method

.method public set_fake_roaming_status(I)V
    .locals 3
    .param p1, "onoff"    # I

    .prologue
    .line 719
    const-string v0, "SKY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set_fake_roaming_status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_fake_roaming_status(I)V

    .line 721
    return-void
.end method

.method public updateEFTransparent(I[B)V
    .locals 3
    .param p1, "fileid"    # I
    .param p2, "data"    # [B

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 271
    :cond_0
    return-void
.end method

.method public verifyPck(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "dck"    # Ljava/lang/String;
    .param p2, "perso_feature"    # I

    .prologue
    .line 349
    new-instance v0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 350
    .local v0, "actPersoInd":Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->start()V

    .line 351
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, p2}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->activatePersoInd(Ljava/lang/String;ZI)Z

    move-result v1

    .line 353
    .local v1, "rsp_rslt":Z
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mTempPck:Ljava/lang/String;

    .line 354
    iput p2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mPersofeature:I

    .line 355
    if-eqz v1, :cond_0

    .line 356
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xcf

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 359
    :cond_0
    return v1
.end method
