.class public Lcom/android/internal/telephony/gsm/SkySrvSys;
.super Ljava/lang/Object;
.source "SkySrvSys.java"


# static fields
.field public static final IMMED_REJ_EVENT:Ljava/lang/String; = "com.android.internal.telephony.gsm.IMMED_REJ_EVENT"

.field public static final LTE_A_STATUS_EVENT:Ljava/lang/String; = "com.android.internal.telephony.gsm.LTE_A_STATUS_EVENT"

.field public static final MANUAL_REG_START:Ljava/lang/String; = "com.android.internal.telephony.gsm.MANUAL_REG_START"

.field public static final MANUAL_STATUS_SRV:Ljava/lang/String; = "com.android.internal.telephony.gsm.MANUAL_STATUS_SRV"

.field public static final ROAMING_MODE_INTERNATIONAL_GSM:I = 0x3

.field public static final ROAMING_MODE_INTERNATIONAL_WCDMA:I = 0x2

.field public static final ROAMING_MODE_NATIONAL_GSM:I = 0x1

.field public static final ROAMING_MODE_NATIONAL_WCDMA:I = 0x0

.field public static final ROAMING_MODE_NOT_DETERMINED:I = 0xff

.field private static TAG:Ljava/lang/String;

.field private static eventList:[Ljava/lang/String;

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
    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.internal.telephony.gsm.IMMED_REJ_EVENT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.internal.telephony.gsm.MANUAL_STATUS_SRV"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.internal.telephony.gsm.MANUAL_REG_START"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.android.internal.telephony.gsm.LTE_A_STATUS_EVENT"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySrvSys;->eventList:[Ljava/lang/String;

    .line 45
    const-string v0, "SKY SRY SYS"

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySrvSys;->TAG:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySrvSys;->map:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SkySrvSys;->context:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/SkySrvSys;->mH:Landroid/os/Handler;

    .line 58
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySrvSys$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SkySrvSys$1;-><init>(Lcom/android/internal/telephony/gsm/SkySrvSys;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SkySrvSys;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/android/internal/telephony/gsm/SkySrvSys;->map:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/SkySrvSys;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkySrvSys;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkySrvSys;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/android/internal/telephony/gsm/SkySrvSys;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getRoamingMode([B)I
    .locals 5
    .param p0, "input"    # [B

    .prologue
    const/16 v2, 0xff

    .line 116
    if-nez p0, :cond_1

    move v1, v2

    .line 129
    :cond_0
    :goto_0
    return v1

    .line 117
    :cond_1
    array-length v3, p0

    const/4 v4, 0x4

    if-ge v3, v4, :cond_2

    move v1, v2

    goto :goto_0

    .line 119
    :cond_2
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 120
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 121
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 123
    .local v1, "roamingMode":I
    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 126
    const/16 v1, 0xff

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
    .line 80
    const/4 v1, 0x0

    .line 81
    .local v1, "found":Z
    sget-object v0, Lcom/android/internal/telephony/gsm/SkySrvSys;->eventList:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 83
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 85
    const/4 v1, 0x1

    .line 89
    .end local v4    # "s":Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_2

    new-instance v6, Ljava/lang/Exception;

    const-string v7, "It not invalid event"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 81
    .restart local v4    # "s":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    .end local v4    # "s":Ljava/lang/String;
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/gsm/SkySrvSys;->map:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 92
    .local v5, "w":Ljava/lang/Integer;
    if-eqz v5, :cond_3

    new-instance v6, Ljava/lang/Exception;

    const-string v7, "It is already registered"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 94
    :cond_3
    sget-object v6, Lcom/android/internal/telephony/gsm/SkySrvSys;->map:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SkySrvSys;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SkySrvSys;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    sget-object v6, Lcom/android/internal/telephony/gsm/SkySrvSys;->TAG:Ljava/lang/String;

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

    .line 98
    return-void
.end method

.method public unregisterAll()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkySrvSys;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkySrvSys;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 103
    sget-object v0, Lcom/android/internal/telephony/gsm/SkySrvSys;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 104
    sget-object v0, Lcom/android/internal/telephony/gsm/SkySrvSys;->TAG:Ljava/lang/String;

    const-string v1, "Unregistered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method
