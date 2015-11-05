.class public Lcom/android/internal/telephony/gsm/SkyCmUtil;
.super Ljava/lang/Object;
.source "SkyCmUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SKY CM UTIL"

.field private static mHook:Lcom/android/internal/telephony/SkyQcRilHook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/android/internal/telephony/SkyQcRilHook;

    invoke-direct {v0}, Lcom/android/internal/telephony/SkyQcRilHook;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkyCmUtil;->mHook:Lcom/android/internal/telephony/SkyQcRilHook;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteAcqDb()Z
    .locals 3

    .prologue
    .line 18
    sget-object v1, Lcom/android/internal/telephony/gsm/SkyCmUtil;->mHook:Lcom/android/internal/telephony/SkyQcRilHook;

    const-string v2, "qcril_cm.deleteAcqDb"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SkyQcRilHook;->sendQcRilHookMsg(Ljava/lang/String;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 20
    .local v0, "result":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 22
    const-string v1, "SKY CM UTIL"

    const-string v2, "Success deleteAcqDb"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    const/4 v1, 0x1

    .line 28
    :goto_0
    return v1

    .line 27
    :cond_0
    const-string v1, "SKY CM UTIL"

    const-string v2, "Error deleteAcqDb"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const/4 v1, 0x0

    goto :goto_0
.end method
