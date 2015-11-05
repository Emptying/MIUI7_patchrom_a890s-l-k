.class Lcom/android/internal/telephony/QcRilHook$1;
.super Landroid/content/BroadcastReceiver;
.source "QcRilHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/QcRilHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/QcRilHook;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/QcRilHook;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/internal/telephony/QcRilHook$1;->this$0:Lcom/android/internal/telephony/QcRilHook;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x0

    .line 160
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "action":Ljava/lang/String;
    const-string v9, "android.intent.action.ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 162
    const/4 v8, 0x0

    .line 163
    .local v8, "response_id":I
    const-string v9, "TELEPHONY_QC_RIL_OEM_HOOK"

    const-string v10, "Received Broadcast Intent ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string v9, "payload"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    .line 168
    .local v4, "payload":[B
    if-eqz v4, :cond_0

    .line 170
    array-length v9, v4

    iget-object v10, p0, Lcom/android/internal/telephony/QcRilHook$1;->this$0:Lcom/android/internal/telephony/QcRilHook;

    # getter for: Lcom/android/internal/telephony/QcRilHook;->mHeaderSize:I
    invoke-static {v10}, Lcom/android/internal/telephony/QcRilHook;->access$000(Lcom/android/internal/telephony/QcRilHook;)I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 171
    const-string v9, "TELEPHONY_QC_RIL_OEM_HOOK"

    const-string v10, "UNSOL_RESPONSE_OEM_HOOK_RAW incomplete header"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v9, "TELEPHONY_QC_RIL_OEM_HOOK"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Expected "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/QcRilHook$1;->this$0:Lcom/android/internal/telephony/QcRilHook;

    # getter for: Lcom/android/internal/telephony/QcRilHook;->mHeaderSize:I
    invoke-static {v11}, Lcom/android/internal/telephony/QcRilHook;->access$000(Lcom/android/internal/telephony/QcRilHook;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " bytes. Received "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " bytes."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .end local v4    # "payload":[B
    .end local v8    # "response_id":I
    :cond_0
    :goto_0
    return-void

    .line 176
    .restart local v4    # "payload":[B
    .restart local v8    # "response_id":I
    :cond_1
    invoke-static {v4}, Lcom/android/internal/telephony/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 177
    .local v7, "response":Ljava/nio/ByteBuffer;
    const-string v9, "QOEMHOOK"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    new-array v2, v9, [B

    .line 178
    .local v2, "oem_id_bytes":[B
    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 179
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 180
    .local v3, "oem_id_str":Ljava/lang/String;
    const-string v9, "TELEPHONY_QC_RIL_OEM_HOOK"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Oem ID in QCRILHOOK UNSOL RESP is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string v9, "QOEMHOOK"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 182
    const-string v9, "TELEPHONY_QC_RIL_OEM_HOOK"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Incorrect Oem ID in QCRILHOOK UNSOL RESP. Expected QOEMHOOK. Received "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 187
    :cond_2
    array-length v9, v4

    const-string v10, "QOEMHOOK"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    sub-int v6, v9, v10

    .line 188
    .local v6, "remainingSize":I
    if-lez v6, :cond_0

    .line 189
    new-array v5, v6, [B

    .line 191
    .local v5, "remainingPayload":[B
    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 197
    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v12, v5, v12}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 198
    .local v1, "ar":Landroid/os/AsyncResult;
    invoke-static {v1}, Lcom/android/internal/telephony/QcRilHook;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 203
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "oem_id_bytes":[B
    .end local v3    # "oem_id_str":Ljava/lang/String;
    .end local v4    # "payload":[B
    .end local v5    # "remainingPayload":[B
    .end local v6    # "remainingSize":I
    .end local v7    # "response":Ljava/nio/ByteBuffer;
    .end local v8    # "response_id":I
    :cond_3
    const-string v9, "TELEPHONY_QC_RIL_OEM_HOOK"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Received Unknown Intent: action = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
