.class public Lcom/android/internal/telephony/SkyLocalDb$ManualRegStart;
.super Ljava/lang/Object;
.source "SkyLocalDb.java"

# interfaces
.implements Lcom/android/internal/telephony/SkyLocalDb$SkyLocalDbBase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SkyLocalDb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ManualRegStart"
.end annotation


# instance fields
.field public status:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/SkyLocalDb$ManualRegStart;->status:Z

    return-void
.end method


# virtual methods
.method public get()Lcom/android/internal/telephony/SkyLocalDb$ManualRegStart;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 64
    sget-object v3, Lcom/android/internal/telephony/SkyLocalDb;->hook:Lcom/android/internal/telephony/SkyQcRilHook;

    const-string v4, "ld.getManualRegStart"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SkyQcRilHook;->sendQcRilHookMsg(Ljava/lang/String;)Landroid/os/AsyncResult;

    move-result-object v2

    .line 67
    .local v2, "result":Landroid/os/AsyncResult;
    :try_start_0
    # invokes: Lcom/android/internal/telephony/SkyLocalDb;->checkResult(Landroid/os/AsyncResult;)V
    invoke-static {v2}, Lcom/android/internal/telephony/SkyLocalDb;->access$000(Landroid/os/AsyncResult;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    invoke-static {v3}, Lcom/android/internal/telephony/SkyQcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 76
    .local v1, "output":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    if-nez v3, :cond_0

    iput-boolean v6, p0, Lcom/android/internal/telephony/SkyLocalDb$ManualRegStart;->status:Z

    .line 79
    .end local v1    # "output":Ljava/nio/ByteBuffer;
    :goto_0
    return-object p0

    .line 68
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "SKY LOCAL DB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Fail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 77
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "output":Ljava/nio/ByteBuffer;
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/SkyLocalDb$ManualRegStart;->status:Z

    goto :goto_0
.end method

.method public bridge synthetic get()Lcom/android/internal/telephony/SkyLocalDb$SkyLocalDbBase;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/internal/telephony/SkyLocalDb$ManualRegStart;->get()Lcom/android/internal/telephony/SkyLocalDb$ManualRegStart;

    move-result-object v0

    return-object v0
.end method

.method public set()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 84
    new-array v0, v3, [B

    .line 85
    .local v0, "input":[B
    iget-boolean v2, p0, Lcom/android/internal/telephony/SkyLocalDb$ManualRegStart;->status:Z

    if-ne v2, v3, :cond_1

    aput-byte v3, v0, v5

    .line 88
    :goto_0
    sget-object v2, Lcom/android/internal/telephony/SkyLocalDb;->hook:Lcom/android/internal/telephony/SkyQcRilHook;

    const-string v3, "ld.setManualRegStart"

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/SkyQcRilHook;->sendQcRilHookMsg(Ljava/lang/String;[B)Landroid/os/AsyncResult;

    move-result-object v1

    .line 89
    .local v1, "result":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 91
    const-string v2, "SKY LOCAL DB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    return-void

    .line 86
    .end local v1    # "result":Landroid/os/AsyncResult;
    :cond_1
    aput-byte v5, v0, v5

    goto :goto_0
.end method

.method public set(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/internal/telephony/SkyLocalDb$ManualRegStart;->status:Z

    .line 98
    invoke-virtual {p0}, Lcom/android/internal/telephony/SkyLocalDb$ManualRegStart;->set()V

    .line 99
    return-void
.end method
