.class public Lcom/android/internal/telephony/gsm/SkyOtaSubs;
.super Ljava/lang/Object;
.source "SkyOtaSubs.java"


# static fields
.field public static final OTA_DATA_DOWNLOAD_FAIL_EVENT:Ljava/lang/String; = "com.android.internal.telephony.gsm.SkyOtaSubs.OTA_DATA_DOWNLOAD_FAIL_EVENT"

.field public static final OTA_RP_ERR_EVENT:Ljava/lang/String; = "com.android.internal.telephony.gsm.SkyOtaSubs.OTA_RP_ERR_EVENT"

.field public static final TAG:Ljava/lang/String; = "SKY OTA SUBS"

.field private static eventList:[Ljava/lang/String;

.field private static mHook:Lcom/android/internal/telephony/SkyQcRilHook;

.field private static map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private context:Landroid/content/Context;

.field private mH:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.internal.telephony.gsm.SkyOtaSubs.OTA_DATA_DOWNLOAD_FAIL_EVENT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.internal.telephony.gsm.SkyOtaSubs.OTA_RP_ERR_EVENT"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/SkyOtaSubs;->eventList:[Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/android/internal/telephony/SkyQcRilHook;

    invoke-direct {v0}, Lcom/android/internal/telephony/SkyQcRilHook;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkyOtaSubs;->mHook:Lcom/android/internal/telephony/SkyQcRilHook;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkyOtaSubs;->map:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SkyOtaSubs;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 39
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SkyOtaSubs;->context:Landroid/content/Context;

    .line 40
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SkyOtaSubs;->mH:Landroid/os/Handler;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SkyOtaSubs;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 39
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SkyOtaSubs;->context:Landroid/content/Context;

    .line 40
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SkyOtaSubs;->mH:Landroid/os/Handler;

    .line 58
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SkyOtaSubs;->context:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/SkyOtaSubs;->mH:Landroid/os/Handler;

    .line 61
    new-instance v0, Lcom/android/internal/telephony/gsm/SkyOtaSubs$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SkyOtaSubs$1;-><init>(Lcom/android/internal/telephony/gsm/SkyOtaSubs;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SkyOtaSubs;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 79
    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/internal/telephony/gsm/SkyOtaSubs;->map:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/SkyOtaSubs;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyOtaSubs;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyOtaSubs;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method public static requestKTOtaSendSmsSubmitMsg()Z
    .locals 3

    .prologue
    .line 84
    sget-object v1, Lcom/android/internal/telephony/gsm/SkyOtaSubs;->mHook:Lcom/android/internal/telephony/SkyQcRilHook;

    const-string v2, "sms.requestKTOtaSendSmsSubmitMsg"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SkyQcRilHook;->sendQcRilHookMsg(Ljava/lang/String;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 86
    .local v0, "result":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 88
    const-string v1, "SKY OTA SUBS"

    const-string v2, "Success requestKTOtaSendSmsSubmitMsg"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v1, 0x1

    .line 94
    :goto_0
    return v1

    .line 93
    :cond_0
    const-string v1, "SKY OTA SUBS"

    const-string v2, "fail requestKTOtaSendSmsSubmitMsg"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setKTSubsMode(I)Z
    .locals 6
    .param p0, "mode"    # I

    .prologue
    .line 101
    const/4 v3, 0x4

    new-array v1, v3, [B

    .line 103
    .local v1, "input":[B
    invoke-static {v1}, Lcom/android/internal/telephony/SkyQcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 104
    .local v0, "inBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 106
    sget-object v3, Lcom/android/internal/telephony/gsm/SkyOtaSubs;->mHook:Lcom/android/internal/telephony/SkyQcRilHook;

    const-string v4, "other.setKTSubsMode"

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/telephony/SkyQcRilHook;->sendQcRilHookMsg(Ljava/lang/String;[B)Landroid/os/AsyncResult;

    move-result-object v2

    .line 108
    .local v2, "result":Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 110
    const-string v3, "SKY OTA SUBS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Success setKTSubsMode, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v3, 0x1

    .line 116
    :goto_0
    return v3

    .line 115
    :cond_0
    const-string v3, "SKY OTA SUBS"

    const-string v4, "fail setKTSubsMode"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public registerEvent(Ljava/lang/String;I)V
    .locals 9
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "what"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SkyOtaSubs;->context:Landroid/content/Context;

    if-nez v6, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SkyOtaSubs;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v6, :cond_0

    .line 126
    const/4 v1, 0x0

    .line 127
    .local v1, "found":Z
    sget-object v0, Lcom/android/internal/telephony/gsm/SkyOtaSubs;->eventList:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 129
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 131
    const/4 v1, 0x1

    .line 135
    .end local v4    # "s":Ljava/lang/String;
    :cond_2
    if-nez v1, :cond_4

    new-instance v6, Ljava/lang/Exception;

    const-string v7, "It not invalid event"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 127
    .restart local v4    # "s":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 137
    .end local v4    # "s":Ljava/lang/String;
    :cond_4
    sget-object v6, Lcom/android/internal/telephony/gsm/SkyOtaSubs;->map:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 138
    .local v5, "w":Ljava/lang/Integer;
    if-eqz v5, :cond_5

    new-instance v6, Ljava/lang/Exception;

    const-string v7, "It is already registered"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 140
    :cond_5
    sget-object v6, Lcom/android/internal/telephony/gsm/SkyOtaSubs;->map:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SkyOtaSubs;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SkyOtaSubs;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 143
    const-string v6, "SKY OTA SUBS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "is registered"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterAll()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyOtaSubs;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyOtaSubs;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyOtaSubs;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyOtaSubs;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 153
    sget-object v0, Lcom/android/internal/telephony/gsm/SkyOtaSubs;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 154
    const-string v0, "SKY OTA SUBS"

    const-string v1, "Unregistered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
