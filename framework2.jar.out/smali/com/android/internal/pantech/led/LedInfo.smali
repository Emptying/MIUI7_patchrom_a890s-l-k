.class public Lcom/android/internal/pantech/led/LedInfo;
.super Ljava/lang/Object;
.source "LedInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static APPID_ALARM:I = 0x0

.field public static APPID_BATTERY:I = 0x0

.field public static APPID_CALL:I = 0x0

.field public static APPID_CALL_CONNECTION:I = 0x0

.field public static APPID_CAMERA:I = 0x0

.field public static APPID_MIN:I = 0x0

.field public static APPID_MOTION:I = 0x0

.field public static APPID_NFC:I = 0x0

.field public static APPID_NOTIFICATION:I = 0x0

.field public static APPID_NOTI_ALERTS:I = 0x0

.field public static APPID_PEN_ALERTS:I = 0x0

.field public static APPID_PREVIEW:I = 0x0

.field public static APPID_RECORDING:I = 0x0

.field public static APPID_SMS_ALERTS:I = 0x0

.field public static APPID_SOSNOTI:I = 0x0

.field public static APPID_TOP:I = 0x0

.field public static APPID_VOICE:I = 0x0

.field public static final APPNAME_ALARM:Ljava/lang/String; = "Alarm"

.field public static final APPNAME_BATTERY:Ljava/lang/String; = "Battery"

.field public static final APPNAME_CALL:Ljava/lang/String; = "Call"

.field public static final APPNAME_CALL_CONNECTION:Ljava/lang/String; = "CallConnection"

.field public static final APPNAME_CAMERA:Ljava/lang/String; = "Camera"

.field public static final APPNAME_MOTION:Ljava/lang/String; = "Motion"

.field public static final APPNAME_NFC:Ljava/lang/String; = "NFC"

.field public static final APPNAME_NOTIFICATION:Ljava/lang/String; = "Notification"

.field public static final APPNAME_NOTI_ALERTS:Ljava/lang/String; = "NotiAlerts"

.field public static final APPNAME_PEN_ALERTS:Ljava/lang/String; = "PenAlert"

.field public static final APPNAME_PREVIEW:Ljava/lang/String; = "Preview"

.field public static final APPNAME_RECORDING:Ljava/lang/String; = "Recording"

.field public static final APPNAME_SMS_ALERTS:Ljava/lang/String; = "SMSAlerts"

.field public static final APPNAME_SOSNOTI:Ljava/lang/String; = "SOSNoti"

.field public static final APPNAME_VOICE:Ljava/lang/String; = "Voice"

.field public static final BLACK:I = 0x0

.field public static final BLACK_STRING:Ljava/lang/String; = "Black"

.field public static final BLUE:I = 0x46ff

.field public static final BLUE_RAINBOW:I = 0xff

.field public static final BLUE_STRING:Ljava/lang/String; = "Blue"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/pantech/led/LedInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final CYAN:I = 0xffff

.field public static final CYAN_RAINBOW:I = 0xffff

.field public static final CYAN_STRING:Ljava/lang/String; = "Cyan"

.field public static final DARK_GREEN:I = 0x8000

.field public static final DARK_GREEN_STRING:Ljava/lang/String; = "DarkGreen"

.field public static final DARK_RED:I = 0x800000

.field public static final DARK_RED_STRING:Ljava/lang/String; = "DarkRed"

.field public static final DEFAULT_PATTERN_OFF_MS:I = 0xf0

.field public static final DEFAULT_PATTERN_ON_MS:I = 0x2d0

.field public static final GREEN:I = 0xff14

.field public static final GREEN_RAINBOW:I = 0xff00

.field public static final GREEN_STRING:Ljava/lang/String; = "Green"

.field public static final INFINITE_REPEAT:I = 0x7fffffff

.field public static final LED_COUNT:I = 0x1

.field public static final MAGENTA:I = 0x5000ff

.field public static final MAGENTA_RAINBOW:I = 0xff00ff

.field public static final MAGENTA_STRING:Ljava/lang/String; = "Magenta"

.field public static final OPTION_DIMMING_BLINK:I = 0x6a

.field public static final OPTION_DIMMING_BLINK_PATTERN:I = 0x6b

.field public static final OPTION_DIMMING_ON_OFF:I = 0x68

.field public static final OPTION_EF5960_OFF_CMD:I = 0x70

