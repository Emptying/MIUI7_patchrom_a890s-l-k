.class Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$1;
.super Landroid/os/Handler;
.source "SkyTelephonyInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 113
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 183
    :goto_0
    :sswitch_0
    return-void

    .line 115
    :sswitch_1
    const-string v0, "SkyTelephony"

    const-string v1, "EF update is complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 119
    :sswitch_2
    const-string v0, "SkyTelephony"

    const-string v1, "phone operation mode changed....."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    :sswitch_3
    const-string v0, "SkyTelephony"

    const-string v1, "EVENT_CALLBACK_CALL_CONN_SND"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->access$000(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyCsCallConnectSndStart()V

    goto :goto_0

    .line 128
    :sswitch_4
    const-string v0, "SkyTelephony"

    const-string v1, "EVENT_CALLBACK_SKT_SUBS_SUCCESS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    # invokes: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->onReceivedSktSubs()V
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->access$100(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)V

    goto :goto_0

    .line 133
    :sswitch_5
    const-string v0, "SkyTelephony"

    const-string v1, "EVENT_CALLBACK_KT_SUBS_SRV_IND"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    # invokes: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->onReceivedKtSubs()V
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->access$200(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)V

    goto :goto_0

    .line 163
    :sswitch_6
    const-string v0, "SkyTelephony"

    const-string v1, "callback end autoanswer ind....."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->access$000(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyAutoanswerInd()V

    goto :goto_0

    .line 170
    :sswitch_7
    const-string v0, "SkyTelephony"

    const-string v1, "EVENT_VERIFY_PCK_COMPLETE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->access$000(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mTempPck:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->access$600(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mPersofeature:I
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->access$700(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xd0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->setPersoFeatureInd(Ljava/lang/String;ZILandroid/os/Message;)V

    goto :goto_0

    .line 176
    :sswitch_8
    const-string v0, "SkyTelephony"

    const-string v1, "EVENT_SET_PERSO_FEATURE_IND -- complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 113
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x65 -> :sswitch_2
        0xc8 -> :sswitch_3
        0xc9 -> :sswitch_4
        0xca -> :sswitch_5
        0xcb -> :sswitch_0
        0xcc -> :sswitch_0
        0xcd -> :sswitch_0
        0xce -> :sswitch_6
        0xcf -> :sswitch_7
        0xd0 -> :sswitch_8
    .end sparse-switch
.end method
