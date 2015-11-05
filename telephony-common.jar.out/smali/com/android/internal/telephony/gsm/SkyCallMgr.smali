.class public Lcom/android/internal/telephony/gsm/SkyCallMgr;
.super Ljava/lang/Object;
.source "SkyCallMgr.java"


# static fields
.field public static final SIGNAL_EVENT:Ljava/lang/String; = "com.android.internal.telephony.gsm.SIGNAL_EVENT"

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
    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.internal.telephony.gsm.SIGNAL_EVENT"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/SkyCallMgr;->eventList:[Ljava/lang/String;

    .line 35
    const-string v0, "SKY CALL MGR"

    sput-object v0, Lcom/android/internal/telephony/gsm/SkyCallMgr;->TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkyCallMgr;->map:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SkyCallMgr;->context:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/SkyCallMgr;->mH:Landroid/os/Handler;

    .line 48
    new-instance v0, Lcom/android/internal/telephony/gsm/SkyCallMgr$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SkyCallMgr$1;-><init>(Lcom/android/internal/telephony/gsm/SkyCallMgr;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SkyCallMgr;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/android/internal/telephony/gsm/SkyCallMgr;->map:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/SkyCallMgr;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyCallMgr;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyCallMgr;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/android/internal/telephony/gsm/SkyCallMgr;->TAG:Ljava/lang/String;

    return-object v0
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
    .line 70
    const/4 v1, 0x0

    .line 71
    .local v1, "found":Z
    sget-object v0, Lcom/android/internal/telephony/gsm/SkyCallMgr;->eventList:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 73
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 75
    const/4 v1, 0x1

    .line 79
    .end local v4    # "s":Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_2

    new-instance v6, Ljava/lang/Exception;

    const-string v7, "It not invalid event"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 71
    .restart local v4    # "s":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    .end local v4    # "s":Ljava/lang/String;
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/gsm/SkyCallMgr;->map:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 82
    .local v5, "w":Ljava/lang/Integer;
    if-eqz v5, :cond_3

    new-instance v6, Ljava/lang/Exception;

    const-string v7, "It is already registered"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 84
    :cond_3
    sget-object v6, Lcom/android/internal/telephony/gsm/SkyCallMgr;->map:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SkyCallMgr;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SkyCallMgr;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    sget-object v6, Lcom/android/internal/telephony/gsm/SkyCallMgr;->TAG:Ljava/lang/String;

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

    .line 88
    return-void
.end method

.method public unregisterAll()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyCallMgr;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyCallMgr;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 93
    sget-object v0, Lcom/android/internal/telephony/gsm/SkyCallMgr;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 94
    sget-object v0, Lcom/android/internal/telephony/gsm/SkyCallMgr;->TAG:Ljava/lang/String;

    const-string v1, "Unregistered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method
