.class public Lcom/android/internal/telephony/gsm/SkySupSvc;
.super Ljava/lang/Object;
.source "SkySupSvc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;,
        Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;,
        Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;,
        Lcom/android/internal/telephony/gsm/SkySupSvc$SsError;,
        Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;,
        Lcom/android/internal/telephony/gsm/SkySupSvc$SsStatus;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SKY SUP SVC"

.field private static mHook:Lcom/android/internal/telephony/SkyQcRilHook;


# instance fields
.field public confType:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

.field public error:Lcom/android/internal/telephony/gsm/SkySupSvc$SsError;

.field public ssCode:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public ssOperation:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

.field public ssRef:I

.field public ssSuccess:Z

.field public status:Lcom/android/internal/telephony/gsm/SkySupSvc$SsStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/android/internal/telephony/SkyQcRilHook;

    invoke-direct {v0}, Lcom/android/internal/telephony/SkyQcRilHook;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc;->mHook:Lcom/android/internal/telephony/SkyQcRilHook;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->ALL_SS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SkySupSvc;->ssCode:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 22
    sget-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->NO_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SkySupSvc;->confType:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    .line 23
    sget-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->null_operation:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SkySupSvc;->ssOperation:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    .line 25
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsStatus;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsStatus;-><init>(Lcom/android/internal/telephony/gsm/SkySupSvc;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SkySupSvc;->status:Lcom/android/internal/telephony/gsm/SkySupSvc$SsStatus;

    .line 26
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsError;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsError;-><init>(Lcom/android/internal/telephony/gsm/SkySupSvc;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SkySupSvc;->error:Lcom/android/internal/telephony/gsm/SkySupSvc$SsError;

    .line 32
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SkySupSvc;->getLatestSsResult()Lcom/android/internal/telephony/gsm/SkySupSvc;

    .line 33
    return-void
.end method


# virtual methods
.method public getLatestSsResult()Lcom/android/internal/telephony/gsm/SkySupSvc;
    .locals 24

    .prologue
    .line 49
    sget-object v22, Lcom/android/internal/telephony/gsm/SkySupSvc;->mHook:Lcom/android/internal/telephony/SkyQcRilHook;

    const-string v23, "qcril_cm_supsvc.getLatestSsResult"

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/telephony/SkyQcRilHook;->sendQcRilHookMsg(Ljava/lang/String;)Landroid/os/AsyncResult;

    move-result-object v8

    .line 51
    .local v8, "result":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_f

    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    if-eqz v22, :cond_f

    .line 69
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [B

    check-cast v22, [B

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SkyQcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 70
    .local v7, "output":Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v15

    .line 71
    .local v15, "ssRefRil":I
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 72
    .local v10, "ssCodeRil":I
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 73
    .local v4, "confTypeRil":I
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    .line 74
    .local v14, "ssOperationRil":I
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v21

    .line 75
    .local v21, "ssSuccessRil":I
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v16

    .line 76
    .local v16, "ssStatusPresentRil":I
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v18

    .line 77
    .local v18, "ssStatusSsOperativeRil":I
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v19

    .line 78
    .local v19, "ssStatusSsProvisionedRil":I
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v20

    .line 79
    .local v20, "ssStatusSsRegisteredRil":I
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v17

    .line 80
    .local v17, "ssStatusSsActiveRil":I
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    .line 81
    .local v13, "ssErrorPresentRil":I
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    .line 82
    .local v12, "ssErrorCodeTagRil":I
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    .line 83
    .local v11, "ssErrorCodeRil":I
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 86
    .local v2, "SsErrorTypeRil":I
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/telephony/gsm/SkySupSvc;->ssRef:I

    .line 87
    invoke-static {}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->values()[Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    move-result-object v3

    .local v3, "arr$":[Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;
    array-length v6, v3

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v9, v3, v5

    .line 89
    .local v9, "s":Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->getCode()I

    move-result v22

    move/from16 v0, v22

    if-ne v0, v10, :cond_4

    .line 91
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/internal/telephony/gsm/SkySupSvc;->ssCode:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 96
    .end local v9    # "s":Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->values()[Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    move-result-object v3

    .local v3, "arr$":[Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;
    array-length v6, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v9, v3, v5

    .line 98
    .local v9, "s":Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->getConf()I

    move-result v22

    move/from16 v0, v22

    if-ne v0, v4, :cond_5

    .line 100
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/internal/telephony/gsm/SkySupSvc;->confType:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    .line 105
    .end local v9    # "s":Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->values()[Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    move-result-object v3

    .local v3, "arr$":[Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;
    array-length v6, v3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_2

    aget-object v9, v3, v5

    .line 107
    .local v9, "s":Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->getCode()I

    move-result v22

    move/from16 v0, v22

    if-ne v0, v14, :cond_6

    .line 109
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/internal/telephony/gsm/SkySupSvc;->ssOperation:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    .line 114
    .end local v9    # "s":Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;
    :cond_2
    if-lez v21, :cond_7

    const/16 v22, 0x1

    :goto_3
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SkySupSvc;->ssSuccess:Z

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SkySupSvc;->status:Lcom/android/internal/telephony/gsm/SkySupSvc$SsStatus;

    move-object/from16 v23, v0

    if-lez v16, :cond_8

    const/16 v22, 0x1

    :goto_4
    move/from16 v0, v22

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SkySupSvc$SsStatus;->present:Z

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SkySupSvc;->status:Lcom/android/internal/telephony/gsm/SkySupSvc$SsStatus;

    move-object/from16 v23, v0

    if-lez v18, :cond_9

    const/16 v22, 0x1

    :goto_5
    move/from16 v0, v22

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SkySupSvc$SsStatus;->ssOprative:Z

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SkySupSvc;->status:Lcom/android/internal/telephony/gsm/SkySupSvc$SsStatus;

    move-object/from16 v23, v0

    if-lez v19, :cond_a

    const/16 v22, 0x1

    :goto_6
    move/from16 v0, v22

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SkySupSvc$SsStatus;->ssProvisioned:Z

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SkySupSvc;->status:Lcom/android/internal/telephony/gsm/SkySupSvc$SsStatus;

    move-object/from16 v23, v0

    if-lez v20, :cond_b

    const/16 v22, 0x1

    :goto_7
    move/from16 v0, v22

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SkySupSvc$SsStatus;->ssregistered:Z

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SkySupSvc;->status:Lcom/android/internal/telephony/gsm/SkySupSvc$SsStatus;

    move-object/from16 v23, v0

    if-lez v17, :cond_c

    const/16 v22, 0x1

    :goto_8
    move/from16 v0, v22

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SkySupSvc$SsStatus;->ssActive:Z

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SkySupSvc;->error:Lcom/android/internal/telephony/gsm/SkySupSvc$SsError;

    move-object/from16 v23, v0

    if-lez v13, :cond_d

    const/16 v22, 0x1

    :goto_9
    move/from16 v0, v22

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SkySupSvc$SsError;->present:Z

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SkySupSvc;->error:Lcom/android/internal/telephony/gsm/SkySupSvc$SsError;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput v12, v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsError;->errorCodeTag:I

    .line 124
    invoke-static {}, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;->values()[Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    move-result-object v3

    .local v3, "arr$":[Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;
    array-length v6, v3

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v6, :cond_3

    aget-object v9, v3, v5

    .line 126
    .local v9, "s":Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;->getCode()I

    move-result v22

    move/from16 v0, v22

    if-ne v0, v11, :cond_e

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SkySupSvc;->error:Lcom/android/internal/telephony/gsm/SkySupSvc$SsError;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v9, v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsError;->errorCode:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    .line 132
    .end local v9    # "s":Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SkySupSvc;->error:Lcom/android/internal/telephony/gsm/SkySupSvc$SsError;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput v2, v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsError;->errorType:I

    .line 140
    .end local v2    # "SsErrorTypeRil":I
    .end local v3    # "arr$":[Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;
    .end local v4    # "confTypeRil":I
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "output":Ljava/nio/ByteBuffer;
    .end local v10    # "ssCodeRil":I
    .end local v11    # "ssErrorCodeRil":I
    .end local v12    # "ssErrorCodeTagRil":I
    .end local v13    # "ssErrorPresentRil":I
    .end local v14    # "ssOperationRil":I
    .end local v15    # "ssRefRil":I
    .end local v16    # "ssStatusPresentRil":I
    .end local v17    # "ssStatusSsActiveRil":I
    .end local v18    # "ssStatusSsOperativeRil":I
    .end local v19    # "ssStatusSsProvisionedRil":I
    .end local v20    # "ssStatusSsRegisteredRil":I
    .end local v21    # "ssSuccessRil":I
    :goto_b
    return-object p0

    .line 87
    .restart local v2    # "SsErrorTypeRil":I
    .local v3, "arr$":[Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;
    .restart local v4    # "confTypeRil":I
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    .restart local v7    # "output":Ljava/nio/ByteBuffer;
    .local v9, "s":Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;
    .restart local v10    # "ssCodeRil":I
    .restart local v11    # "ssErrorCodeRil":I
    .restart local v12    # "ssErrorCodeTagRil":I
    .restart local v13    # "ssErrorPresentRil":I
    .restart local v14    # "ssOperationRil":I
    .restart local v15    # "ssRefRil":I
    .restart local v16    # "ssStatusPresentRil":I
    .restart local v17    # "ssStatusSsActiveRil":I
    .restart local v18    # "ssStatusSsOperativeRil":I
    .restart local v19    # "ssStatusSsProvisionedRil":I
    .restart local v20    # "ssStatusSsRegisteredRil":I
    .restart local v21    # "ssSuccessRil":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 96
    .local v3, "arr$":[Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;
    .local v9, "s":Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 105
    .local v3, "arr$":[Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;
    .local v9, "s":Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 114
    .end local v9    # "s":Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;
    :cond_7
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 116
    :cond_8
    const/16 v22, 0x0

    goto/16 :goto_4

    .line 117
    :cond_9
    const/16 v22, 0x0

    goto/16 :goto_5

    .line 118
    :cond_a
    const/16 v22, 0x0

    goto/16 :goto_6

    .line 119
    :cond_b
    const/16 v22, 0x0

    goto :goto_7

    .line 120
    :cond_c
    const/16 v22, 0x0

    goto :goto_8

    .line 122
    :cond_d
    const/16 v22, 0x0

    goto :goto_9

    .line 124
    .local v3, "arr$":[Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;
    .local v9, "s":Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;
    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 136
    .end local v2    # "SsErrorTypeRil":I
    .end local v3    # "arr$":[Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;
    .end local v4    # "confTypeRil":I
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "output":Ljava/nio/ByteBuffer;
    .end local v9    # "s":Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;
    .end local v10    # "ssCodeRil":I
    .end local v11    # "ssErrorCodeRil":I
    .end local v12    # "ssErrorCodeTagRil":I
    .end local v13    # "ssErrorPresentRil":I
    .end local v14    # "ssOperationRil":I
    .end local v15    # "ssRefRil":I
    .end local v16    # "ssStatusPresentRil":I
    .end local v17    # "ssStatusSsActiveRil":I
    .end local v18    # "ssStatusSsOperativeRil":I
    .end local v19    # "ssStatusSsProvisionedRil":I
    .end local v20    # "ssStatusSsRegisteredRil":I
    .end local v21    # "ssSuccessRil":I
    :cond_f
    const-string v22, "SKY SUP SVC"

    const-string v23, "Get latest result error"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public testUssd(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    .line 369
    const/4 v3, 0x4

    new-array v1, v3, [B

    .line 371
    .local v1, "input":[B
    invoke-static {v1}, Lcom/android/internal/telephony/SkyQcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 372
    .local v0, "inBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 374
    sget-object v3, Lcom/android/internal/telephony/gsm/SkySupSvc;->mHook:Lcom/android/internal/telephony/SkyQcRilHook;

    const-string v4, "qcril_cm_supsvc.testUssd"

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/telephony/SkyQcRilHook;->sendQcRilHookMsg(Ljava/lang/String;[B)Landroid/os/AsyncResult;

    move-result-object v2

    .line 376
    .local v2, "result":Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 378
    const-string v3, "SKY SUP SVC"

    const-string v4, "Success testUssd"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :goto_0
    return-void

    .line 382
    :cond_0
    const-string v3, "SKY SUP SVC"

    const-string v4, "Get latest result error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ssRef="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SkySupSvc;->ssRef:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ssCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkySupSvc;->ssCode:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", confType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkySupSvc;->confType:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ssOperation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkySupSvc;->ssOperation:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ssSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SkySupSvc;->ssSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkySupSvc;->status:Lcom/android/internal/telephony/gsm/SkySupSvc$SsStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkySupSvc;->error:Lcom/android/internal/telephony/gsm/SkySupSvc$SsError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
