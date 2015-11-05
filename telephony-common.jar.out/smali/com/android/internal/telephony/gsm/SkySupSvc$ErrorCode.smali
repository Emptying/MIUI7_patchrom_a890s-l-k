.class public final enum Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;
.super Ljava/lang/Enum;
.source "SkySupSvc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SkySupSvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

.field public static final enum BEARER_SVC_NOT_PROVISIONED:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

.field public static final enum CELL_BARRED:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

.field public static final enum DATA_MISSING:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

.field public static final enum ILLEGAL_SS_OPERATION:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

.field public static final enum NEGATIVE_PW_CHECK:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

.field public static final enum NUM_OF_PW_ATTEMPT_VIOLATION:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

.field public static final enum PW_REG_FAIL:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

.field public static final enum SS_ERROR_STATUS:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

.field public static final enum SS_IMCOMPABILITY:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

.field public static final enum SS_NOT_AVAILABLE:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

.field public static final enum SS_SUBSCRIPTION_VIOLATION:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

.field public static final enum SYSTEM_FAILURE:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

.field public static final enum TELESERVICE_NOT_PROVISIONED:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

.field public static final enum UNEXPECTED_DATA_VALUE:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

.field public static final enum UNKNOWN_ERROR_CODE:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

.field public static final enum UNKNOWN_SUBSCRIBER:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0xd

    const/16 v6, 0xb

    const/16 v5, 0xa

    const/4 v4, 0x1

    .line 164
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    const-string v1, "PW_REG_FAIL"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v8, v2}, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;->PW_REG_FAIL:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    .line 165
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    const-string v1, "NEGATIVE_PW_CHECK"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;->NEGATIVE_PW_CHECK:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    .line 166
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    const-string v1, "NUM_OF_PW_ATTEMPT_VIOLATION"

    const/4 v2, 0x2

    const/16 v3, 0x2b

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;->NUM_OF_PW_ATTEMPT_VIOLATION:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    .line 167
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    const-string v1, "UNKNOWN_SUBSCRIBER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;->UNKNOWN_SUBSCRIBER:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    .line 168
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    const-string v1, "BEARER_SVC_NOT_PROVISIONED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v5}, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;->BEARER_SVC_NOT_PROVISIONED:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    .line 169
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    const-string v1, "TELESERVICE_NOT_PROVISIONED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v6}, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;->TELESERVICE_NOT_PROVISIONED:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    .line 170
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    const-string v1, "CELL_BARRED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v7}, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;->CELL_BARRED:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    .line 171
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    const-string v1, "ILLEGAL_SS_OPERATION"

    const/4 v2, 0x7

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;->ILLEGAL_SS_OPERATION:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    .line 172
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    const-string v1, "SS_ERROR_STATUS"

    const/16 v2, 0x8

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;->SS_ERROR_STATUS:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    .line 173
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    const-string v1, "SS_NOT_AVAILABLE"

    const/16 v2, 0x9

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;->SS_NOT_AVAILABLE:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    .line 174
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    const-string v1, "SS_SUBSCRIPTION_VIOLATION"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v5, v2}, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;->SS_SUBSCRIPTION_VIOLATION:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    .line 175
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    const-string v1, "SS_IMCOMPABILITY"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v6, v2}, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;->SS_IMCOMPABILITY:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    .line 176
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    const-string v1, "SYSTEM_FAILURE"

    const/16 v2, 0xc

    const/16 v3, 0x22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;->SYSTEM_FAILURE:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    .line 177
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    const-string v1, "DATA_MISSING"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v7, v2}, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;->DATA_MISSING:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    .line 178
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    const-string v1, "UNEXPECTED_DATA_VALUE"

    const/16 v2, 0xe

    const/16 v3, 0x24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;->UNEXPECTED_DATA_VALUE:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    .line 179
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    const-string v1, "UNKNOWN_ERROR_CODE"

    const/16 v2, 0xf

    const/16 v3, 0xff

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;->UNKNOWN_ERROR_CODE:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    .line 162
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    sget-object v1, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;->PW_REG_FAIL:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;->NEGATIVE_PW_CHECK:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    aput-object v1, v0, v4

    const/4 v1, 0x2

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;->NUM_OF_PW_ATTEMPT_VIOLATION:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;->UNKNOWN_SUBSCRIBER:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;->BEARER_SVC_NOT_PROVISIONED:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;->TELESERVICE_NOT_PROVISIONED:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;->CELL_BARRED:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;->ILLEGAL_SS_OPERATION:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;->SS_ERROR_STATUS:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;->SS_NOT_AVAILABLE:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;->SS_SUBSCRIPTION_VIOLATION:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;->SS_IMCOMPABILITY:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    aput-object v1, v0, v6

    const/16 v1, 0xc

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;->SYSTEM_FAILURE:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;->DATA_MISSING:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    aput-object v1, v0, v7

    const/16 v1, 0xe

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;->UNEXPECTED_DATA_VALUE:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;->UNKNOWN_ERROR_CODE:Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;->$VALUES:[Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 184
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 185
    iput p3, p0, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;->code:I

    .line 186
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 162
    const-class v0, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;->$VALUES:[Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/android/internal/telephony/gsm/SkySupSvc$ErrorCode;->code:I

    return v0
.end method
