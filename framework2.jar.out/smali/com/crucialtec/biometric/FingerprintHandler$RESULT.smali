.class public final enum Lcom/crucialtec/biometric/FingerprintHandler$RESULT;
.super Ljava/lang/Enum;
.source "FingerprintHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crucialtec/biometric/FingerprintHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RESULT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/crucialtec/biometric/FingerprintHandler$RESULT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

.field public static final enum ALIGN_CENTER:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

.field public static final enum ALREADY_ENROLLED:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

.field public static final enum DIFFERENT_FINGER:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

.field public static final enum EANDROIDBITMAP_LOCKPIXELS:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

.field public static final enum EFINGERPRINT_BLURRING:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

.field public static final enum EINVALID_FILE_FORMAT:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

.field public static final enum ENOTENOUGH_INFORMATION:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

.field public static final enum ENO_SPACE_STORAGE:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

.field public static final enum ESHORT_SWIPE_NOTENOUGH_FRAME:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

.field public static final enum ETEMPLATE_IO_ERROR:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

.field public static final enum EXCEED_MAX_RETRY:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

.field public static final enum IGNORE_NOTIFY:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

.field public static final enum INUSE_DEVICE:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

.field public static final enum INVALID_FINGERPRINT:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

.field public static final enum INVALID_PARAMETER:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

.field public static final enum IO_EXCEPTION:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

.field public static final enum MISMATCH_TEMPLATE:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

.field public static final enum NOT_FOUND_TEMPLATE:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

.field public static final enum OUT_OF_MEMORY:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

.field public static final enum OUT_OF_SKEWNESS:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

.field public static final enum REQUEST_TIMEOUT:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

.field public static final enum RETRY:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

.field public static final enum REVERSE_DIRECTION:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

.field public static final enum SHORT_SWIPE:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

.field public static final enum SUCCESS:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

.field public static final enum SWIPE_TOO_FAST:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

.field public static final enum SWIPE_TOO_SLOW:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

.field public static final enum UNKNOWN_ERROR:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

.field public static final enum USER_CANCEL:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;