.field public static final OPTION_NORMAL_BLINK:I = 0x69

.field public static final OPTION_NORMAL_ON_OFF:I = 0x67

.field public static final OPTION_RAINBOW_ONESHOT_PATTERN_ALARM:I = 0x6d

.field public static final OPTION_RAINBOW_ONESHOT_PATTERN_CALL:I = 0x6c

.field public static final OPTION_RAINBOW_ONESHOT_PATTERN_MSG:I = 0x6f

.field public static final OPTION_RAINBOW_PATTERN_ALARM:I = 0x66

.field public static final OPTION_RAINBOW_PATTERN_CALL:I = 0x65

.field public static final OPTION_RAINBOW_PATTERN_MSG:I = 0x6e

.field private static final OPTION_VALUE_MAX:I = 0x71

.field public static final OPTION_VALUE_MIN:I = 0x64

.field public static final RAINBOW:I = -0x1

.field public static final RED:I = 0xff0000

.field public static final RED_GREEN:I = -0x2

.field public static final RED_GREEN_STRING:Ljava/lang/String; = "RG"

.field public static final RED_RAINBOW:I = 0xff0000

.field public static final RED_STRING:Ljava/lang/String; = "Red"

.field public static final WHITE:I = 0xffffff

.field public static final WHITE_STRING:Ljava/lang/String; = "White"

.field public static final YELLOW:I = 0xffaa00

.field public static final YELLOW_RAINBOW:I = 0xffff00

.field public static final YELLOW_STRING:Ljava/lang/String; = "Yellow"


# instance fields
.field private mAppId:I

