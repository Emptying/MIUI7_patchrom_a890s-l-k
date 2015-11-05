.class public Lcom/android/internal/policy/impl/RearGestureWrapper;
.super Lcom/android/internal/policy/impl/RearGestureDetector$SimpleOnGestureListener;
.source "RearGestureWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/RearGestureWrapper$RearGestureHandler;
    }
.end annotation


# static fields
.field public static final ACTION_SCREEN_SHOT:Ljava/lang/String; = "android.intent.action.ACTION_REAR_TOUCH_SCREEN_SHOT"

.field private static final DEBUG:Z = true

.field private static final DOUBLE_TAB_SKIP_MOVE_Y:I = 0xa

.field private static final DOUBLE_TAB_SKIP_TIME:I = 0x0

.field private static final DeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLING_MAX_OFF_PATH:I = 0x190

.field private static final FLING_MIN_DISTANCE:I = 0x0

.field private static final FLING_THRESHOLD_VELOCITY:I = 0x32

.field private static final GESTURE_FLING_DOWN_SKIP_TIME:I = 0x0

.field private static final GESTURE_FLING_LEFT_RIGHT_SKIP_TIME:I = 0x0

.field private static final GESTURE_FLING_UP_SKIP_TIME:I = 0x0

.field private static final LONGPRESS_TIMEOUT:I

.field private static final LONG_PRESS:I = 0x1

.field private static final SCRATCH_TAB_SKIP_TIME:I = 0x0

.field private static final SCRATCH_THRESHOLD_COUNT:I = 0x3

.field private static final SCRATCH_THRESHOLD_DISTANCE_X:I = 0xa

.field private static final SCRATCH_THRESHOLD_DISTANCE_Y:I = 0xa

.field private static final TAG:Ljava/lang/String; = "RearGestureWrapper"

.field private static final TPPE_REAR_TOUCH_FOCUS_MOVE:I = 0x2

.field private static final TPPE_REAR_TOUCH_HARDKEY:I = 0x3

.field private static final TPPE_REAR_TOUCH_MOUSE:I = 0x1

.field private static final TPPE_REAR_TOUCH_VEGA_FUNCTION:I = 0x4

.field private static final TYPE_REAR_TOUCH:I

.field private static final mSkipDoubleTabRect:Landroid/graphics/Rect;


# instance fields
.field final SKYSYSTEM_CLASS_NAME:Ljava/lang/String;

.field mAotService:Landroid/view/alwaysontop/IAlwaysOnTop;

.field mContext:Landroid/content/Context;

.field mCountX:I

.field mCountY:I

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field mDistanceX:F

.field mDistanceY:F

.field private mDoubleTapTouchSlop:I

.field private mDoulbePressWait:Z

.field mEnable:Z

.field private mEnableHardKey:Z

.field private mEnableVegaFunction:Z

.field mGestureDetector:Lcom/android/internal/policy/impl/RearGestureDetector;

.field private mGestureSend:Z

.field private final mHandler:Landroid/os/Handler;

.field mInTouchDown:Z

.field mInitialScratchEvent:Landroid/view/MotionEvent;

.field private mIsDoubleTab:Z

.field private mIsDoubleTabSend:Z

.field private mIsGestureSend:Z

.field private mLongPressSlop:I

.field private mOldAction:I

.field private mOldCallback:Landroid/view/Window$RearCallback;

.field mPrevX:Z

.field mPrevY:Z

.field private mSKYSystem_GetString:Ljava/lang/reflect/Method;

.field mSaveMoveY:I

.field mSendScratch:Z

.field private mSupportFingerKey:Z

