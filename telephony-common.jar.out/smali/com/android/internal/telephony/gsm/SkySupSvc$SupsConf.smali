.class public final enum Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;
.super Ljava/lang/Enum;
.source "SkySupSvc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SkySupSvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SupsConf"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

.field public static final enum BSG_LIST_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

.field public static final enum CALLED_PARTY_NUM_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

.field public static final enum CALL_BARRING_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

.field public static final enum CCBS_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

.field public static final enum CC_CAUSE_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

.field public static final enum CLI_RESTRICTION_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

.field public static final enum CUG_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

.field public static final enum FWD_FEATURE_LIST_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

.field public static final enum FWD_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

.field public static final enum FWD_TO_NUM_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

.field public static final enum LCS_MOLR_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

.field public static final enum LL_CAUSE_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

.field public static final enum NEW_PWD_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

.field public static final enum NO_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

.field public static final enum SS_DATA_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

.field public static final enum SS_ERROR_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

.field public static final enum SS_STATUS_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

.field public static final enum UNKNOWN_CONF_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

.field public static final enum USSD_DATA_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

.field public static final enum USS_DATA_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;


# instance fields
.field private conf:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 290
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    const-string v1, "FWD_INFO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->FWD_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    .line 291
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    const-string v1, "FWD_TO_NUM_INFO"

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->FWD_TO_NUM_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    .line 292
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    const-string v1, "FWD_FEATURE_LIST_INFO"

    invoke-direct {v0, v1, v5, v6}, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->FWD_FEATURE_LIST_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    .line 293
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    const-string v1, "CALL_BARRING_INFO"

    invoke-direct {v0, v1, v6, v7}, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->CALL_BARRING_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    .line 294
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    const-string v1, "CLI_RESTRICTION_INFO"

    invoke-direct {v0, v1, v7, v8}, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->CLI_RESTRICTION_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    .line 295
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    const-string v1, "CALLED_PARTY_NUM_INFO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->CALLED_PARTY_NUM_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    .line 296
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    const-string v1, "CUG_INFO"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->CUG_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    .line 297
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    const-string v1, "BSG_LIST_INFO"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->BSG_LIST_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    .line 298
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    const-string v1, "USS_DATA_INFO"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->USS_DATA_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    .line 299
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    const-string v1, "USSD_DATA_INFO"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->USSD_DATA_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    .line 300
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    const-string v1, "NEW_PWD_INFO"

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->NEW_PWD_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    .line 301
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    const-string v1, "LCS_MOLR_INFO"

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->LCS_MOLR_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    .line 302
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    const-string v1, "SS_DATA_INFO"

    const/16 v2, 0xc

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->SS_DATA_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    .line 303
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    const-string v1, "SS_STATUS_INFO"

    const/16 v2, 0xd

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->SS_STATUS_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    .line 304
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    const-string v1, "SS_ERROR_INFO"

    const/16 v2, 0xe

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->SS_ERROR_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    .line 305
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    const-string v1, "CC_CAUSE_INFO"

    const/16 v2, 0xf

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->CC_CAUSE_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    .line 306
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    const-string v1, "LL_CAUSE_INFO"

    const/16 v2, 0x10

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->LL_CAUSE_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    .line 307
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    const-string v1, "UNKNOWN_CONF_INFO"

    const/16 v2, 0x11

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->UNKNOWN_CONF_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    .line 308
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    const-string v1, "CCBS_INFO"

    const/16 v2, 0x12

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->CCBS_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    .line 309
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    const-string v1, "NO_INFO"

    const/16 v2, 0x13

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->NO_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    .line 288
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->FWD_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->FWD_TO_NUM_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->FWD_FEATURE_LIST_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->CALL_BARRING_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->CLI_RESTRICTION_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->CALLED_PARTY_NUM_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->CUG_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->BSG_LIST_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->USS_DATA_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->USSD_DATA_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->NEW_PWD_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->LCS_MOLR_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->SS_DATA_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->SS_STATUS_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->SS_ERROR_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->CC_CAUSE_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->LL_CAUSE_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->UNKNOWN_CONF_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->CCBS_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->NO_INFO:Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->$VALUES:[Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "conf"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 314
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 311
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->conf:I

    .line 315
    iput p3, p0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->conf:I

    .line 316
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 288
    const-class v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;
    .locals 1

    .prologue
    .line 288
    sget-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->$VALUES:[Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;

    return-object v0
.end method


# virtual methods
.method public getConf()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Lcom/android/internal/telephony/gsm/SkySupSvc$SupsConf;->conf:I

    return v0
.end method
