.class public Landroid/vts/motion/VTSAPI;
.super Ljava/lang/Object;
.source "VTSAPI.java"

# interfaces
.implements Landroid/vts/VTSAPIInterface;
.implements Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/vts/motion/VTSAPI$EventHandler;
    }
.end annotation


# static fields
.field public static final AUTOMATIC_ORIENTATIONS:I = 0x0

.field public static final COVER:I = 0x2

.field public static final LANDSCAPE_ORIENTATIONS:I = 0x2

.field public static final LEFT:I = 0x0

.field public static final PORTRAIT_ORIENTATIONS:I = 0x1

.field public static final REVERSE_LANDSCAPE_ORIENTATIONS:I = 0x3

.field public static final RIGHT:I = 0x1

.field private static final SKYMOTION_ENGINE_STATE_IDLE:I = 0x0

.field private static final SKYMOTION_ENGINE_STATE_INIT:I = 0x2

.field private static final SKYMOTION_ENGINE_STATE_INIT_READY:I = 0x1

.field private static final SKYMOTION_ENGINE_STATE_START:I = 0x4

.field private static final SKYMOTION_ENGINE_STATE_START_READY:I = 0x3

.field private static final SKYMOTION_ENGINE_STATE_STOP_READY:I = 0x5

.field public static final STATUS_NOT_STABLE:I = 0x2

.field public static final STATUS_STABLE:I = 0x1

.field public static final STATUS_START:I = 0x0

.field public static final STATUS_STOP:I = 0x3

.field private static final TAG:Ljava/lang/String; = "VTSAPI"

.field private static final VERSION:Ljava/lang/String; = "Class VTSAPI v3.0.5 (2014.02.26.1059)"

.field public static final VTS_CONFIG_DISPLAY_ICON:I = 0x0

.field private static final VTS_DETECTION_START:I = 0x1

.field private static final VTS_DETECTION_STOP:I = 0x3

.field private static final VTS_ERROR_DETECTED:I = 0x64

.field private static final VTS_FPS_CHANGE_DETECTED:I = 0xfa

.field private static final VTS_GESTURE_DETECTED:I = 0x2

.field private static final VTS_INIT_DONE:I = 0x0

.field private static final VTS_LOOP_QUIT:I = 0x12c

.field private static final VTS_STATUS_CHANGE_DETECTED:I = 0xc8

.field public static final WAVE_LEFT_RIGHT:I = 0x3

.field public static final WAVE_RIGHT_LEFT:I = 0x4

.field public static final WLEFT:I = 0x5

.field public static final WRIGHT:I = 0x6

.field private static final lock:Ljava/lang/Object;

.field private static mVTSState:I


# instance fields
.field public Action:Ljava/lang/String;

.field private DBGLog:Z

.field private mCamType:I

.field private mCfgDisplayIcon:I

.field private mContext:Landroid/content/Context;

.field private mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

.field private mIgnoreGesture:Z

.field private mOnDetectionStartListener:Landroid/vts/OnDetectionStartListener;

.field private mOnDetectionStopListener:Landroid/vts/OnDetectionStopListener;

.field private mOnErrorDetectedListener:Landroid/vts/OnErrorDetectedListener;

.field private mOnFPSChangeDetectedListener:Landroid/vts/OnFPSChangeDetectedListener;

.field private mOnGestureDetectedListener:Landroid/vts/OnGestureDetectedListener;

.field private mOnInitDoneListener:Landroid/vts/OnInitDoneListener;

.field private mOnStatusChangeDetectedListener:Landroid/vts/OnStatusChangeDetectedListener;

.field private mRecord:Z

