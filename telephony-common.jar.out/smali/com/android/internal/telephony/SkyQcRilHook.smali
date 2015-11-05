.class public Lcom/android/internal/telephony/SkyQcRilHook;
.super Lcom/android/internal/telephony/QcRilHook;
.source "SkyQcRilHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/internal/telephony/QcRilHook;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public sendQcRilHookMsg(Ljava/lang/String;)Landroid/os/AsyncResult;
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/SkyQcRilHook;->sendQcRilHookMsg(Ljava/lang/String;[B)Landroid/os/AsyncResult;

    move-result-object v0

    return-object v0
.end method

.method public sendQcRilHookMsg(Ljava/lang/String;[B)Landroid/os/AsyncResult;
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "payload"    # [B

    .prologue
    .line 36
    if-nez p2, :cond_0

    const/4 v2, 0x1

    new-array p2, v2, [B

    .line 38
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    array-length v3, p2

    add-int/2addr v2, v3

    new-array v1, v2, [B

    .line 39
    .local v1, "request":[B
    invoke-static {v1}, Lcom/android/internal/telephony/SkyQcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 41
    .local v0, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 42
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 43
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 45
    const v2, 0x90001

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/SkyQcRilHook;->sendQcRilHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method
