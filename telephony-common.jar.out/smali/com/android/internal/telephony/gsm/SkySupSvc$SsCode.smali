.class public final enum Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;
.super Ljava/lang/Enum;
.source "SkySupSvc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SkySupSvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SsCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum ALL_ADDITIONAL_INFO_TARANSFER_SS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum ALL_CALL_COMPLETION_SS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum ALL_CALL_OFFERING_SS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum ALL_CALL_RESTRICTION_SS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum ALL_CHARGING_SS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum ALL_COMMUNITY_OF_INTEREST_SS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum ALL_COND_FORWARDING_SS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum ALL_FORWARDING_SS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum ALL_LINE_IDENTIFICATION_SS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum ALL_MULTIPARTY_SS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum ALL_PLMN_SPECIFIC_SS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum ALL_SS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum AOCC:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum AOCI:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum BAIC:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum BAOC:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum BARRING_OF_INCOMING_CALLS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum BARRING_OF_OUTGOING_CALLS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum BIC_ROAM:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum BOIC:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum BOIC_EXHC:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum CCBS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum CD:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum CFB:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum CFD:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum CFNRC:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum CFNRY:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum CFU:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum CHARGING_INFO_ID:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum CLIP:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum CLIR:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum CNAP:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum COLP:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum COLR:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum CUG:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum CW:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum ECT:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum HOLD:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum MAH:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum MCI:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum MULTI_PTY:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

