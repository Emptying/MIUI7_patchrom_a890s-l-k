.class public Lcom/android/internal/telephony/SkyLocalDb;
.super Ljava/lang/Object;
.source "SkyLocalDb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SkyLocalDb$ManualRegStart;,
        Lcom/android/internal/telephony/SkyLocalDb$SkyLocalDbBase;
    }
.end annotation


# static fields
.field private static final LTE_BW_NRB_100:I = 0x64

.field private static final LTE_BW_NRB_15:I = 0xf

.field private static final LTE_BW_NRB_25:I = 0x19

.field private static final LTE_BW_NRB_50:I = 0x32

.field private static final LTE_BW_NRB_6:I = 0x6

.field private static final LTE_BW_NRB_75:I = 0x4b

.field private static LTE_BW_NRB_TABLE:Ljava/util/Hashtable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SKY LOCAL DB"

.field static hook:Lcom/android/internal/telephony/SkyQcRilHook;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    new-instance v0, Lcom/android/internal/telephony/SkyQcRilHook;

    invoke-direct {v0}, Lcom/android/internal/telephony/SkyQcRilHook;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SkyLocalDb;->hook:Lcom/android/internal/telephony/SkyQcRilHook;

    .line 26
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SkyLocalDb;->LTE_BW_NRB_TABLE:Ljava/util/Hashtable;

    .line 43
    sget-object v0, Lcom/android/internal/telephony/SkyLocalDb;->LTE_BW_NRB_TABLE:Ljava/util/Hashtable;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "1.4 MHz"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/android/internal/telephony/SkyLocalDb;->LTE_BW_NRB_TABLE:Ljava/util/Hashtable;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "3 MHz"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/android/internal/telephony/SkyLocalDb;->LTE_BW_NRB_TABLE:Ljava/util/Hashtable;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "5 MHz"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/android/internal/telephony/SkyLocalDb;->LTE_BW_NRB_TABLE:Ljava/util/Hashtable;

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "10 MHz"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/android/internal/telephony/SkyLocalDb;->LTE_BW_NRB_TABLE:Ljava/util/Hashtable;

    const/16 v1, 0x4b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "15 MHz"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/android/internal/telephony/SkyLocalDb;->LTE_BW_NRB_TABLE:Ljava/util/Hashtable;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "20 MHz"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method static synthetic access$000(Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Landroid/os/AsyncResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-static {p0}, Lcom/android/internal/telephony/SkyLocalDb;->checkResult(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private static checkResult(Landroid/os/AsyncResult;)V
    .locals 3
    .param p0, "result"    # Landroid/os/AsyncResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v1, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 107
    .local v0, "data":[B
    iget-object v1, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 109
    const-string v1, "SKY LOCAL DB"

    const-string v2, "operation exception occurred"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v1, Ljava/io/IOException;

    const-string v2, "operation fail"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    :cond_0
    if-nez v0, :cond_1

    .line 115
    const-string v1, "SKY LOCAL DB"

    const-string v2, "error: output is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v1, Ljava/io/IOException;

    const-string v2, "output is null"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    :cond_1
    array-length v1, v0

    if-nez v1, :cond_2

    .line 121
    const-string v1, "SKY LOCAL DB"

    const-string v2, "error: output size is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Couldn\'t get data for NV item"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_2
    return-void
.end method
