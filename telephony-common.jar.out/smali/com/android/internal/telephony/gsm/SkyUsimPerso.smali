.class public Lcom/android/internal/telephony/gsm/SkyUsimPerso;
.super Ljava/lang/Object;
.source "SkyUsimPerso.java"


# static fields
.field public static final CARD_REMOVED_EVENT:Ljava/lang/String; = "com.android.internal.telephony.gsm.SkyUsimPerso.CARD_REMOVED_EVENT"

.field public static final GSDI_PERSO_NCK_BLOCKED:I = 0xb

.field public static final GSDI_PERSO_NCK_UNBLOCKED:I = 0x10

.field public static final GSDI_PERSO_NW:I = 0x0

.field public static final GSDI_PERSO_NW_DEACTIVATED:I = 0x6

.field public static final GSDI_PERSO_NW_FAILURE:I = 0x1

.field public static final GSDI_PERSO_PPK_BLOCKED:I = 0xf

.field public static final GSDI_PERSO_PPK_UNBLOCKED:I = 0x14

.field public static final GSDI_PERSO_SIM:I = 0x4

.field public static final GSDI_PERSO_SIM_DEACTIVATED:I = 0xa

.field public static final GSDI_PERSO_SIM_FAILURE:I = 0x5

.field public static final GSDI_PERSO_UNKNOWN:I = 0x0

.field public static final GSDI_SLOT_1:I = 0x1

.field public static final GSDI_SLOT_2:I = 0x2

.field private static final GSDI_SUCCESS:I = 0x0

.field public static final INVALID_NUM_OF_RETRY:I = 0xff

.field public static final PERSO_EVENT:Ljava/lang/String; = "com.android.internal.telephony.gsm.SkyUsimPerso.PERSO_EVENT"

.field public static final TAG:Ljava/lang/String; = "SKY USIM PERSO"

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
    .line 49
    new-instance v0, Lcom/android/internal/telephony/SkyQcRilHook;

    invoke-direct {v0}, Lcom/android/internal/telephony/SkyQcRilHook;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkyUsimPerso;->mHook:Lcom/android/internal/telephony/SkyQcRilHook;

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.internal.telephony.gsm.SkyUsimPerso.PERSO_EVENT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.internal.telephony.gsm.SkyUsimPerso.CARD_REMOVED_EVENT"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/SkyUsimPerso;->eventList:[Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkyUsimPerso;->map:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SkyUsimPerso;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SkyUsimPerso;->context:Landroid/content/Context;

    .line 62
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SkyUsimPerso;->mH:Landroid/os/Handler;

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SkyUsimPerso;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SkyUsimPerso;->context:Landroid/content/Context;

    .line 62
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SkyUsimPerso;->mH:Landroid/os/Handler;

    .line 94
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SkyUsimPerso;->context:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/SkyUsimPerso;->mH:Landroid/os/Handler;

    .line 97
    new-instance v0, Lcom/android/internal/telephony/gsm/SkyUsimPerso$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SkyUsimPerso$1;-><init>(Lcom/android/internal/telephony/gsm/SkyUsimPerso;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SkyUsimPerso;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 115
    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/internal/telephony/gsm/SkyUsimPerso;->map:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/SkyUsimPerso;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyUsimPerso;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyUsimPerso;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method public static getEvent([B)I
    .locals 2
    .param p0, "raw"    # [B

    .prologue
    .line 77
    invoke-static {p0}, Lcom/android/internal/telephony/SkyQcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 78
    .local v0, "output":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    return v1
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
    .line 126
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SkyUsimPerso;->context:Landroid/content/Context;

    if-nez v6, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SkyUsimPerso;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v6, :cond_0

    .line 129
    const/4 v1, 0x0

    .line 130
    .local v1, "found":Z
    sget-object v0, Lcom/android/internal/telephony/gsm/SkyUsimPerso;->eventList:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 132
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 134
    const/4 v1, 0x1

    .line 138
    .end local v4    # "s":Ljava/lang/String;
    :cond_2
    if-nez v1, :cond_4

    new-instance v6, Ljava/lang/Exception;

    const-string v7, "It not invalid event"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 130
    .restart local v4    # "s":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 140
    .end local v4    # "s":Ljava/lang/String;
    :cond_4
    sget-object v6, Lcom/android/internal/telephony/gsm/SkyUsimPerso;->map:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 141
    .local v5, "w":Ljava/lang/Integer;
    if-eqz v5, :cond_5

    new-instance v6, Ljava/lang/Exception;

    const-string v7, "It is already registered"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 143
    :cond_5
    sget-object v6, Lcom/android/internal/telephony/gsm/SkyUsimPerso;->map:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SkyUsimPerso;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SkyUsimPerso;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    const-string v6, "SKY USIM PERSO"

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
    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyUsimPerso;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyUsimPerso;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyUsimPerso;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyUsimPerso;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 159
    sget-object v0, Lcom/android/internal/telephony/gsm/SkyUsimPerso;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 160
    const-string v0, "SKY USIM PERSO"

    const-string v1, "Unregistered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