.field mWindow:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/android/internal/policy/impl/RearGestureWrapper$1;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/RearGestureWrapper$1;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->DeviceList:Ljava/util/ArrayList;

    .line 90
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSkipDoubleTabRect:Landroid/graphics/Rect;

    .line 106
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->LONGPRESS_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/RearGestureWrapper;-><init>(Landroid/content/Context;Landroid/view/Window;)V

    .line 224
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "window"    # Landroid/view/Window;

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 175
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RearGestureDetector$SimpleOnGestureListener;-><init>()V

    .line 97
    iput v8, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSaveMoveY:I

    .line 99
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mInTouchDown:Z

    .line 108
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mInitialScratchEvent:Landroid/view/MotionEvent;

    .line 109
    iput v8, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCountX:I

    .line 110
    iput v8, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCountY:I

    .line 111
    iput v10, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDistanceX:F

    .line 112
    iput v10, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDistanceY:F

    .line 125
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDoulbePressWait:Z

    .line 130
    const/16 v9, 0x30

    iput v9, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mLongPressSlop:I

    .line 132
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mGestureSend:Z

    .line 133
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsGestureSend:Z

    .line 134
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsDoubleTabSend:Z

    .line 135
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSupportFingerKey:Z

    .line 137
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnableHardKey:Z

    .line 138
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnableVegaFunction:Z

    .line 140
    const-string v9, "com.pantech.providers.skysettings.SKYSystem"

    iput-object v9, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->SKYSYSTEM_CLASS_NAME:Ljava/lang/String;

    .line 176
    iput-object p2, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    .line 177
    iput-object p1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mContext:Landroid/content/Context;

    .line 181
    const-string v9, "alwaysontop"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/view/alwaysontop/IAlwaysOnTop$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/alwaysontop/IAlwaysOnTop;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mAotService:Landroid/view/alwaysontop/IAlwaysOnTop;

    .line 183
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "rear_touch"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 185
    .local v6, "type":I
    iget-object v9, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "rear_touch_mode"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 188
    .local v3, "mode":I
    if-nez v6, :cond_1

    move v9, v8

    :goto_0
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnable:Z

    .line 189
    const/4 v9, 0x3

    if-ne v3, v9, :cond_2

    move v9, v7

    :goto_1
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnableHardKey:Z

    .line 190
    const/4 v9, 0x4

    if-ne v3, v9, :cond_3

    :goto_2
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnableVegaFunction:Z

    .line 191
    iget-object v7, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mGestureDetector:Lcom/android/internal/policy/impl/RearGestureDetector;

    if-eqz v7, :cond_0

    .line 192
    iget-object v7, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mGestureDetector:Lcom/android/internal/policy/impl/RearGestureDetector;

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnableVegaFunction:Z

    invoke-virtual {v7, v9}, Lcom/android/internal/policy/impl/RearGestureDetector;->setMoveEventDisabled(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .end local v3    # "mode":I
    .end local v6    # "type":I
    :cond_0
    :goto_3
    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendLongPressEvent(Z)V

    .line 200
    new-instance v7, Lcom/android/internal/policy/impl/RearGestureWrapper$RearGestureHandler;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/RearGestureWrapper$RearGestureHandler;-><init>(Lcom/android/internal/policy/impl/RearGestureWrapper;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mHandler:Landroid/os/Handler;

    .line 201
    iput v8, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSaveMoveY:I

    .line 204
    :try_start_1
    const-string v7, "com.pantech.providers.skysettings.SKYSystem"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 205
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_4

    .line 206
    const/4 v7, 0x2

    new-array v4, v7, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/ContentResolver;

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v4, v7

    .line 207
    .local v4, "parameterTypes":[Ljava/lang/Class;
    const-string v7, "getString"

    invoke-virtual {v0, v7, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSKYSystem_GetString:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 218
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "parameterTypes":[Ljava/lang/Class;
    :goto_4
    sget-object v7, Lcom/android/internal/policy/impl/RearGestureWrapper;->DeviceList:Ljava/util/ArrayList;

    sget-object v8, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSupportFingerKey:Z

    .line 219
    const-string v7, "RearGestureWrapper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mSupportFingerKey:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSupportFingerKey:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",model:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void

    .restart local v3    # "mode":I
    .restart local v6    # "type":I
    :cond_1
    move v9, v7

    .line 188
    goto :goto_0

    :cond_2
    move v9, v8

    .line 189
    goto :goto_1

    :cond_3
    move v7, v8

    .line 190
    goto :goto_2

    .line 194
    .end local v3    # "mode":I
    .end local v6    # "type":I
    :catch_0
    move-exception v5

    .line 195
    .local v5, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnable:Z

    goto :goto_3

    .line 210
    .end local v5    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    :try_start_2
    const-string v7, "RearGestureWrapper"

    const-string v8, "cls is Null!!!(SKYSystem)"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 212
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 213
    .local v1, "cnfe":Ljava/lang/ClassNotFoundException;
    const-string v7, "RearGestureWrapper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Class Not Found:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 214
    .end local v1    # "cnfe":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v2

    .line 215
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "RearGestureWrapper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Class Not Found(Exception):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/RearGestureWrapper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/RearGestureWrapper;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSupportFingerKey:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/RearGestureWrapper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/RearGestureWrapper;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnableVegaFunction:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/RearGestureWrapper;)Landroid/view/MotionEvent;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/RearGestureWrapper;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/RearGestureWrapper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/RearGestureWrapper;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendLongPressEvent(Z)V

    return-void
.end method

.method private getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 3

    .prologue
    .line 861
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 863
    .local v0, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_0

    .line 864
    const-string v1, "RearGestureWrapper"

    const-string v2, "Unable to find ITelephony interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :cond_0
    return-object v0
.end method

.method private initScratch(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 368
    iput-object p1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mInitialScratchEvent:Landroid/view/MotionEvent;

    .line 369
    iput v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCountY:I

    iput v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCountX:I

    .line 370
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDistanceY:F

    iput v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDistanceX:F

    .line 371
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSendScratch:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mPrevY:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mPrevX:Z

    .line 372
    return-void
.end method

.method private measureScratch(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v6, 0x2

    const/high16 v8, 0x41200000    # 10.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 375
    iget v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDistanceX:F

    cmpl-float v0, v0, v7

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDistanceY:F

    cmpl-float v0, v0, v7

    if-nez v0, :cond_3

    .line 376
    const-string v0, "RearGestureWrapper"

    const-string v3, "mDistanceX = 0"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDistanceX:F

    cmpl-float v0, p3, v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mPrevX:Z

    .line 378
    iget v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDistanceY:F

    cmpl-float v0, p4, v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mPrevY:Z

    .line 379
    const-string v0, "RearGestureWrapper"

    const-string v3, "mDistanceX:%f, mDistanceY:%f, distanceX:%f, distanceY:%f,"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDistanceX:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    iget v2, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDistanceY:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v4, v6

    const/4 v1, 0x3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iput p3, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDistanceX:F

    .line 381
    iput p4, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDistanceY:F

    .line 413
    :cond_0
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/RearGestureWrapper;->notiScratchEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    .line 414
    return-void

    :cond_1
    move v0, v2

    .line 377
    goto :goto_0

    :cond_2
    move v0, v2

    .line 378
    goto :goto_1

    .line 383
    :cond_3
    const-string v0, "RearGestureWrapper"

    const-string v3, "mDistanceX:%f, mDistanceY:%f, distanceX:%f, distanceY:%f,"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDistanceX:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    iget v5, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDistanceY:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v8

    if-lez v0, :cond_8

    .line 385
    cmpl-float v0, p3, v7

    if-lez v0, :cond_4

    iget v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDistanceX:F

    cmpg-float v0, v0, v7

    if-ltz v0, :cond_5

    :cond_4
    iget v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDistanceX:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_7

    cmpg-float v0, p3, v7

    if-gez v0, :cond_7

    .line 386
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mPrevX:Z

    if-ne v0, v1, :cond_6

    cmpg-float v0, p3, v7

    if-gez v0, :cond_6

    .line 387
    iget v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCountX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCountX:I

    .line 388
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mPrevX:Z

    if-nez v0, :cond_d

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mPrevX:Z

    .line 390
    :cond_6
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mPrevX:Z

    if-nez v0, :cond_7

    cmpl-float v0, p3, v7

    if-lez v0, :cond_7

    .line 391
    iget v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCountX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCountX:I

    .line 392
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mPrevX:Z

    if-nez v0, :cond_e

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mPrevX:Z

    .line 395
    :cond_7
    iput p3, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDistanceX:F

    .line 398
    :cond_8
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v8

    if-lez v0, :cond_0

    .line 399
    cmpl-float v0, p4, v7

    if-lez v0, :cond_9

    iget v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDistanceY:F

    cmpg-float v0, v0, v7

    if-ltz v0, :cond_a

    :cond_9
    iget v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDistanceY:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_c

    cmpg-float v0, p4, v7

    if-gez v0, :cond_c

    .line 400
    :cond_a
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mPrevY:Z

    if-ne v0, v1, :cond_b

    cmpg-float v0, p4, v7

    if-gez v0, :cond_b

    .line 401
    iget v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCountY:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCountY:I

    .line 402
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mPrevY:Z

    if-nez v0, :cond_f

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mPrevY:Z

    .line 404
    :cond_b
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mPrevY:Z

    if-nez v0, :cond_c

    cmpl-float v0, p4, v7

    if-lez v0, :cond_c

    .line 405
    iget v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCountY:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCountY:I

    .line 406
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mPrevY:Z

    if-nez v0, :cond_10

    :goto_6
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mPrevY:Z

    .line 409
    :cond_c
    iput p4, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDistanceY:F

    goto/16 :goto_2

    :cond_d
    move v0, v2

    .line 388
    goto :goto_3

    :cond_e
    move v0, v2

    .line 392
    goto :goto_4

    :cond_f
    move v0, v2

    .line 402
    goto :goto_5

    :cond_10
    move v1, v2

    .line 406
    goto :goto_6
.end method

.method private notiScratchEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev1"    # Landroid/view/MotionEvent;
    .param p2, "ev2"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 417
    const/4 v2, 0x0

    .line 418
    .local v2, "ret":Z
    const-string v7, "RearGestureWrapper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notiScratchEvent() mCountX:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCountX:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",mCountY:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCountY:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",mSendScratch:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSendScratch:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v7, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getRearCallback()Landroid/view/Window$RearCallback;

    move-result-object v0

    .line 421
    .local v0, "cb":Landroid/view/Window$RearCallback;
    :goto_0
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSupportFingerKey:Z

    if-eqz v7, :cond_1

    .line 422
    const-string v5, "RearGestureWrapper"

    const-string v6, "Exit notiScratchEvent() ... not support scratch event!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v2

    .line 474
    :goto_1
    return v6

    .line 419
    .end local v0    # "cb":Landroid/view/Window$RearCallback;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 426
    .restart local v0    # "cb":Landroid/view/Window$RearCallback;
    :cond_1
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnableHardKey:Z

    if-eqz v7, :cond_6

    .line 427
    iget v7, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCountX:I

    iget v8, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCountY:I

    add-int/2addr v7, v8

    if-lt v7, v10, :cond_3

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSendScratch:Z

    if-nez v7, :cond_3

    .line 428
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendLongPressEvent(Z)V

    .line 429
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mGestureSend:Z

    .line 430
    if-eqz v0, :cond_5

    .line 431
    invoke-interface {v0, p1, p2}, Landroid/view/Window$RearCallback;->onScratchEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v2

    .line 432
    if-nez v2, :cond_2

    .line 433
    invoke-virtual {p0, v11}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendEvent(I)V

    .line 437
    :cond_2
    :goto_2
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSendScratch:Z

    .line 439
    :cond_3
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSendScratch:Z

    if-eqz v5, :cond_4

    .line 440
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSendScratch:Z

    :cond_4
    move v6, v2

    .line 441
    goto :goto_1

    .line 435
    :cond_5
    invoke-virtual {p0, v11}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendEvent(I)V

    goto :goto_2

    .line 444
    :cond_6
    if-eqz v0, :cond_a

    .line 445
    iget v7, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCountX:I

    iget v8, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCountY:I

    add-int/2addr v7, v8

    if-lt v7, v10, :cond_9

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSendScratch:Z

    if-nez v7, :cond_9

    .line 446
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendLongPressEvent(Z)V

    .line 447
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsDoubleTabSend:Z

    if-eqz v7, :cond_7

    .line 448
    const-string v5, "RearGestureWrapper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notiScratchEvent:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsDoubleTabSend:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 451
    :cond_7
    const/4 v4, 0x0

    .line 452
    .local v4, "time":I
    if-eqz p2, :cond_8

    if-eqz p1, :cond_8

    .line 453
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    long-to-int v4, v7

    .line 455
    :cond_8
    if-gez v4, :cond_b

    .line 456
    const-string v5, "RearGestureWrapper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cancel notiScratchEvent() :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :goto_3
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSendScratch:Z

    .line 471
    .end local v4    # "time":I
    :cond_9
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSendScratch:Z

    if-eqz v5, :cond_a

    .line 472
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSendScratch:Z

    :cond_a
    move v6, v2

    .line 474
    goto/16 :goto_1

    .line 458
    .restart local v4    # "time":I
    :cond_b
    const/4 v1, 0x0

    .line 460
    .local v1, "isReceiveCall":Z
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "rear_touch_call"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_c

    move v1, v5

    .line 464
    :goto_4
    if-eqz v1, :cond_d

    .line 465
    invoke-interface {v0, p1, p2}, Landroid/view/Window$RearCallback;->onScratchEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_3

    :cond_c
    move v1, v6

    .line 460
    goto :goto_4

    .line 461
    :catch_0
    move-exception v3

    .line 462
    .local v3, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, 0x0

    goto :goto_4

    .line 467
    .end local v3    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_d
    const-string v5, "RearGestureWrapper"

    const-string v7, "rear_touch_call is off"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private sendLongPressEvent(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    .line 841
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnableHardKey:Z

    if-eqz v1, :cond_0

    .line 858
    :goto_0
    return-void

    .line 844
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnableVegaFunction:Z

    if-nez v1, :cond_1

    .line 845
    const-string v1, "RearGestureWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendLongPressEvent  mEnableVegaFunction = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnableVegaFunction:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 849
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mAotService:Landroid/view/alwaysontop/IAlwaysOnTop;

    if-nez v1, :cond_2

    .line 850
    const-string v1, "alwaysontop"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/alwaysontop/IAlwaysOnTop$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/alwaysontop/IAlwaysOnTop;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mAotService:Landroid/view/alwaysontop/IAlwaysOnTop;

    .line 853
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mAotService:Landroid/view/alwaysontop/IAlwaysOnTop;

    invoke-interface {v1, p1}, Landroid/view/alwaysontop/IAlwaysOnTop;->setRearTouchLongPress(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 854
    :catch_0
    move-exception v0

    .line 855
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "RearGestureWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRearTouchLongPress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 227
    const/4 v14, 0x0

    .line 228
    .local v14, "onGesture":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getRearCallback()Landroid/view/Window$RearCallback;

    move-result-object v10

    .line 229
    .local v10, "cb":Landroid/view/Window$RearCallback;
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mGestureDetector:Lcom/android/internal/policy/impl/RearGestureDetector;

    if-nez v1, :cond_0

    .line 230
    new-instance v1, Lcom/android/internal/policy/impl/RearGestureDetector;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v1, v2, v0}, Lcom/android/internal/policy/impl/RearGestureDetector;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/RearGestureDetector$OnGestureListener;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mGestureDetector:Lcom/android/internal/policy/impl/RearGestureDetector;

    .line 231
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mGestureDetector:Lcom/android/internal/policy/impl/RearGestureDetector;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/RearGestureDetector;->setRearTouch()V

    .line 232
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mGestureDetector:Lcom/android/internal/policy/impl/RearGestureDetector;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnableVegaFunction:Z

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/RearGestureDetector;->setMoveEventDisabled(Z)V

    .line 233
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v11

    .line 234
    .local v11, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v11}, Landroid/view/ViewConfiguration;->getScaledDoubleTapTouchSlop()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDoubleTapTouchSlop:I

    .line 237
    .end local v11    # "configuration":Landroid/view/ViewConfiguration;
    :cond_0
    const-string v1, "RearGestureWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",x:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",y:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    .line 240
    .local v9, "action":I
    if-eqz v9, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mOldCallback:Landroid/view/Window$RearCallback;

    if-eq v1, v10, :cond_2

    .line 241
    const-string v1, "RearGestureWrapper"

    const-string v2, "change callback"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 243
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendLongPressEvent(Z)V

    .line 244
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mGestureDetector:Lcom/android/internal/policy/impl/RearGestureDetector;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    const/4 v5, 0x3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v8

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/android/internal/policy/impl/RearGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 253
    const/4 v1, 0x1

    .line 336
    :goto_1
    return v1

    .line 228
    .end local v9    # "action":I
    .end local v10    # "cb":Landroid/view/Window$RearCallback;
    :cond_1
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 256
    .restart local v9    # "action":I
    .restart local v10    # "cb":Landroid/view/Window$RearCallback;
    :cond_2
    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnableHardKey:Z

    if-nez v1, :cond_3

    .line 257
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnableVegaFunction:Z

    if-eqz v1, :cond_4

    .line 258
    const/4 v14, 0x1

    .line 265
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mOldAction:I

    if-ne v1, v9, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mOldAction:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 266
    const-string v1, "RearGestureWrapper"

    const-string v2, "mOldAction == action!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v14

    .line 267
    goto :goto_1

    .line 261
    :cond_4
    move-object/from16 v0, p1

    invoke-interface {v10, v0}, Landroid/view/Window$RearCallback;->onRearTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    goto :goto_2

    .line 270
    :cond_5
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mOldAction:I

    .line 272
    if-nez v9, :cond_c

    .line 273
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mOldCallback:Landroid/view/Window$RearCallback;

    .line 274
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_6

    .line 276
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v12, v1

    .line 277
    .local v12, "moveX":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v13, v1

    .line 279
    .local v13, "moveY":I
    const-string v1, "RearGestureWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PenDown : moveX:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",moveY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDoulbePressWait:Z

    if-nez v1, :cond_b

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDoubleTapTouchSlop:I

    if-ge v12, v1, :cond_b

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDoubleTapTouchSlop:I

    if-ge v13, v1, :cond_b

    .line 282
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsDoubleTab:Z

    .line 286
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 288
    .end local v12    # "moveX":I
    .end local v13    # "moveY":I
    :cond_6
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 289
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDoulbePressWait:Z

    .line 291
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 292
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    sget v5, Lcom/android/internal/policy/impl/RearGestureWrapper;->LONGPRESS_TIMEOUT:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 294
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mInTouchDown:Z

    .line 295
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/RearGestureWrapper;->initScratch(Landroid/view/MotionEvent;)V

    .line 308
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mGestureDetector:Lcom/android/internal/policy/impl/RearGestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/RearGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 310
    const/4 v1, 0x1

    if-ne v9, v1, :cond_9

    .line 311
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mInTouchDown:Z

    .line 312
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsDoubleTabSend:Z

    .line 313
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 314
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/RearGestureWrapper;->notiScratchEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    .line 315
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mGestureSend:Z

    if-eqz v1, :cond_e

    .line 316
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsGestureSend:Z

    .line 319
    :goto_5
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mGestureSend:Z

    .line 320
    if-eqz v10, :cond_8

    .line 321
    const-string v1, "RearGestureWrapper"

    const-string v2, "onTouchUp()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    move-object/from16 v0, p1

    invoke-interface {v10, v0}, Landroid/view/Window$RearCallback;->onTouchUp(Landroid/view/MotionEvent;)Z

    .line 325
    :cond_8
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendLongPressEvent(Z)V

    .line 327
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSaveMoveY:I

    .line 330
    :cond_9
    const/4 v1, 0x3

    if-ne v9, v1, :cond_a

    .line 331
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mGestureSend:Z

    .line 332
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 333
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendLongPressEvent(Z)V

    :cond_a
    move v1, v14

    .line 336
    goto/16 :goto_1

    .line 284
    .restart local v12    # "moveX":I
    .restart local v13    # "moveY":I
    :cond_b
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsDoubleTab:Z

    goto/16 :goto_3

    .line 297
    .end local v12    # "moveX":I
    .end local v13    # "moveY":I
    :cond_c
    const/4 v1, 0x2

    if-ne v9, v1, :cond_7

    .line 298
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_7

    .line 299
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mLongPressSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mLongPressSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    .line 300
    :cond_d
    const-string v1, "RearGestureWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cancel Long press : moveX:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",moveY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 302
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDoulbePressWait:Z

    goto/16 :goto_4

    .line 318
    :cond_e
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsGestureSend:Z

    goto/16 :goto_5
.end method

.method public isDoubleTabDisable()Z
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->isDoubleTabDisable()Z

    move-result v0

    .line 820
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFingerKeyEnable()Z
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->isFingerKeyEnable()Z

    move-result v0

    .line 828
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocusMove()Z
    .locals 1

    .prologue
    .line 813
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnableHardKey:Z

    return v0
.end method

.method public isRearTouchDisable()Z
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->isRearTouchDisable()Z

    move-result v0

    .line 836
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyRearTouchStatus(ZI)V
    .locals 7
    .param p1, "enable"    # Z
    .param p2, "type"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 340
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnableVegaFunction:Z

    .line 341
    .local v1, "prevEnableVegaFunction":Z
    const-string v2, "RearGestureWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyRearTouchStatus() mEnable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", enable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", prevEnableVegaFunction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v2, 0x3

    if-ne p2, v2, :cond_5

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnableHardKey:Z

    .line 344
    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    move v4, v3

    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnableVegaFunction:Z

    .line 345
    iget-object v2, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mGestureDetector:Lcom/android/internal/policy/impl/RearGestureDetector;

    if-eqz v2, :cond_1

    .line 346
    iget-object v2, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mGestureDetector:Lcom/android/internal/policy/impl/RearGestureDetector;

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnableVegaFunction:Z

    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/RearGestureDetector;->setMoveEventDisabled(Z)V

    .line 349
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnable:Z

    if-ne v2, p1, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnableVegaFunction:Z

    if-eq v2, v1, :cond_4

    .line 350
    :cond_2
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnable:Z

    .line 351
    iget-object v2, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mAotService:Landroid/view/alwaysontop/IAlwaysOnTop;

    if-nez v2, :cond_3

    .line 352
    const-string v2, "alwaysontop"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/alwaysontop/IAlwaysOnTop$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/alwaysontop/IAlwaysOnTop;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mAotService:Landroid/view/alwaysontop/IAlwaysOnTop;

    .line 356
    :cond_3
    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnable:Z

    if-ne v2, v3, :cond_6

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnableVegaFunction:Z

    if-ne v2, v3, :cond_6

    .line 357
    iget-object v2, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mAotService:Landroid/view/alwaysontop/IAlwaysOnTop;

    invoke-interface {v2}, Landroid/view/alwaysontop/IAlwaysOnTop;->registerGyroSensorListener()Z

    .line 365
    :cond_4
    :goto_1
    return-void

    :cond_5
    move v2, v4

    .line 343
    goto :goto_0

    .line 359
    :cond_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mAotService:Landroid/view/alwaysontop/IAlwaysOnTop;

    invoke-interface {v2}, Landroid/view/alwaysontop/IAlwaysOnTop;->unRegisterGyroSensorListener()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "RearGestureWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "register exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 673
    const-string v0, "RearGestureWrapper"

    const-string v1, "cancel onDoubleTap() :"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 679
    iget-object v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getRearCallback()Landroid/view/Window$RearCallback;

    move-result-object v0

    .line 681
    .local v0, "cb":Landroid/view/Window$RearCallback;
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendLongPressEvent(Z)V

    .line 683
    if-eqz v0, :cond_1

    .line 684
    invoke-interface {v0, p1}, Landroid/view/Window$RearCallback;->onTouchDown(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 686
    :goto_1
    return v1

    .line 679
    .end local v0    # "cb":Landroid/view/Window$RearCallback;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 686
    .restart local v0    # "cb":Landroid/view/Window$RearCallback;
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/high16 v10, 0x42480000    # 50.0f

    const/4 v9, 0x0

    const/4 v4, 0x1

    .line 714
    iget-object v5, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    invoke-virtual {v5}, Landroid/view/Window;->getRearCallback()Landroid/view/Window$RearCallback;

    move-result-object v0

    .line 716
    .local v0, "cb":Landroid/view/Window$RearCallback;
    :goto_0
    if-nez v0, :cond_2

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnableHardKey:Z

    if-nez v5, :cond_2

    .line 809
    :cond_0
    :goto_1
    return v4

    .line 714
    .end local v0    # "cb":Landroid/view/Window$RearCallback;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 720
    .restart local v0    # "cb":Landroid/view/Window$RearCallback;
    :cond_2
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnableVegaFunction:Z

    if-ne v5, v4, :cond_3

    .line 721
    const-string v5, "RearGestureWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onFling mEnableHardKey = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnableHardKey:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mEnableVegaFunction = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnableVegaFunction:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 725
    :cond_3
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsDoubleTabSend:Z

    if-eqz v5, :cond_4

    .line 726
    const-string v5, "RearGestureWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onFling:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsDoubleTabSend:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 730
    :cond_4
    if-eqz p1, :cond_5

    if-nez p1, :cond_6

    .line 731
    :cond_5
    const-string v5, "RearGestureWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "event is null!!!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 735
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/RearGestureWrapper;->notiScratchEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 739
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v1, v5

    .line 740
    .local v1, "moveX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v2, v5

    .line 741
    .local v2, "moveY":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v3, v5

    .line 743
    .local v3, "skipTime":I
    const-string v5, "RearGestureWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onFling() : moveX:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",moveY:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",velocityX:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",velocityY:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    if-le v1, v2, :cond_c

    .line 746
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    cmpl-float v5, v5, v9

    if-lez v5, :cond_9

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v10

    if-lez v5, :cond_9

    .line 748
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnableHardKey:Z

    if-eqz v5, :cond_7

    .line 749
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mGestureSend:Z

    .line 750
    const/16 v5, 0x52

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendEvent(I)V

    goto/16 :goto_1

    .line 752
    :cond_7
    if-lez v3, :cond_8

    .line 753
    invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$RearCallback;->onFlingLeft(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z

    move-result v4

    goto/16 :goto_1

    .line 755
    :cond_8
    const-string v5, "RearGestureWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "skip onFlingLeft:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 757
    :cond_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    cmpl-float v5, v5, v9

    if-lez v5, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v10

    if-lez v5, :cond_0

    .line 759
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnableHardKey:Z

    if-eqz v5, :cond_a

    .line 760
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mGestureSend:Z

    .line 761
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendEvent(I)V

    goto/16 :goto_1

    .line 763
    :cond_a
    if-lez v3, :cond_b

    .line 764
    invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$RearCallback;->onFlingRight(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z

    move-result v4

    goto/16 :goto_1

    .line 766
    :cond_b
    const-string v5, "RearGestureWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "skip onFlingRight:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 770
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    cmpl-float v5, v5, v9

    if-lez v5, :cond_f

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v10

    if-lez v5, :cond_f

    .line 772
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnableHardKey:Z

    if-eqz v5, :cond_d

    .line 773
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mGestureSend:Z

    .line 774
    const/16 v5, 0x18

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendEvent(I)V

    goto/16 :goto_1

    .line 776
    :cond_d
    if-lez v3, :cond_e

    .line 777
    invoke-interface {v0, p1, p2, p4}, Landroid/view/Window$RearCallback;->onFlingUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z

    move-result v4

    goto/16 :goto_1

    .line 779
    :cond_e
    const-string v5, "RearGestureWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "skip onFlingUp:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 781
    :cond_f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    cmpl-float v5, v5, v9

    if-lez v5, :cond_0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v10

    if-lez v5, :cond_0

    .line 783
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnableHardKey:Z

    if-eqz v5, :cond_10

    .line 784
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mGestureSend:Z

    .line 785
    const/16 v5, 0x19

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendEvent(I)V

    goto/16 :goto_1

    .line 787
    :cond_10
    if-lez v3, :cond_11

    .line 788
    invoke-interface {v0, p1, p2, p4}, Landroid/view/Window$RearCallback;->onFlingDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z

    move-result v4

    goto/16 :goto_1

    .line 790
    :cond_11
    const-string v5, "RearGestureWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "skip onFlingDown:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 691
    const-string v1, "RearGestureWrapper"

    const-string v2, "onLongPress()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-object v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getRearCallback()Landroid/view/Window$RearCallback;

    move-result-object v0

    .line 694
    .local v0, "cb":Landroid/view/Window$RearCallback;
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSupportFingerKey:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnableVegaFunction:Z

    if-nez v1, :cond_1

    .line 695
    const-string v1, "RearGestureWrapper"

    const-string v2, "not support long press event!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :goto_1
    return-void

    .line 692
    .end local v0    # "cb":Landroid/view/Window$RearCallback;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 699
    .restart local v0    # "cb":Landroid/view/Window$RearCallback;
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsDoubleTabSend:Z

    if-eqz v1, :cond_2

    .line 700
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendLongPressEvent(Z)V

    .line 701
    const-string v1, "RearGestureWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLongPress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsDoubleTabSend:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 705
    :cond_2
    if-eqz v0, :cond_3

    .line 706
    invoke-interface {v0, p1}, Landroid/view/Window$RearCallback;->onLongPress(Landroid/view/MotionEvent;)V

    .line 709
    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendLongPressEvent(Z)V

    goto :goto_1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v4, 0x1

    .line 479
    iget-object v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getRearCallback()Landroid/view/Window$RearCallback;

    move-result-object v0

    .line 481
    .local v0, "cb":Landroid/view/Window$RearCallback;
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSupportFingerKey:Z

    if-eqz v1, :cond_2

    .line 496
    :cond_0
    :goto_1
    return v4

    .line 479
    .end local v0    # "cb":Landroid/view/Window$RearCallback;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 486
    .restart local v0    # "cb":Landroid/view/Window$RearCallback;
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnableVegaFunction:Z

    if-ne v1, v4, :cond_3

    .line 487
    const-string v1, "RearGestureWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScroll  mEnableVegaFunction = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnableVegaFunction:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 491
    :cond_3
    if-nez v0, :cond_4

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnableHardKey:Z

    if-eqz v1, :cond_0

    .line 492
    :cond_4
    const-string v1, "RearGestureWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScroll() : distanceX:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",distanceY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/RearGestureWrapper;->measureScratch(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    goto :goto_1
.end method

.method sendEvent(I)V
    .locals 20
    .param p1, "code"    # I

    .prologue
    .line 870
    const-string v5, "RearGestureWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendEvent() code:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnableHardKey:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x4

    move/from16 v0, p1

    if-eq v0, v5, :cond_0

    const/16 v5, 0x52

    move/from16 v0, p1

    if-ne v0, v5, :cond_2

    .line 874
    :cond_0
    const/16 v17, 0x0

    .line 875
    .local v17, "isSmartCoverOpen":Z
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v19

    .line 877
    .local v19, "winManager":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface/range {v19 .. v19}, Landroid/view/IWindowManager;->getHallICState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    .line 878
    .local v18, "lidState":I
    if-nez v18, :cond_1

    const/16 v17, 0x0

    .line 882
    .end local v18    # "lidState":I
    :goto_0
    if-nez v17, :cond_2

    .line 900
    .end local v17    # "isSmartCoverOpen":Z
    .end local v19    # "winManager":Landroid/view/IWindowManager;
    :goto_1
    return-void

    .line 878
    .restart local v17    # "isSmartCoverOpen":Z
    .restart local v18    # "lidState":I
    .restart local v19    # "winManager":Landroid/view/IWindowManager;
    :cond_1
    const/16 v17, 0x1

    goto :goto_0

    .line 887
    .end local v17    # "isSmartCoverOpen":Z
    .end local v18    # "lidState":I
    .end local v19    # "winManager":Landroid/view/IWindowManager;
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 888
    .local v2, "time":J
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x48

    const/16 v13, 0x20

    move-wide v4, v2

    move/from16 v7, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 892
    .local v1, "down":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Landroid/hardware/input/InputManager;->injectInputEventFromRearTouch(Landroid/view/InputEvent;I)Z

    .line 894
    new-instance v4, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/16 v15, 0x48

    const/16 v16, 0x20

    move-wide v5, v2

    move/from16 v10, p1

    invoke-direct/range {v4 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 898
    .local v4, "up":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/hardware/input/InputManager;->injectInputEventFromRearTouch(Landroid/view/InputEvent;I)Z

    goto :goto_1

    .line 879
    .end local v1    # "down":Landroid/view/KeyEvent;
    .end local v2    # "time":J
    .end local v4    # "up":Landroid/view/KeyEvent;
    .restart local v17    # "isSmartCoverOpen":Z
    .restart local v19    # "winManager":Landroid/view/IWindowManager;
    :catch_0
    move-exception v5

    goto :goto_0
.end method