# instance fields
.field public errorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 146
    new-instance v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v4, v4}, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->SUCCESS:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    .line 150
    new-instance v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    const-string v1, "SWIPE_TOO_FAST"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->SWIPE_TOO_FAST:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    .line 154
    new-instance v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    const-string v1, "SWIPE_TOO_SLOW"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v6, v2}, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->SWIPE_TOO_SLOW:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    .line 158
    new-instance v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    const-string v1, "SHORT_SWIPE"

    const/4 v2, -0x3

    invoke-direct {v0, v1, v7, v2}, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->SHORT_SWIPE:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    .line 162
    new-instance v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    const-string v1, "OUT_OF_SKEWNESS"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v8, v2}, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->OUT_OF_SKEWNESS:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    .line 166
    new-instance v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    const-string v1, "ALIGN_CENTER"

    const/4 v2, 0x5

    const/4 v3, -0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->ALIGN_CENTER:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    .line 170
    new-instance v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    const-string v1, "NOT_FOUND_TEMPLATE"

    const/4 v2, 0x6

    const/4 v3, -0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->NOT_FOUND_TEMPLATE:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    .line 174
    new-instance v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    const-string v1, "EXCEED_MAX_RETRY"

    const/4 v2, 0x7

    const/4 v3, -0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->EXCEED_MAX_RETRY:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    .line 178
    new-instance v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    const-string v1, "USER_CANCEL"

    const/16 v2, 0x8

    const/4 v3, -0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->USER_CANCEL:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    .line 182
    new-instance v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    const-string v1, "INUSE_DEVICE"

    const/16 v2, 0x9

    const/16 v3, -0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->INUSE_DEVICE:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    .line 186
    new-instance v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    const-string v1, "INVALID_PARAMETER"

    const/16 v2, 0xa

    const/16 v3, -0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->INVALID_PARAMETER:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    .line 190
    new-instance v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    const-string v1, "INVALID_FINGERPRINT"

    const/16 v2, 0xb

    const/16 v3, -0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->INVALID_FINGERPRINT:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    .line 194
    new-instance v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    const-string v1, "IO_EXCEPTION"

    const/16 v2, 0xc

    const/16 v3, -0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->IO_EXCEPTION:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    .line 198
    new-instance v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    const-string v1, "OUT_OF_MEMORY"

    const/16 v2, 0xd

    const/16 v3, -0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->OUT_OF_MEMORY:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    .line 202
    new-instance v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    const-string v1, "ALREADY_ENROLLED"

    const/16 v2, 0xe

    const/16 v3, -0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->ALREADY_ENROLLED:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    .line 206
    new-instance v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    const-string v1, "MISMATCH_TEMPLATE"

    const/16 v2, 0xf

    const/16 v3, -0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->MISMATCH_TEMPLATE:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    .line 210
    new-instance v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    const-string v1, "DIFFERENT_FINGER"

    const/16 v2, 0x10

    const/16 v3, -0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->DIFFERENT_FINGER:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    .line 214
    new-instance v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    const-string v1, "REQUEST_TIMEOUT"

    const/16 v2, 0x11

    const/16 v3, -0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->REQUEST_TIMEOUT:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    .line 218
    new-instance v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    const-string v1, "REVERSE_DIRECTION"

    const/16 v2, 0x12

    const/16 v3, -0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->REVERSE_DIRECTION:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    .line 222
    new-instance v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    const-string v1, "ENOTENOUGH_INFORMATION"

    const/16 v2, 0x13

    const/16 v3, -0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->ENOTENOUGH_INFORMATION:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    .line 226
    new-instance v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    const-string v1, "ESHORT_SWIPE_NOTENOUGH_FRAME"

    const/16 v2, 0x14

    const/16 v3, -0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->ESHORT_SWIPE_NOTENOUGH_FRAME:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    .line 230
    new-instance v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    const-string v1, "ENO_SPACE_STORAGE"

    const/16 v2, 0x15

    const/16 v3, -0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->ENO_SPACE_STORAGE:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    .line 234
    new-instance v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    const-string v1, "EFINGERPRINT_BLURRING"

    const/16 v2, 0x16

    const/16 v3, -0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->EFINGERPRINT_BLURRING:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    .line 238
    new-instance v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    const-string v1, "EINVALID_FILE_FORMAT"

    const/16 v2, 0x17

    const/16 v3, -0x17

    invoke-direct {v0, v1, v2, v3}, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->EINVALID_FILE_FORMAT:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    .line 242
    new-instance v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    const-string v1, "ETEMPLATE_IO_ERROR"

    const/16 v2, 0x18

    const/16 v3, -0x18

    invoke-direct {v0, v1, v2, v3}, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->ETEMPLATE_IO_ERROR:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    .line 246
    new-instance v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    const-string v1, "EANDROIDBITMAP_LOCKPIXELS"

    const/16 v2, 0x19

    const/16 v3, -0x19

    invoke-direct {v0, v1, v2, v3}, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->EANDROIDBITMAP_LOCKPIXELS:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    .line 248
    new-instance v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    const-string v1, "IGNORE_NOTIFY"

    const/16 v2, 0x1a

    const/16 v3, -0x1a

    invoke-direct {v0, v1, v2, v3}, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->IGNORE_NOTIFY:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    .line 252
    new-instance v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    const-string v1, "RETRY"

    const/16 v2, 0x1b

    const/16 v3, -0x1b

    invoke-direct {v0, v1, v2, v3}, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->RETRY:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    .line 256
    new-instance v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    const-string v1, "UNKNOWN_ERROR"

    const/16 v2, 0x1c

    const/16 v3, -0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->UNKNOWN_ERROR:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    .line 142
    const/16 v0, 0x1d

    new-array v0, v0, [Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    sget-object v1, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->SUCCESS:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    aput-object v1, v0, v4

    sget-object v1, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->SWIPE_TOO_FAST:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    aput-object v1, v0, v5

    sget-object v1, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->SWIPE_TOO_SLOW:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    aput-object v1, v0, v6

    sget-object v1, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->SHORT_SWIPE:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    aput-object v1, v0, v7

    sget-object v1, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->OUT_OF_SKEWNESS:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->ALIGN_CENTER:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->NOT_FOUND_TEMPLATE:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->EXCEED_MAX_RETRY:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->USER_CANCEL:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->INUSE_DEVICE:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->INVALID_PARAMETER:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->INVALID_FINGERPRINT:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->IO_EXCEPTION:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->OUT_OF_MEMORY:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->ALREADY_ENROLLED:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->MISMATCH_TEMPLATE:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->DIFFERENT_FINGER:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->REQUEST_TIMEOUT:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->REVERSE_DIRECTION:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->ENOTENOUGH_INFORMATION:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->ESHORT_SWIPE_NOTENOUGH_FRAME:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->ENO_SPACE_STORAGE:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->EFINGERPRINT_BLURRING:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->EINVALID_FILE_FORMAT:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->ETEMPLATE_IO_ERROR:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->EANDROIDBITMAP_LOCKPIXELS:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->IGNORE_NOTIFY:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->RETRY:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->UNKNOWN_ERROR:Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    aput-object v2, v0, v1

    sput-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->$VALUES:[Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "errorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 258
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 259
    iput p3, p0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->errorCode:I

    .line 260
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/crucialtec/biometric/FingerprintHandler$RESULT;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 142
    const-class v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    return-object v0
.end method

.method public static values()[Lcom/crucialtec/biometric/FingerprintHandler$RESULT;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->$VALUES:[Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    invoke-virtual {v0}, [Lcom/crucialtec/biometric/FingerprintHandler$RESULT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/crucialtec/biometric/FingerprintHandler$RESULT;

    return-object v0
.end method