.field public mColor:[I

.field public mOffMs:I

.field public mOnMs:I

.field public mOption:I

.field public mPattern:[[I

.field private mPeriodicity:Z

.field public mRepeat:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_MIN:I

    .line 55
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_PREVIEW:I

    .line 56
    const/4 v0, 0x2

    sput v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_BATTERY:I

    .line 57
    const/4 v0, 0x4

    sput v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_NOTIFICATION:I

    .line 58
    const/4 v0, 0x6

    sput v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_PEN_ALERTS:I

    .line 59
    const/16 v0, 0x8

    sput v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_RECORDING:I

    .line 60
    const/16 v0, 0xa

    sput v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_CAMERA:I

    .line 61
    const/16 v0, 0xc

    sput v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_VOICE:I

    .line 62
    const/16 v0, 0xe

    sput v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_MOTION:I

    .line 63
    const/16 v0, 0x10

    sput v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_NFC:I

    .line 64
    const/16 v0, 0x12

    sput v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_NOTI_ALERTS:I

    .line 65
    const/16 v0, 0x14

    sput v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_SMS_ALERTS:I

    .line 66
    const/16 v0, 0x16

    sput v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_ALARM:I

    .line 67
    const/16 v0, 0x18

    sput v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_CALL:I

    .line 68
    const/16 v0, 0x19

    sput v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_CALL_CONNECTION:I

    .line 69
    const/16 v0, 0x1a

    sput v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_SOSNOTI:I

    .line 71
    sget v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_SOSNOTI:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_TOP:I

    .line 381
    new-instance v0, Lcom/android/internal/pantech/led/LedInfo$1;

    invoke-direct {v0}, Lcom/android/internal/pantech/led/LedInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/pantech/led/LedInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 6
    .param p1, "appId"    # I
    .param p2, "option"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x3

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mColor:[I

    .line 51
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mRepeat:I

    .line 202
    invoke-direct {p0, p1, p2}, Lcom/android/internal/pantech/led/LedInfo;->isValidArguments(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    iput p1, p0, Lcom/android/internal/pantech/led/LedInfo;->mAppId:I

    .line 212
    const/16 v0, 0xc

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mPattern:[[I

    .line 224
    packed-switch p2, :pswitch_data_0

    .line 233
    :goto_0
    :pswitch_0
    iput-boolean v5, p0, Lcom/android/internal/pantech/led/LedInfo;->mPeriodicity:Z

    .line 234
    const/16 v0, 0x68

    iput v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mOption:I

    .line 235
    return-void

    .line 228
    :pswitch_1
    iput v4, p0, Lcom/android/internal/pantech/led/LedInfo;->mRepeat:I

    goto :goto_0

    .line 212
    nop

    :array_0
    .array-data 4
        0xf0
        0xff0000
        0xff0000
    .end array-data

    :array_1
    .array-data 4
        0xb4
        0xff0000
        0xffff00
    .end array-data

    :array_2
    .array-data 4
        0xf0
        0xffff00
        0xffff00
    .end array-data

    :array_3
    .array-data 4
        0xb4
        0xffff00
        0xff00
    .end array-data

    :array_4
    .array-data 4
        0xf0
        0xff00
        0xff00
    .end array-data

    :array_5
    .array-data 4
        0xb4
        0xff00
        0xffff
    .end array-data

    :array_6
    .array-data 4
        0xf0
        0xffff
        0xffff
    .end array-data

    :array_7
    .array-data 4
        0xb4
        0xffff
        0xff
    .end array-data

    :array_8
    .array-data 4
        0xf0
        0xff
        0xff
    .end array-data

    :array_9
    .array-data 4
        0xb4
        0xff
        0xff00ff
    .end array-data

    :array_a
    .array-data 4
        0xf0
        0xff00ff
        0xff00ff
    .end array-data

    :array_b
    .array-data 4
        0xb4
        0xff00ff
        0xff0000
    .end array-data

    .line 224
    :pswitch_data_0
    .packed-switch 0x6c
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(I[II)V
    .locals 2
    .param p1, "appId"    # I
    .param p2, "color"    # [I
    .param p3, "option"    # I

    .prologue
    const/4 v1, 0x1

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mColor:[I

    .line 51
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mRepeat:I

    .line 244
    invoke-direct {p0, p1, p3}, Lcom/android/internal/pantech/led/LedInfo;->isValidArguments(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_0
    iput p1, p0, Lcom/android/internal/pantech/led/LedInfo;->mAppId:I

    .line 248
    iput-object p2, p0, Lcom/android/internal/pantech/led/LedInfo;->mColor:[I

    .line 249
    iput-boolean v1, p0, Lcom/android/internal/pantech/led/LedInfo;->mPeriodicity:Z

    .line 250
    iput p3, p0, Lcom/android/internal/pantech/led/LedInfo;->mOption:I

    .line 251
    return-void
.end method

.method public constructor <init>(I[III)V
    .locals 2
    .param p1, "appId"    # I
    .param p2, "color"    # [I
    .param p3, "onMs"    # I
    .param p4, "offMs"    # I

    .prologue
    const/4 v1, 0x1

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mColor:[I

    .line 51
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mRepeat:I

    .line 184
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/pantech/led/LedInfo;->isValidArguments(I[III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    iput p1, p0, Lcom/android/internal/pantech/led/LedInfo;->mAppId:I

    .line 188
    iput-object p2, p0, Lcom/android/internal/pantech/led/LedInfo;->mColor:[I

    .line 189
    iput p3, p0, Lcom/android/internal/pantech/led/LedInfo;->mOnMs:I

    .line 190
    iput p4, p0, Lcom/android/internal/pantech/led/LedInfo;->mOffMs:I

    .line 191
    iput-boolean v1, p0, Lcom/android/internal/pantech/led/LedInfo;->mPeriodicity:Z

    .line 192
    if-lez p3, :cond_1

    if-lez p4, :cond_1

    const/16 v0, 0x69

    :goto_0
    iput v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mOption:I

    .line 193
    return-void

    .line 192
    :cond_1
    const/16 v0, 0x68

    goto :goto_0
.end method

.method public constructor <init>(I[[II)V
    .locals 2
    .param p1, "appId"    # I
    .param p2, "pattern"    # [[I
    .param p3, "repeat"    # I

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mColor:[I

    .line 51
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mRepeat:I

    .line 160
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/pantech/led/LedInfo;->isValidArguments(I[[II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    iput p1, p0, Lcom/android/internal/pantech/led/LedInfo;->mAppId:I

    .line 164
    iput-object p2, p0, Lcom/android/internal/pantech/led/LedInfo;->mPattern:[[I

    .line 165
    iput p3, p0, Lcom/android/internal/pantech/led/LedInfo;->mRepeat:I

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mPeriodicity:Z

    .line 167
    iget-object v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mPattern:[[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mPattern:[[I

    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 168
    :cond_1
    const/16 v0, 0x67

    iput v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mOption:I

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_2
    const/16 v0, 0x68

    iput v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mOption:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-array v5, v3, [I

    iput-object v5, p0, Lcom/android/internal/pantech/led/LedInfo;->mColor:[I

    .line 51
    const v5, 0x7fffffff

    iput v5, p0, Lcom/android/internal/pantech/led/LedInfo;->mRepeat:I

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v3, :cond_0

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/pantech/led/LedInfo;->mPeriodicity:Z

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/android/internal/pantech/led/LedInfo;->mAppId:I

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/android/internal/pantech/led/LedInfo;->mOption:I

    .line 257
    iget-boolean v3, p0, Lcom/android/internal/pantech/led/LedInfo;->mPeriodicity:Z

    if-eqz v3, :cond_1

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/pantech/led/LedInfo;->mColor:[I

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/android/internal/pantech/led/LedInfo;->mOnMs:I

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/android/internal/pantech/led/LedInfo;->mOffMs:I

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/android/internal/pantech/led/LedInfo;->mRepeat:I

    .line 273
    :goto_1
    return-void

    :cond_0
    move v3, v4

    .line 254
    goto :goto_0

    .line 264
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 265
    .local v2, "nPattern":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 266
    .local v0, "color":[I
    array-length v3, v0

    filled-new-array {v2, v3}, [I

    move-result-object v3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    iput-object v3, p0, Lcom/android/internal/pantech/led/LedInfo;->mPattern:[[I

    .line 267
    iget-object v3, p0, Lcom/android/internal/pantech/led/LedInfo;->mPattern:[[I

    aput-object v0, v3, v4

    .line 268
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 269
    iget-object v3, p0, Lcom/android/internal/pantech/led/LedInfo;->mPattern:[[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    aput-object v4, v3, v1

    .line 268
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 271
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/android/internal/pantech/led/LedInfo;->mRepeat:I

    goto :goto_1
.end method

.method public static convertColorStringToValue(Ljava/lang/String;)I
    .locals 1
    .param p0, "colorStr"    # Ljava/lang/String;

    .prologue
    .line 419
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/android/internal/pantech/led/LedInfo;->convertColorStringToValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static convertColorStringToValue(Ljava/lang/String;I)I
    .locals 2
    .param p0, "colorStr"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    const/4 v1, 0x1

    .line 423
    if-nez p0, :cond_1

    .line 461
    .end local p1    # "defaultValue":I
    :cond_0
    :goto_0
    return p1

    .line 427
    .restart local p1    # "defaultValue":I
    :cond_1
    const-string v0, "Black"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_2

    .line 428
    const/4 p1, 0x0

    goto :goto_0

    .line 430
    :cond_2
    const-string v0, "White"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_3

    .line 431
    const p1, 0xffffff

    goto :goto_0

    .line 433
    :cond_3
    const-string v0, "Red"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_4

    .line 434
    const/high16 p1, 0xff0000

    goto :goto_0

    .line 436
    :cond_4
    const-string v0, "Yellow"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_5

    .line 437
    const p1, 0xffaa00

    goto :goto_0

    .line 439
    :cond_5
    const-string v0, "Green"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_6

    .line 440
    const p1, 0xff14

    goto :goto_0

    .line 442
    :cond_6
    const-string v0, "Cyan"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_7

    .line 443
    const p1, 0xffff

    goto :goto_0

    .line 445
    :cond_7
    const-string v0, "Blue"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_8

    .line 446
    const/16 p1, 0x46ff

    goto :goto_0

    .line 448
    :cond_8
    const-string v0, "Magenta"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_9

    .line 449
    const p1, 0x5000ff

    goto :goto_0

    .line 451
    :cond_9
    const-string v0, "DarkGreen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_a

    .line 452
    const p1, 0x8000

    goto :goto_0

    .line 454
    :cond_a
    const-string v0, "DarkRed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_b

    .line 455
    const/high16 p1, 0x800000

    goto :goto_0

    .line 457
    :cond_b
    const-string v0, "RG"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 458
    const/4 p1, -0x2

    goto :goto_0
.end method

.method public static getAppID(Ljava/lang/String;)I
    .locals 3
    .param p0, "appName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 465
    sget v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_MIN:I

    .line 467
    .local v0, "appID":I
    const-string v1, "Preview"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 468
    sget v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_PREVIEW:I

    .line 513
    :cond_0
    :goto_0
    return v0

    .line 470
    :cond_1
    const-string v1, "Battery"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_2

    .line 471
    sget v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_BATTERY:I

    goto :goto_0

    .line 473
    :cond_2
    const-string v1, "Notification"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_3

    .line 474
    sget v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_NOTIFICATION:I

    goto :goto_0

    .line 476
    :cond_3
    const-string v1, "PenAlert"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_4

    .line 477
    sget v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_PEN_ALERTS:I

    goto :goto_0

    .line 479
    :cond_4
    const-string v1, "Recording"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_5

    .line 480
    sget v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_RECORDING:I

    goto :goto_0

    .line 482
    :cond_5
    const-string v1, "Camera"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_6

    .line 483
    sget v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_CAMERA:I

    goto :goto_0

    .line 485
    :cond_6
    const-string v1, "Voice"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_7

    .line 486
    sget v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_VOICE:I

    goto :goto_0

    .line 488
    :cond_7
    const-string v1, "Motion"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_8

    .line 489
    sget v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_MOTION:I

    goto :goto_0

    .line 491
    :cond_8
    const-string v1, "NFC"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_9

    .line 492
    sget v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_NFC:I

    goto :goto_0

    .line 494
    :cond_9
    const-string v1, "Alarm"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_a

    .line 495
    sget v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_ALARM:I

    goto :goto_0

    .line 497
    :cond_a
    const-string v1, "Call"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_b

    .line 498
    sget v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_CALL:I

    goto :goto_0

    .line 500
    :cond_b
    const-string v1, "CallConnection"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_c

    .line 501
    sget v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_CALL_CONNECTION:I

    goto :goto_0

    .line 503
    :cond_c
    const-string v1, "SOSNoti"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_d

    .line 504
    sget v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_SOSNOTI:I

    goto/16 :goto_0

    .line 506
    :cond_d
    const-string v1, "NotiAlerts"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_e

    .line 507
    sget v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_NOTI_ALERTS:I

    goto/16 :goto_0

    .line 509
    :cond_e
    const-string v1, "SMSAlerts"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 510
    sget v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_SMS_ALERTS:I

    goto/16 :goto_0
.end method

.method private isValidArguments(II)Z
    .locals 1
    .param p1, "appId"    # I
    .param p2, "option"    # I

    .prologue
    .line 351
    sget v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_MIN:I

    if-le p1, v0, :cond_0

    sget v0, Lcom/android/internal/pantech/led/LedInfo;->APPID_TOP:I

    if-ge p1, v0, :cond_0

    const/16 v0, 0x64

    if-le p2, v0, :cond_0

    const/16 v0, 0x71

    if-ge p2, v0, :cond_0

    .line 353
    const/4 v0, 0x1

    .line 355
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidArguments(I[III)Z
    .locals 3
    .param p1, "appId"    # I
    .param p2, "color"    # [I
    .param p3, "onMs"    # I
    .param p4, "offMs"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    .line 335
    sget v1, Lcom/android/internal/pantech/led/LedInfo;->APPID_MIN:I

    if-le p1, v1, :cond_0

    sget v1, Lcom/android/internal/pantech/led/LedInfo;->APPID_TOP:I

    if-ge p1, v1, :cond_0

    if-eqz p2, :cond_0

    array-length v1, p2

    if-ne v1, v0, :cond_0

    if-le p3, v2, :cond_0

    if-le p4, v2, :cond_0

    .line 340
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidArguments(I[[II)Z
    .locals 3
    .param p1, "appId"    # I
    .param p2, "pattern"    # [[I
    .param p3, "repeat"    # I

    .prologue
    const/4 v0, 0x0

    .line 343
    sget v1, Lcom/android/internal/pantech/led/LedInfo;->APPID_MIN:I

    if-le p1, v1, :cond_1

    sget v1, Lcom/android/internal/pantech/led/LedInfo;->APPID_TOP:I

    if-ge p1, v1, :cond_1

    if-eqz p2, :cond_1

    aget-object v1, p2, v0

    array-length v1, v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    aget-object v1, p2, v0

    array-length v1, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    if-lez p3, :cond_1

    .line 346
    const/4 v0, 0x1

    .line 348
    :cond_1
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 379
    const/4 v0, 0x0

    return v0
.end method

.method public getAppId()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mAppId:I

    return v0
.end method

.method public getPattern(I)[I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mPeriodicity:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mPattern:[[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mPattern:[[I

    aget-object v0, v0, p1

    .line 306
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPatternCount()I
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mPeriodicity:Z

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mPattern:[[I

    array-length v0, v0

    .line 300
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getRepeatCount()I
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mRepeat:I

    return v0
.end method

.method public isOneShotOptionEvent()Z
    .locals 2

    .prologue
    .line 316
    iget v1, p0, Lcom/android/internal/pantech/led/LedInfo;->mOption:I

    packed-switch v1, :pswitch_data_0

    .line 323
    :pswitch_0
    const/4 v0, 0x0

    .line 327
    .local v0, "isOneShotOption":Z
    :goto_0
    return v0

    .line 320
    .end local v0    # "isOneShotOption":Z
    :pswitch_1
    const/4 v0, 0x1

    .line 321
    .restart local v0    # "isOneShotOption":Z
    goto :goto_0

    .line 316
    nop

    :pswitch_data_0
    .packed-switch 0x6c
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isPeriodicEvent()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mPeriodicity:Z

    return v0
.end method

.method public setColor([I)V
    .locals 2
    .param p1, "color"    # [I

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mPeriodicity:Z

    if-eqz v0, :cond_0

    .line 285
    iput-object p1, p0, Lcom/android/internal/pantech/led/LedInfo;->mColor:[I

    .line 286
    return-void

    .line 288
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only periodic event use setColor()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPattern([[I)V
    .locals 2
    .param p1, "pattern"    # [[I

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/android/internal/pantech/led/LedInfo;->mPeriodicity:Z

    if-nez v0, :cond_0

    .line 277
    iput-object p1, p0, Lcom/android/internal/pantech/led/LedInfo;->mPattern:[[I

    .line 278
    return-void

    .line 280
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only One-shot event use setPattern()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 394
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/pantech/led/LedInfo;->mAppId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", Periodicity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/pantech/led/LedInfo;->mPeriodicity:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    iget-boolean v3, p0, Lcom/android/internal/pantech/led/LedInfo;->mPeriodicity:Z

    if-eqz v3, :cond_2

    .line 397
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/pantech/led/LedInfo;->mColor:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "color: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/pantech/led/LedInfo;->mColor:[I

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 400
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", OnMs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/pantech/led/LedInfo;->mOnMs:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", OffMs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/pantech/led/LedInfo;->mOffMs:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 404
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", Repeat: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/pantech/led/LedInfo;->mRepeat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    const/4 v2, 0x0

    .local v2, "nPattern":I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/pantech/led/LedInfo;->mPattern:[[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 406
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v3, p0, Lcom/android/internal/pantech/led/LedInfo;->mPattern:[[I

    aget-object v3, v3, v2

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 408
    if-nez v1, :cond_3

    .line 409
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/pantech/led/LedInfo;->mPattern:[[I

    aget-object v4, v4, v2

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 411
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "color : 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/pantech/led/LedInfo;->mPattern:[[I

    aget-object v4, v4, v2

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 405
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 359
    iget-boolean v2, p0, Lcom/android/internal/pantech/led/LedInfo;->mPeriodicity:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    iget v2, p0, Lcom/android/internal/pantech/led/LedInfo;->mAppId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    iget v2, p0, Lcom/android/internal/pantech/led/LedInfo;->mOption:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    iget-boolean v2, p0, Lcom/android/internal/pantech/led/LedInfo;->mPeriodicity:Z

    if-eqz v2, :cond_1

    .line 363
    iget-object v2, p0, Lcom/android/internal/pantech/led/LedInfo;->mColor:[I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 364
    iget v2, p0, Lcom/android/internal/pantech/led/LedInfo;->mOnMs:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    iget v2, p0, Lcom/android/internal/pantech/led/LedInfo;->mOffMs:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    iget v2, p0, Lcom/android/internal/pantech/led/LedInfo;->mRepeat:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    :goto_1
    return-void

    .line 359
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 369
    :cond_1
    iget-object v2, p0, Lcom/android/internal/pantech/led/LedInfo;->mPattern:[[I

    array-length v0, v2

    .line 370
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 372
    iget-object v2, p0, Lcom/android/internal/pantech/led/LedInfo;->mPattern:[[I

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 371
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 374
    :cond_2
    iget v2, p0, Lcom/android/internal/pantech/led/LedInfo;->mRepeat:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
