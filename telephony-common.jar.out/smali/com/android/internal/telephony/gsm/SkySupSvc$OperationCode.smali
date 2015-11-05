.class public final enum Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;
.super Ljava/lang/Enum;
.source "SkySupSvc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SkySupSvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OperationCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

.field public static final enum accessRegisterCCEntry:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

.field public static final enum activateSS:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

.field public static final enum buildMPTY:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

.field public static final enum callDeflection:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

.field public static final enum deactivateSS:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

.field public static final enum eraseCCEntry:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

.field public static final enum eraseSS:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

.field public static final enum explicitCT:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

.field public static final enum forwardCUG_Info:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

.field public static final enum forwardChargeAdvice:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

.field public static final enum forwardCheckSS_Indication:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

.field public static final enum getPassword:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

.field public static final enum holdMPTY:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

.field public static final enum interrogateSS:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

.field public static final enum lcs_LocationNotification:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

.field public static final enum lcs_MOLR:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

.field public static final enum notifySS:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

.field public static final enum null_operation:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

.field public static final enum processUnstructuredSS_Data:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

.field public static final enum processUnstructuredSS_Request:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

.field public static final enum registerPassword:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

.field public static final enum registerSS:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

.field public static final enum retrieveMPTY:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

.field public static final enum splitMPTY:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

.field public static final enum unstructuredSS_Notify:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

.field public static final enum unstructuredSS_Request:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

.field public static final enum userUserService:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0xe

    const/16 v7, 0xd

    const/16 v6, 0xc

    const/16 v5, 0xb

    const/16 v4, 0xa

    .line 326
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    const-string v1, "registerSS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->registerSS:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    .line 327
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    const-string v1, "eraseSS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v5}, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->eraseSS:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    .line 328
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    const-string v1, "activateSS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v6}, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->activateSS:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    .line 329
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    const-string v1, "deactivateSS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v7}, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->deactivateSS:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    .line 330
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    const-string v1, "interrogateSS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v8}, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->interrogateSS:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    .line 331
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    const-string v1, "notifySS"

    const/4 v2, 0x5

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->notifySS:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    .line 332
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    const-string v1, "registerPassword"

    const/4 v2, 0x6

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->registerPassword:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    .line 333
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    const-string v1, "getPassword"

    const/4 v2, 0x7

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->getPassword:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    .line 334
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    const-string v1, "processUnstructuredSS_Data"

    const/16 v2, 0x8

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->processUnstructuredSS_Data:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    .line 335
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    const-string v1, "forwardCheckSS_Indication"

    const/16 v2, 0x9

    const/16 v3, 0x26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->forwardCheckSS_Indication:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    .line 336
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    const-string v1, "processUnstructuredSS_Request"

    const/16 v2, 0x3b

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->processUnstructuredSS_Request:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    .line 337
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    const-string v1, "unstructuredSS_Request"

    const/16 v2, 0x3c

    invoke-direct {v0, v1, v5, v2}, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->unstructuredSS_Request:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    .line 338
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    const-string v1, "unstructuredSS_Notify"

    const/16 v2, 0x3d

    invoke-direct {v0, v1, v6, v2}, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->unstructuredSS_Notify:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    .line 339
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    const-string v1, "eraseCCEntry"

    const/16 v2, 0x4d

    invoke-direct {v0, v1, v7, v2}, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->eraseCCEntry:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    .line 340
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    const-string v1, "lcs_MOLR"

    const/16 v2, 0x73

    invoke-direct {v0, v1, v8, v2}, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->lcs_MOLR:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    .line 341
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    const-string v1, "lcs_LocationNotification"

    const/16 v2, 0xf

    const/16 v3, 0x74

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->lcs_LocationNotification:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    .line 342
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    const-string v1, "callDeflection"

    const/16 v2, 0x10

    const/16 v3, 0x75

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->callDeflection:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    .line 343
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    const-string v1, "userUserService"

    const/16 v2, 0x11

    const/16 v3, 0x76

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->userUserService:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    .line 344
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    const-string v1, "accessRegisterCCEntry"

    const/16 v2, 0x12

    const/16 v3, 0x77

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->accessRegisterCCEntry:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    .line 345
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    const-string v1, "forwardCUG_Info"

    const/16 v2, 0x13

    const/16 v3, 0x78

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->forwardCUG_Info:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    .line 346
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    const-string v1, "splitMPTY"

    const/16 v2, 0x14

    const/16 v3, 0x79

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->splitMPTY:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    .line 347
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    const-string v1, "retrieveMPTY"

    const/16 v2, 0x15

    const/16 v3, 0x7a

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->retrieveMPTY:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    .line 348
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    const-string v1, "holdMPTY"

    const/16 v2, 0x16

    const/16 v3, 0x7b

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->holdMPTY:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    .line 349
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    const-string v1, "buildMPTY"

    const/16 v2, 0x17

    const/16 v3, 0x7c

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->buildMPTY:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    .line 350
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    const-string v1, "forwardChargeAdvice"

    const/16 v2, 0x18

    const/16 v3, 0x7d

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->forwardChargeAdvice:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    .line 351
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    const-string v1, "explicitCT"

    const/16 v2, 0x19

    const/16 v3, 0x7e

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->explicitCT:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    .line 352
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    const-string v1, "null_operation"

    const/16 v2, 0x1a

    const/16 v3, 0xff

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->null_operation:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    .line 324
    const/16 v0, 0x1b

    new-array v0, v0, [Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->registerSS:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->eraseSS:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->activateSS:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->deactivateSS:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->interrogateSS:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->notifySS:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->registerPassword:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->getPassword:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->processUnstructuredSS_Data:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->forwardCheckSS_Indication:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->processUnstructuredSS_Request:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->unstructuredSS_Request:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->unstructuredSS_Notify:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->eraseCCEntry:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->lcs_MOLR:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    aput-object v1, v0, v8

    const/16 v1, 0xf

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->lcs_LocationNotification:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->callDeflection:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->userUserService:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->accessRegisterCCEntry:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->forwardCUG_Info:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->splitMPTY:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->retrieveMPTY:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->holdMPTY:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->buildMPTY:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->forwardChargeAdvice:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->explicitCT:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->null_operation:Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->$VALUES:[Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 357
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 354
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->code:I

    .line 358
    iput p3, p0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->code:I

    .line 359
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 324
    const-class v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;
    .locals 1

    .prologue
    .line 324
    sget-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->$VALUES:[Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lcom/android/internal/telephony/gsm/SkySupSvc$OperationCode;->code:I

    return v0
.end method