.field public static final enum UUS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x13

    const/16 v7, 0x12

    const/16 v6, 0x11

    const/16 v5, 0x10

    const/4 v4, 0x0

    .line 213
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "ALL_SS"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->ALL_SS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 214
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "ALL_LINE_IDENTIFICATION_SS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v5}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->ALL_LINE_IDENTIFICATION_SS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 215
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "CLIP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v6}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->CLIP:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 217
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "CLIR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v7}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->CLIR:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 220
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "COLP"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v8}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->COLP:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 222
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "COLR"

    const/4 v2, 0x5

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->COLR:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 224
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "CNAP"

    const/4 v2, 0x6

    const/16 v3, 0x19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->CNAP:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 225
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "MCI"

    const/4 v2, 0x7

    const/16 v3, 0x1a

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->MCI:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 226
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "ALL_FORWARDING_SS"

    const/16 v2, 0x8

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->ALL_FORWARDING_SS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 227
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "CFU"

    const/16 v2, 0x9

    const/16 v3, 0x21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->CFU:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 228
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "CD"

    const/16 v2, 0xa

    const/16 v3, 0x24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->CD:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 229
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "ALL_COND_FORWARDING_SS"

    const/16 v2, 0xb

    const/16 v3, 0x28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->ALL_COND_FORWARDING_SS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 230
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "CFB"

    const/16 v2, 0xc

    const/16 v3, 0x29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->CFB:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 232
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "CFNRY"

    const/16 v2, 0xd

    const/16 v3, 0x2a

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->CFNRY:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 233
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "CFNRC"

    const/16 v2, 0xe

    const/16 v3, 0x2b

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->CFNRC:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 235
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "ALL_CALL_OFFERING_SS"

    const/16 v2, 0xf

    const/16 v3, 0x30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->ALL_CALL_OFFERING_SS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 236
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "ECT"

    const/16 v2, 0x31

    invoke-direct {v0, v1, v5, v2}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->ECT:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 237
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "MAH"

    const/16 v2, 0x32

    invoke-direct {v0, v1, v6, v2}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->MAH:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 238
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "ALL_CALL_COMPLETION_SS"

    const/16 v2, 0x40

    invoke-direct {v0, v1, v7, v2}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->ALL_CALL_COMPLETION_SS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 239
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "CW"

    const/16 v2, 0x41

    invoke-direct {v0, v1, v8, v2}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->CW:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 240
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "HOLD"

    const/16 v2, 0x14

    const/16 v3, 0x42

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->HOLD:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 241
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "CCBS"

    const/16 v2, 0x15

    const/16 v3, 0x43

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->CCBS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 243
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "ALL_MULTIPARTY_SS"

    const/16 v2, 0x16

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->ALL_MULTIPARTY_SS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 244
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "MULTI_PTY"

    const/16 v2, 0x17

    const/16 v3, 0x51

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->MULTI_PTY:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 245
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "ALL_COMMUNITY_OF_INTEREST_SS"

    const/16 v2, 0x18

    const/16 v3, 0x60

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->ALL_COMMUNITY_OF_INTEREST_SS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 247
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "CUG"

    const/16 v2, 0x19

    const/16 v3, 0x61

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->CUG:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 248
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "ALL_CHARGING_SS"

    const/16 v2, 0x1a

    const/16 v3, 0x70

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->ALL_CHARGING_SS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 250
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "AOCI"

    const/16 v2, 0x1b

    const/16 v3, 0x71

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->AOCI:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 251
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "AOCC"

    const/16 v2, 0x1c

    const/16 v3, 0x72

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->AOCC:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 253
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "ALL_ADDITIONAL_INFO_TARANSFER_SS"

    const/16 v2, 0x1d

    const/16 v3, 0x80

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->ALL_ADDITIONAL_INFO_TARANSFER_SS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 254
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "UUS"

    const/16 v2, 0x1e

    const/16 v3, 0x81

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->UUS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 255
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "ALL_CALL_RESTRICTION_SS"

    const/16 v2, 0x1f

    const/16 v3, 0x90

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->ALL_CALL_RESTRICTION_SS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 256
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "BARRING_OF_OUTGOING_CALLS"

    const/16 v2, 0x20

    const/16 v3, 0x91

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->BARRING_OF_OUTGOING_CALLS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 257
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "BAOC"

    const/16 v2, 0x21

    const/16 v3, 0x92

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->BAOC:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 258
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "BOIC"

    const/16 v2, 0x22

    const/16 v3, 0x93

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->BOIC:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 260
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "BOIC_EXHC"

    const/16 v2, 0x23

    const/16 v3, 0x94

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->BOIC_EXHC:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 263
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "BARRING_OF_INCOMING_CALLS"

    const/16 v2, 0x24

    const/16 v3, 0x99

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->BARRING_OF_INCOMING_CALLS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 264
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "BAIC"

    const/16 v2, 0x25

    const/16 v3, 0x9a

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->BAIC:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 265
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "BIC_ROAM"

    const/16 v2, 0x26

    const/16 v3, 0x9b

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->BIC_ROAM:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 268
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "ALL_PLMN_SPECIFIC_SS"

    const/16 v2, 0x27

    const/16 v3, 0xf0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->ALL_PLMN_SPECIFIC_SS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 271
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "CHARGING_INFO_ID"

    const/16 v2, 0x28

    const/16 v3, 0xa1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->CHARGING_INFO_ID:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 273
    new-instance v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    const-string v1, "CFD"

    const/16 v2, 0x29

    const/16 v3, 0xf9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->CFD:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    .line 211
    const/16 v0, 0x2a

    new-array v0, v0, [Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    sget-object v1, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->ALL_SS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v1, v0, v4

    const/4 v1, 0x1

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->ALL_LINE_IDENTIFICATION_SS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->CLIP:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->CLIR:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->COLP:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->COLR:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->CNAP:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->MCI:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->ALL_FORWARDING_SS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->CFU:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->CD:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->ALL_COND_FORWARDING_SS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->CFB:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->CFNRY:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->CFNRC:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->ALL_CALL_OFFERING_SS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->ECT:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->MAH:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->ALL_CALL_COMPLETION_SS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->CW:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v1, v0, v8

    const/16 v1, 0x14

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->HOLD:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->CCBS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->ALL_MULTIPARTY_SS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->MULTI_PTY:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->ALL_COMMUNITY_OF_INTEREST_SS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->CUG:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->ALL_CHARGING_SS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->AOCI:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->AOCC:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->ALL_ADDITIONAL_INFO_TARANSFER_SS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->UUS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->ALL_CALL_RESTRICTION_SS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->BARRING_OF_OUTGOING_CALLS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->BAOC:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->BOIC:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->BOIC_EXHC:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->BARRING_OF_INCOMING_CALLS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->BAIC:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->BIC_ROAM:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->ALL_PLMN_SPECIFIC_SS:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->CHARGING_INFO_ID:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->CFD:Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->$VALUES:[Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

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
    .line 278
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 275
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->code:I

    .line 279
    iput p3, p0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->code:I

    .line 280
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 211
    const-class v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;
    .locals 1

    .prologue
    .line 211
    sget-object v0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->$VALUES:[Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/android/internal/telephony/gsm/SkySupSvc$SsCode;->code:I

    return v0
.end method