.field private mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 195
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/vts/motion/VTSAPI;->lock:Ljava/lang/Object;

    .line 766
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/16 v7, 0x3e8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-boolean v6, p0, Landroid/vts/motion/VTSAPI;->DBGLog:Z

    .line 229
    const-string v2, "VTSAPI"

    const-string v3, "=================================================="

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-string v2, "VTSAPI"

    const-string v3, "Class VTSAPI v3.0.5 (2014.02.26.1059)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-string v2, "VTSAPI"

    const-string v3, "=================================================="

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-direct {p0}, Landroid/vts/motion/VTSAPI;->initializeMessageLooper()V

    .line 236
    const/4 v1, 0x0

    .line 237
    .local v1, "wait":I
    :goto_0
    if-lt v1, v7, :cond_1

    .line 252
    :cond_0
    if-lt v1, v7, :cond_2

    .line 253
    const-string v2, "VTSAPI"

    const-string v3, "VTSAPI() : Fail InitializeMessageLooper!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :goto_1
    return-void

    .line 238
    :cond_1
    iget-object v2, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    if-nez v2, :cond_0

    .line 240
    :try_start_0
    const-string v2, "VTSAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VTSAPI() : Wait InitializeMessageLooper (wait)"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 258
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iput-boolean v5, p0, Landroid/vts/motion/VTSAPI;->mIgnoreGesture:Z

    .line 261
    iput v6, p0, Landroid/vts/motion/VTSAPI;->mCfgDisplayIcon:I

    .line 263
    sput v5, Landroid/vts/motion/VTSAPI;->mVTSState:I

    .line 266
    const-string v2, "VTSAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VTSAPI() : End (ptr)"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private DisplayStatusbarIcon(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 683
    const-string v1, "VTSAPI"

    const-string v2, "[API] DisplayStatusbarIcon()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget v1, p0, Landroid/vts/motion/VTSAPI;->mCfgDisplayIcon:I

    if-eqz v1, :cond_0

    .line 685
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.pantech.action.MOTION_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 686
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "MotionEnabled"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 687
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 689
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private SetEventHandler(Landroid/os/Looper;)V
    .locals 3
    .param p1, "myLooper"    # Landroid/os/Looper;

    .prologue
    .line 216
    const-string v0, "VTSAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SetEventHandler() : (myLooper)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    if-eqz p1, :cond_0

    .line 219
    new-instance v0, Landroid/vts/motion/VTSAPI$EventHandler;

    invoke-direct {v0, p0, p0, p1}, Landroid/vts/motion/VTSAPI$EventHandler;-><init>(Landroid/vts/motion/VTSAPI;Landroid/vts/motion/VTSAPI;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    .line 222
    :goto_0
    return-void

    .line 221
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    goto :goto_0
.end method

.method static synthetic access$0()I
    .locals 1

    .prologue
    .line 150
    sget v0, Landroid/vts/motion/VTSAPI;->mVTSState:I

    return v0
.end method

.method static synthetic access$1(I)V
    .locals 0

    .prologue
    .line 150
    sput p0, Landroid/vts/motion/VTSAPI;->mVTSState:I

    return-void
.end method

.method static synthetic access$10(Landroid/vts/motion/VTSAPI;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0, p1}, Landroid/vts/motion/VTSAPI;->SetEventHandler(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$11()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 195
    sget-object v0, Landroid/vts/motion/VTSAPI;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2(Landroid/vts/motion/VTSAPI;)Landroid/vts/OnInitDoneListener;
    .locals 1

    .prologue
    .line 1075
    iget-object v0, p0, Landroid/vts/motion/VTSAPI;->mOnInitDoneListener:Landroid/vts/OnInitDoneListener;

    return-object v0
.end method

.method static synthetic access$3(Landroid/vts/motion/VTSAPI;)Landroid/vts/OnDetectionStartListener;
    .locals 1

    .prologue
    .line 1082
    iget-object v0, p0, Landroid/vts/motion/VTSAPI;->mOnDetectionStartListener:Landroid/vts/OnDetectionStartListener;

    return-object v0
.end method

.method static synthetic access$4(Landroid/vts/motion/VTSAPI;)Landroid/vts/OnFPSChangeDetectedListener;
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Landroid/vts/motion/VTSAPI;->mOnFPSChangeDetectedListener:Landroid/vts/OnFPSChangeDetectedListener;

    return-object v0
.end method

.method static synthetic access$5(Landroid/vts/motion/VTSAPI;)Landroid/vts/OnGestureDetectedListener;
    .locals 1

    .prologue
    .line 1099
    iget-object v0, p0, Landroid/vts/motion/VTSAPI;->mOnGestureDetectedListener:Landroid/vts/OnGestureDetectedListener;

    return-object v0
.end method

.method static synthetic access$6(Landroid/vts/motion/VTSAPI;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Landroid/vts/motion/VTSAPI;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7(Landroid/vts/motion/VTSAPI;)Landroid/vts/OnDetectionStopListener;
    .locals 1

    .prologue
    .line 1107
    iget-object v0, p0, Landroid/vts/motion/VTSAPI;->mOnDetectionStopListener:Landroid/vts/OnDetectionStopListener;

    return-object v0
.end method

.method static synthetic access$8(Landroid/vts/motion/VTSAPI;)Landroid/vts/OnErrorDetectedListener;
    .locals 1

    .prologue
    .line 1115
    iget-object v0, p0, Landroid/vts/motion/VTSAPI;->mOnErrorDetectedListener:Landroid/vts/OnErrorDetectedListener;

    return-object v0
.end method

.method static synthetic access$9(Landroid/vts/motion/VTSAPI;)Landroid/vts/OnStatusChangeDetectedListener;
    .locals 1

    .prologue
    .line 1123
    iget-object v0, p0, Landroid/vts/motion/VTSAPI;->mOnStatusChangeDetectedListener:Landroid/vts/OnStatusChangeDetectedListener;

    return-object v0
.end method

.method private initializeMessageLooper()V
    .locals 1

    .prologue
    .line 198
    new-instance v0, Landroid/vts/motion/VTSAPI$1;

    invoke-direct {v0, p0}, Landroid/vts/motion/VTSAPI$1;-><init>(Landroid/vts/motion/VTSAPI;)V

    .line 212
    invoke-virtual {v0}, Landroid/vts/motion/VTSAPI$1;->start()V

    .line 213
    return-void
.end method


# virtual methods
.method public EnableDBGLog(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 703
    const-string v0, "VTSAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[API] EnableDBGLog(on)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object v0, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    invoke-virtual {v0, p1}, Landroid/vts/motion/SKYMotionAPI;->EnableDBGLog(Z)V

    .line 705
    iput-boolean p1, p0, Landroid/vts/motion/VTSAPI;->DBGLog:Z

    .line 707
    return-void
.end method

.method public EnableWaveAction(Z)I
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 460
    const-string v0, "VTSAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[API] EnableWaveAction() : (enable)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v0, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    invoke-virtual {v0, p1}, Landroid/vts/motion/SKYMotionAPI;->EnableWaveAction(Z)I

    move-result v0

    return v0
.end method

.method public HandleSKYMotionAction(I)V
    .locals 6
    .param p1, "action"    # I

    .prologue
    .line 945
    const/16 v0, 0x384

    .line 946
    .local v0, "iAct":I
    iget-boolean v2, p0, Landroid/vts/motion/VTSAPI;->mIgnoreGesture:Z

    if-eqz v2, :cond_1

    .line 947
    const-string v2, "VTSAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HandleSKYMotionAction() : Ignore Gesture!!! (action)"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :cond_0
    :goto_0
    return-void

    .line 951
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 953
    :pswitch_0
    const-string v2, "VTSAPI"

    const-string v3, "HandleSKYMotionAction() : LEFT"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const/4 v0, 0x0

    .line 984
    :goto_1
    iget-boolean v2, p0, Landroid/vts/motion/VTSAPI;->mIgnoreGesture:Z

    if-nez v2, :cond_0

    .line 986
    iget-object v2, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/vts/motion/VTSAPI$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 987
    .local v1, "m":Landroid/os/Message;
    iget-object v2, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    invoke-virtual {v2, v1}, Landroid/vts/motion/VTSAPI$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 957
    .end local v1    # "m":Landroid/os/Message;
    :pswitch_1
    const-string v2, "VTSAPI"

    const-string v3, "HandleSKYMotionAction() : RIGHT"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const/4 v0, 0x1

    .line 959
    goto :goto_1

    .line 961
    :pswitch_2
    const-string v2, "VTSAPI"

    const-string v3, "HandleSKYMotionAction() : COVER"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    const/4 v0, 0x2

    .line 963
    goto :goto_1

    .line 965
    :pswitch_3
    const-string v2, "VTSAPI"

    const-string v3, "HandleSKYMotionAction() : WAVE_LEFT_RIGHT"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    const/4 v0, 0x3

    .line 967
    goto :goto_1

    .line 969
    :pswitch_4
    const-string v2, "VTSAPI"

    const-string v3, "HandleSKYMotionAction() : WAVE_RIGHT_LEFT"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    const/4 v0, 0x4

    .line 971
    goto :goto_1

    .line 973
    :pswitch_5
    const-string v2, "VTSAPI"

    const-string v3, "HandleSKYMotionAction() :WLEFT"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    const/4 v0, 0x5

    .line 975
    goto :goto_1

    .line 977
    :pswitch_6
    const-string v2, "VTSAPI"

    const-string v3, "HandleSKYMotionAction() : WRIGHT"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    const/4 v0, 0x6

    .line 979
    goto :goto_1

    .line 951
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public HandleSKYMotionError(I)V
    .locals 0
    .param p1, "error"    # I

    .prologue
    .line 1065
    return-void
.end method

.method public HandleSKYMotionFPS(I)V
    .locals 5
    .param p1, "fps"    # I

    .prologue
    .line 937
    iget-boolean v1, p0, Landroid/vts/motion/VTSAPI;->DBGLog:Z

    if-eqz v1, :cond_0

    const-string v1, "VTSAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HandleSKYMotionFPS() : (fps)"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_0
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    const/16 v2, 0xfa

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p1, v3, v4}, Landroid/vts/motion/VTSAPI$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 939
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    invoke-virtual {v1, v0}, Landroid/vts/motion/VTSAPI$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 940
    return-void
.end method

.method public HandleSKYMotionStatus(I)V
    .locals 7
    .param p1, "status"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 994
    const/16 v0, 0x64

    .line 996
    .local v0, "iStatus":I
    packed-switch p1, :pswitch_data_0

    .line 1043
    const-string v2, "VTSAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HandleEyeCanStatus() : Unknown Status (status)"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    :goto_0
    return-void

    .line 998
    :pswitch_0
    const-string v2, "VTSAPI"

    const-string v3, "HandleSKYMotionStatus() : STATUS_START"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    invoke-direct {p0, v5}, Landroid/vts/motion/VTSAPI;->DisplayStatusbarIcon(Z)V

    .line 1004
    iput-boolean v4, p0, Landroid/vts/motion/VTSAPI;->mIgnoreGesture:Z

    .line 1006
    iget-object v2, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    iget v3, p0, Landroid/vts/motion/VTSAPI;->mCamType:I

    invoke-virtual {v2, v5, v3, v4, v6}, Landroid/vts/motion/VTSAPI$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1007
    .local v1, "m":Landroid/os/Message;
    iget-object v2, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    invoke-virtual {v2, v1}, Landroid/vts/motion/VTSAPI$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1012
    .end local v1    # "m":Landroid/os/Message;
    :pswitch_1
    const-string v2, "VTSAPI"

    const-string v3, "HandleSKYMotionStatus() : STATUS_STOP"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    invoke-direct {p0, v4}, Landroid/vts/motion/VTSAPI;->DisplayStatusbarIcon(Z)V

    .line 1017
    iput-boolean v5, p0, Landroid/vts/motion/VTSAPI;->mIgnoreGesture:Z

    .line 1019
    iget-object v2, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v4, v4, v6}, Landroid/vts/motion/VTSAPI$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1020
    .restart local v1    # "m":Landroid/os/Message;
    iget-object v2, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    invoke-virtual {v2, v1}, Landroid/vts/motion/VTSAPI$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1025
    .end local v1    # "m":Landroid/os/Message;
    :pswitch_2
    const-string v2, "VTSAPI"

    const-string v3, "HandleSKYMotionStatus() : STATUS_STABLE"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    invoke-direct {p0, v5}, Landroid/vts/motion/VTSAPI;->DisplayStatusbarIcon(Z)V

    .line 1029
    const/4 v0, 0x2

    .line 1030
    iput-boolean v4, p0, Landroid/vts/motion/VTSAPI;->mIgnoreGesture:Z

    .line 1049
    :goto_1
    iget-object v2, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    const/16 v3, 0xc8

    invoke-virtual {v2, v3, v0, v4, v6}, Landroid/vts/motion/VTSAPI$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1050
    .restart local v1    # "m":Landroid/os/Message;
    iget-object v2, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    invoke-virtual {v2, v1}, Landroid/vts/motion/VTSAPI$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1034
    .end local v1    # "m":Landroid/os/Message;
    :pswitch_3
    const-string v2, "VTSAPI"

    const-string v3, "HandleSKYMotionStatus() : STATUS_NOT_STABLE"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    invoke-direct {p0, v4}, Landroid/vts/motion/VTSAPI;->DisplayStatusbarIcon(Z)V

    .line 1038
    const/4 v0, 0x3

    .line 1039
    iput-boolean v5, p0, Landroid/vts/motion/VTSAPI;->mIgnoreGesture:Z

    goto :goto_1

    .line 996
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public Init(Landroid/content/Context;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 273
    const-string v1, "VTSAPI"

    const-string v2, "[API] Init()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    sget v1, Landroid/vts/motion/VTSAPI;->mVTSState:I

    if-eqz v1, :cond_0

    .line 277
    const-string v1, "VTSAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Init(): already inited!!! (state)"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Landroid/vts/motion/VTSAPI;->mVTSState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    const/16 v2, 0x64

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/vts/motion/VTSAPI$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 279
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    invoke-virtual {v1, v0}, Landroid/vts/motion/VTSAPI$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 295
    :goto_0
    return-void

    .line 283
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    iput-object p1, p0, Landroid/vts/motion/VTSAPI;->mContext:Landroid/content/Context;

    .line 285
    const/4 v1, 0x1

    sput v1, Landroid/vts/motion/VTSAPI;->mVTSState:I

    .line 287
    new-instance v1, Landroid/vts/motion/SKYMotionAPI;

    invoke-direct {v1}, Landroid/vts/motion/SKYMotionAPI;-><init>()V

    iput-object v1, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    .line 289
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    invoke-virtual {v1, p1}, Landroid/vts/motion/SKYMotionAPI;->InitSKYMotionEngine(Landroid/content/Context;)V

    .line 290
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    invoke-virtual {v1, p0}, Landroid/vts/motion/SKYMotionAPI;->RegisterSKYMotionCallback(Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;)V

    .line 291
    const-string v1, "VTSAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[API] Init() : SDK Version "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    invoke-virtual {v3}, Landroid/vts/motion/SKYMotionAPI;->GetVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    invoke-virtual {v1, v4, v4, v4, v5}, Landroid/vts/motion/VTSAPI$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 294
    .restart local v0    # "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    invoke-virtual {v1, v0}, Landroid/vts/motion/VTSAPI$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public Init(Landroid/content/Context;I)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "algorithm"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 301
    const-string v1, "VTSAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[API] Init() : (algorithm)"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    sget v1, Landroid/vts/motion/VTSAPI;->mVTSState:I

    if-eqz v1, :cond_0

    .line 305
    const-string v1, "VTSAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Init(): already inited!!! (state)"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Landroid/vts/motion/VTSAPI;->mVTSState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    const/16 v2, 0x64

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/vts/motion/VTSAPI$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 307
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    invoke-virtual {v1, v0}, Landroid/vts/motion/VTSAPI$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 323
    :goto_0
    return-void

    .line 311
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    iput-object p1, p0, Landroid/vts/motion/VTSAPI;->mContext:Landroid/content/Context;

    .line 313
    const/4 v1, 0x1

    sput v1, Landroid/vts/motion/VTSAPI;->mVTSState:I

    .line 315
    new-instance v1, Landroid/vts/motion/SKYMotionAPI;

    invoke-direct {v1}, Landroid/vts/motion/SKYMotionAPI;-><init>()V

    iput-object v1, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    .line 317
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    invoke-virtual {v1, p1, p2}, Landroid/vts/motion/SKYMotionAPI;->InitSKYMotionEngine(Landroid/content/Context;I)V

    .line 318
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    invoke-virtual {v1, p0}, Landroid/vts/motion/SKYMotionAPI;->RegisterSKYMotionCallback(Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;)V

    .line 319
    const-string v1, "VTSAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[API] Init() : SDK Version "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    invoke-virtual {v3}, Landroid/vts/motion/SKYMotionAPI;->GetVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    invoke-virtual {v1, v4, v4, v4, v5}, Landroid/vts/motion/VTSAPI$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 322
    .restart local v0    # "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    invoke-virtual {v1, v0}, Landroid/vts/motion/VTSAPI$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public InitCameraParameter()V
    .locals 0

    .prologue
    .line 440
    return-void
.end method

.method public RecordGesture(Z)V
    .locals 3
    .param p1, "mRecord"    # Z

    .prologue
    .line 506
    const-string v0, "VTSAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[API] RecordGesture() : (mRecord)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v0, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    invoke-virtual {v0, p1}, Landroid/vts/motion/SKYMotionAPI;->RecordGesture(Z)V

    .line 508
    return-void
.end method

.method public RecordGesture(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "mRecord"    # Z
    .param p2, "epLock"    # Ljava/lang/String;
    .param p3, "dt"    # Ljava/lang/String;
    .param p4, "rpm"    # Ljava/lang/String;

    .prologue
    .line 514
    const-string v0, "VTSAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[API] RecordGesture() : (mRecord)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (epLock)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (dt)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (rpm)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v0, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/vts/motion/SKYMotionAPI;->RecordGesture(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    return-void
.end method

.method public RegisterPreview(Landroid/view/SurfaceHolder;II)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 661
    const-string v0, "VTSAPI"

    const-string v1, "[API] RegisterPreview()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v0, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    invoke-virtual {v0, p1, p2, p3}, Landroid/vts/motion/SKYMotionAPI;->RegisterPreview(Landroid/view/SurfaceHolder;II)V

    .line 663
    return-void
.end method

.method public SetAccelerometerFilter(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 560
    const-string v0, "VTSAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[API] SetAccelerometerFilter() : (on)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v0, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    invoke-virtual {v0, p1}, Landroid/vts/motion/SKYMotionAPI;->SetAccelerometerFilter(Z)V

    .line 563
    return-void
.end method

.method public SetConfig(II)V
    .locals 3
    .param p1, "config"    # I
    .param p2, "value"    # I

    .prologue
    .line 633
    packed-switch p1, :pswitch_data_0

    .line 642
    :goto_0
    return-void

    .line 635
    :pswitch_0
    const-string v0, "VTSAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[API] SetConfig() : display STATUSBAR ICON mode (on)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iput p2, p0, Landroid/vts/motion/VTSAPI;->mCfgDisplayIcon:I

    goto :goto_0

    .line 633
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public SetOnDetectionStartListener(Landroid/vts/OnDetectionStartListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/vts/OnDetectionStartListener;

    .prologue
    .line 1080
    iput-object p1, p0, Landroid/vts/motion/VTSAPI;->mOnDetectionStartListener:Landroid/vts/OnDetectionStartListener;

    .line 1081
    return-void
.end method

.method public SetOnDetectionStopListener(Landroid/vts/OnDetectionStopListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/vts/OnDetectionStopListener;

    .prologue
    .line 1105
    iput-object p1, p0, Landroid/vts/motion/VTSAPI;->mOnDetectionStopListener:Landroid/vts/OnDetectionStopListener;

    .line 1106
    return-void
.end method

.method public SetOnErrorDetectedListener(Landroid/vts/OnErrorDetectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/vts/OnErrorDetectedListener;

    .prologue
    .line 1113
    iput-object p1, p0, Landroid/vts/motion/VTSAPI;->mOnErrorDetectedListener:Landroid/vts/OnErrorDetectedListener;

    .line 1114
    return-void
.end method

.method public SetOnFPSChangeDetectedListener(Landroid/vts/OnFPSChangeDetectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/vts/OnFPSChangeDetectedListener;

    .prologue
    .line 1088
    iput-object p1, p0, Landroid/vts/motion/VTSAPI;->mOnFPSChangeDetectedListener:Landroid/vts/OnFPSChangeDetectedListener;

    .line 1090
    return-void
.end method

.method public SetOnGestureDetectedListener(Landroid/vts/OnGestureDetectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/vts/OnGestureDetectedListener;

    .prologue
    .line 1097
    iput-object p1, p0, Landroid/vts/motion/VTSAPI;->mOnGestureDetectedListener:Landroid/vts/OnGestureDetectedListener;

    .line 1098
    return-void
.end method

.method public SetOnInitDoneListener(Landroid/vts/OnInitDoneListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/vts/OnInitDoneListener;

    .prologue
    .line 1073
    iput-object p1, p0, Landroid/vts/motion/VTSAPI;->mOnInitDoneListener:Landroid/vts/OnInitDoneListener;

    .line 1074
    return-void
.end method

.method public SetOnStatusChangeDetectedListener(Landroid/vts/OnStatusChangeDetectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/vts/OnStatusChangeDetectedListener;

    .prologue
    .line 1121
    iput-object p1, p0, Landroid/vts/motion/VTSAPI;->mOnStatusChangeDetectedListener:Landroid/vts/OnStatusChangeDetectedListener;

    .line 1122
    return-void
.end method

.method public SetOrientation(I)I
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 483
    const-string v0, "VTSAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[API] SetOrientation() : (orientation)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v0, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    invoke-virtual {v0, p1}, Landroid/vts/motion/SKYMotionAPI;->SetOrientation(I)I

    move-result v0

    return v0
.end method

.method public SetParameter(II)V
    .locals 3
    .param p1, "param"    # I
    .param p2, "value"    # I

    .prologue
    .line 584
    const-string v0, "VTSAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[API] SetParameter() : (param)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(value)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v0, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    invoke-virtual {v0, p1, p2}, Landroid/vts/motion/SKYMotionAPI;->SetParameter(II)V

    .line 587
    return-void
.end method

.method public SetVisiblePreview(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 608
    const-string v0, "VTSAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[API] SetVisiblePreview() : (on)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v0, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    invoke-virtual {v0, p1}, Landroid/vts/motion/SKYMotionAPI;->SetVisiblePreview(Z)V

    .line 611
    return-void
.end method

.method public StartVTS(I)V
    .locals 6
    .param p1, "cam"    # I

    .prologue
    .line 329
    const-string v1, "VTSAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[API] StartVTS() : (cam)"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    sget v1, Landroid/vts/motion/VTSAPI;->mVTSState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 333
    const-string v1, "VTSAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "StartVTS(): already started!!! (state)"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Landroid/vts/motion/VTSAPI;->mVTSState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    const/16 v2, 0x64

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/vts/motion/VTSAPI$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 335
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    invoke-virtual {v1, v0}, Landroid/vts/motion/VTSAPI$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 348
    .end local v0    # "m":Landroid/os/Message;
    :goto_0
    return-void

    .line 339
    :cond_0
    const/4 v1, 0x3

    sput v1, Landroid/vts/motion/VTSAPI;->mVTSState:I

    .line 341
    iput p1, p0, Landroid/vts/motion/VTSAPI;->mCamType:I

    .line 342
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    iget v2, p0, Landroid/vts/motion/VTSAPI;->mCamType:I

    invoke-virtual {v1, v2}, Landroid/vts/motion/SKYMotionAPI;->StartSKYMotionEngine(I)I

    goto :goto_0
.end method

.method public StopRecordGesture()V
    .locals 3

    .prologue
    .line 537
    const-string v0, "VTSAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[API] StopRecordGesture() : (mRecord)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/vts/motion/VTSAPI;->mRecord:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    return-void
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 740
    const-string v0, "VTSAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "finalize() : finalize (ptr)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    return-void
.end method

.method public getAPIVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 718
    const-string v0, "Class VTSAPI v3.0.5 (2014.02.26.1059)"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    invoke-virtual {v0}, Landroid/vts/motion/SKYMotionAPI;->GetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Landroid/vts/VTSAPIInterface;
    .locals 1

    .prologue
    .line 192
    new-instance v0, Landroid/vts/motion/VTSAPI;

    invoke-direct {v0}, Landroid/vts/motion/VTSAPI;-><init>()V

    return-object v0
.end method

.method public release()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 409
    const-string v1, "VTSAPI"

    const-string v2, "[API] release()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    sput v4, Landroid/vts/motion/VTSAPI;->mVTSState:I

    .line 414
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    invoke-virtual {v1}, Landroid/vts/motion/SKYMotionAPI;->DestroySKYMotionEngine()V

    .line 416
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    if-eqz v1, :cond_0

    .line 418
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    const/16 v2, 0x12c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/vts/motion/VTSAPI$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 419
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    invoke-virtual {v1, v0}, Landroid/vts/motion/VTSAPI$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 421
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public setSensorMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 696
    const-string v0, "VTSAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[API] setSensorMode(mode)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object v0, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    invoke-virtual {v0, p1}, Landroid/vts/motion/SKYMotionAPI;->setSensorMode(I)V

    .line 698
    return-void
.end method

.method public stopVTS()V
    .locals 8

    .prologue
    const/4 v6, 0x3

    .line 354
    const-string v3, "VTSAPI"

    const-string v4, "[API] stopVTS()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    sget v3, Landroid/vts/motion/VTSAPI;->mVTSState:I

    if-ne v3, v6, :cond_3

    .line 358
    const-string v3, "VTSAPI"

    const-string v4, "[API] stopVTS() : (SKYMOTION_ENGINE_STATE_START_READY)"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/4 v2, 0x0

    .line 362
    .local v2, "wait":I
    :cond_0
    const-string v3, "VTSAPI"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ENGINE] stopVTS() : waiting (wait)"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    add-int/lit8 v2, v2, 0x1

    .line 366
    const/16 v3, 0x32

    if-ne v2, v3, :cond_2

    .line 382
    .end local v2    # "wait":I
    :cond_1
    :goto_0
    const/4 v3, 0x5

    sput v3, Landroid/vts/motion/VTSAPI;->mVTSState:I

    .line 384
    iget-object v3, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    invoke-virtual {v3}, Landroid/vts/motion/SKYMotionAPI;->StopSKYMotionEngine()I

    .line 390
    :goto_1
    return-void

    .line 369
    .restart local v2    # "wait":I
    :cond_2
    const-wide/16 v3, 0x64

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :goto_2
    sget v3, Landroid/vts/motion/VTSAPI;->mVTSState:I

    if-eq v3, v6, :cond_0

    goto :goto_0

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 375
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "wait":I
    :cond_3
    sget v3, Landroid/vts/motion/VTSAPI;->mVTSState:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    .line 376
    const-string v3, "VTSAPI"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "stopVTS(): invalid state!!! (state)"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Landroid/vts/motion/VTSAPI;->mVTSState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v3, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    const/16 v4, 0x64

    const/16 v5, 0x9

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/vts/motion/VTSAPI$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 378
    .local v1, "m":Landroid/os/Message;
    iget-object v3, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    invoke-virtual {v3, v1}, Landroid/vts/motion/VTSAPI$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method
