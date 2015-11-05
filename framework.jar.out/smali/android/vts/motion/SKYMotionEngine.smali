.class Landroid/vts/motion/SKYMotionEngine;
.super Ljava/lang/Object;
.source "SKYMotionEngine.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Ljava/lang/Runnable;


# static fields
.field private static ANDROID_VERSION:I = 0x0

.field private static final ANDROID_VERSION_GB:I = 0x0

.field private static final ANDROID_VERSION_ICS:I = 0x1

.field public static final CAMERA_IN_USE:I = 0x6

.field private static final COVER:I = 0x3

.field private static final DATA_X:I = 0x0

.field private static final DATA_Y:I = 0x1

.field private static final DATA_Z:I = 0x2

.field private static final FASTEST:I = 0x3

.field private static final GAME:I = 0x2

.field private static final INPUT_FRAME_HEIGHT:I = 0xf0

.field private static final INPUT_FRAME_WIDTH:I = 0x140

.field private static final LEFT:I = 0x1

.field private static final NORMAL:I = 0x1

.field private static final OUTPUT_FILE_NAME:Ljava/lang/String; = "/sdcard/vts"

.field private static final RECORDING_STATE_IDLE:I = 0x0

.field private static final RECORDING_STATE_START:I = 0x1

.field private static final RECORDING_STATE_STOP:I = 0x2

.field private static final RIGHT:I = 0x2

.field private static RecFrame:I = 0x0

.field private static RecMotionCntCover:I = 0x0

.field private static RecMotionCntLeft:I = 0x0

.field private static RecMotionCntRight:I = 0x0

.field private static final SHAKING_STATE_START:I = 0x0

.field private static final SHAKING_STATE_STOP:I = 0x1

.field private static final SHAKING_STATE_VTS_RELEASE:I = 0x3

.field private static final SHAKING_STATE_VTS_STOP:I = 0x2

.field private static final SKYMOTION_TYPE_MOTION_DETECT:I = 0x2

.field private static final SKYMOTION_TYPE_MOTION_DETECT_COVER:I = 0x5

.field private static final SKYMOTION_TYPE_MOTION_EST:I = 0x1

.field private static final SKYMOTION_TYPE_MOTION_EST_COVER_1:I = 0x3

.field private static final SKYMOTION_TYPE_MOTION_EST_COVER_2:I = 0x4

.field private static final SKYMOTION_TYPE_MOTION_EST_COVER_3:I = 0x6

.field private static final SKYMOTION_TYPE_MOTION_HISTORY:I = 0x0

.field public static final STATUS_NOT_STABLE:I = 0x2

.field public static final STATUS_STABLE:I = 0x1

.field public static final STATUS_START:I = 0x0

.field public static final STATUS_STOP:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SKYMotionEngine"

.field private static final UI:I = 0x0

.field public static final VERSION:Ljava/lang/String; = "SKYMotionengine v1.0.1 (Build.2014.02.26.1059)"

.field private static final WAVE_DISABLE:I = 0x0

.field private static final WAVE_ENABLE:I = 0x1

.field private static final WAVE_LEFT_RIGHT:I = 0x4

.field private static final WAVE_RIGHT_LEFT:I = 0x5

.field private static final WLEFT:I = 0x6

.field private static final WRIGHT:I = 0x7

.field private static final cntEND:I = 0x7

.field private static cntFPS:I = 0x0

.field private static final cntIDLE:I = 0x0

.field private static final cntSTART:I = 0x1

.field private static mAlgorithm:I


# instance fields
.field private DBG_FPS_COUNT:Z

.field private DBG_FPS_LOG:Z

.field private DBG_LOG:Z

.field private MOTION_EVENT_CHECK:Z

.field private SENSOR_DELAY_MODE:I

.field private SENSOR_ENABLE:Z

.field private SHAKE_THRESHOLD:I

.field private accOn:Z

.field private cameraIsRunning:Z

.field private cntFrame:I

.field private cntShaking:I

.field private currentTimeForWAVE:J

.field private currentTimeForWAVE2:J

.field private data1:[B

.field private data2:[B

.field private gabOfTimeForWAVE:J

.field private gabOfTimeForWAVE2:J

.field hdmiService:Landroid/os/IHDMIService;

.field private isNotShaking:I

.field private isProcessing:Z

.field private isShaking:I

.field private lastTimeForACC:J

.field lastTimeForFPS:J

.field private lastTimeForWAVE:J

.field private lastX:F

.field private lastY:F

.field private lastZ:F

.field private lightSensor:Landroid/hardware/Sensor;

.field private lock:I

.field private mCamera:Landroid/hardware/Camera;

.field private mContext:Landroid/content/Context;

.field private mCore:Landroid/vts/motion/SKYMotionCore;

.field private mDt:Ljava/lang/String;

.field private mEPLock:Ljava/lang/String;

.field private mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

.field private mFixedFPS:I

.field private mFrame:[B

.field private mFrameHeight:I

.field private mFrameWidth:I

.field private mHDMI:Z

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mMotion:I

.field private mOrientation:I

.field private mPreview:Z

.field private mRPM:Ljava/lang/String;

.field private mRotation:I

.field private mScale:I

.field private mThreadRun:Z

.field private mView:Landroid/vts/motion/SKYMotionView;

.field private mVisiblePreview:Z

.field private mY_channel:[B

.field private mYuv:Landroid/vts/cv/VTSMat;

.field private mYuv2:Landroid/vts/cv/VTSMat;

.field private mYuv_0:Landroid/vts/cv/VTSMat;

.field private mYuv_90:Landroid/vts/cv/VTSMat;

.field private outStream:Ljava/io/FileOutputStream;

.field private outputFile:Ljava/io/File;

.field private proxSensor:Landroid/hardware/Sensor;

.field private recordingState:I

.field private releaseCalled:Z

.field private releaseForThread:Z

.field private resetFPS:Z

.field private rotationVectorSensor:Landroid/hardware/Sensor;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private shakingState:I

.field private speed:F

.field public status:I

.field private stopCalled:Z

.field private stopDone:Z

.field private useRecType:I

.field private waveState:I

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 184
    const/4 v0, 0x1

    sput v0, Landroid/vts/motion/SKYMotionEngine;->ANDROID_VERSION:I

    .line 247
    sput v1, Landroid/vts/motion/SKYMotionEngine;->RecMotionCntLeft:I

    sput v1, Landroid/vts/motion/SKYMotionEngine;->RecMotionCntRight:I

    sput v1, Landroid/vts/motion/SKYMotionEngine;->RecMotionCntCover:I

    .line 248
    sput v1, Landroid/vts/motion/SKYMotionEngine;->RecFrame:I

    .line 287
    sput v1, Landroid/vts/motion/SKYMotionEngine;->cntFPS:I

    .line 294
    return-void
.end method

.method public constructor <init>(Landroid/vts/motion/SKYMotionAPI;Landroid/content/Context;)V
    .locals 6
    .param p1, "api"    # Landroid/vts/motion/SKYMotionAPI;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput v2, p0, Landroid/vts/motion/SKYMotionEngine;->lock:I

    .line 141
    const/16 v0, 0x1e

    iput v0, p0, Landroid/vts/motion/SKYMotionEngine;->mFixedFPS:I

    .line 155
    iput v5, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    .line 169
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->mVisiblePreview:Z

    .line 207
    iput v2, p0, Landroid/vts/motion/SKYMotionEngine;->waveState:I

    .line 210
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->MOTION_EVENT_CHECK:Z

    .line 223
    const/4 v0, 0x5

    iput v0, p0, Landroid/vts/motion/SKYMotionEngine;->SHAKE_THRESHOLD:I

    .line 228
    iput v3, p0, Landroid/vts/motion/SKYMotionEngine;->shakingState:I

    .line 233
    iput-boolean v3, p0, Landroid/vts/motion/SKYMotionEngine;->accOn:Z

    .line 234
    iput v2, p0, Landroid/vts/motion/SKYMotionEngine;->isShaking:I

    .line 235
    iput v2, p0, Landroid/vts/motion/SKYMotionEngine;->isNotShaking:I

    .line 236
    iput v5, p0, Landroid/vts/motion/SKYMotionEngine;->cntShaking:I

    .line 242
    iput v2, p0, Landroid/vts/motion/SKYMotionEngine;->recordingState:I

    .line 243
    iput v4, p0, Landroid/vts/motion/SKYMotionEngine;->useRecType:I

    .line 249
    iput-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->mEPLock:Ljava/lang/String;

    .line 250
    iput-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->mDt:Ljava/lang/String;

    .line 251
    iput-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->mRPM:Ljava/lang/String;

    .line 254
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->stopDone:Z

    .line 255
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->releaseCalled:Z

    .line 256
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->isProcessing:Z

    .line 257
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->stopCalled:Z

    .line 258
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->releaseForThread:Z

    .line 260
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->SENSOR_ENABLE:Z

    .line 267
    iput v4, p0, Landroid/vts/motion/SKYMotionEngine;->SENSOR_DELAY_MODE:I

    .line 271
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->mHDMI:Z

    .line 278
    iput-boolean v3, p0, Landroid/vts/motion/SKYMotionEngine;->cameraIsRunning:Z

    .line 282
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_LOG:Z

    .line 283
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_FPS_LOG:Z

    .line 284
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_FPS_COUNT:Z

    .line 286
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/vts/motion/SKYMotionEngine;->lastTimeForFPS:J

    .line 288
    iput-boolean v3, p0, Landroid/vts/motion/SKYMotionEngine;->resetFPS:Z

    .line 291
    iput v2, p0, Landroid/vts/motion/SKYMotionEngine;->cntFrame:I

    .line 302
    const-string v0, "SKYMotionEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ENGINE] instanciation() : (ptr)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iput-object p2, p0, Landroid/vts/motion/SKYMotionEngine;->mContext:Landroid/content/Context;

    .line 306
    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Landroid/vts/motion/SKYMotionEngine;->init(Landroid/vts/motion/SKYMotionAPI;I)V

    .line 307
    return-void
.end method

.method public constructor <init>(Landroid/vts/motion/SKYMotionAPI;Landroid/content/Context;I)V
    .locals 6
    .param p1, "api"    # Landroid/vts/motion/SKYMotionAPI;
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "algorithm"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput v2, p0, Landroid/vts/motion/SKYMotionEngine;->lock:I

    .line 141
    const/16 v0, 0x1e

    iput v0, p0, Landroid/vts/motion/SKYMotionEngine;->mFixedFPS:I

    .line 155
    iput v5, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    .line 169
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->mVisiblePreview:Z

    .line 207
    iput v2, p0, Landroid/vts/motion/SKYMotionEngine;->waveState:I

    .line 210
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->MOTION_EVENT_CHECK:Z

    .line 223
    const/4 v0, 0x5

    iput v0, p0, Landroid/vts/motion/SKYMotionEngine;->SHAKE_THRESHOLD:I

    .line 228
    iput v3, p0, Landroid/vts/motion/SKYMotionEngine;->shakingState:I

    .line 233
    iput-boolean v3, p0, Landroid/vts/motion/SKYMotionEngine;->accOn:Z

    .line 234
    iput v2, p0, Landroid/vts/motion/SKYMotionEngine;->isShaking:I

    .line 235
    iput v2, p0, Landroid/vts/motion/SKYMotionEngine;->isNotShaking:I

    .line 236
    iput v5, p0, Landroid/vts/motion/SKYMotionEngine;->cntShaking:I

    .line 242
    iput v2, p0, Landroid/vts/motion/SKYMotionEngine;->recordingState:I

    .line 243
    iput v4, p0, Landroid/vts/motion/SKYMotionEngine;->useRecType:I

    .line 249
    iput-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->mEPLock:Ljava/lang/String;

    .line 250
    iput-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->mDt:Ljava/lang/String;

    .line 251
    iput-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->mRPM:Ljava/lang/String;

    .line 254
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->stopDone:Z

    .line 255
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->releaseCalled:Z

    .line 256
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->isProcessing:Z

    .line 257
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->stopCalled:Z

    .line 258
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->releaseForThread:Z

    .line 260
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->SENSOR_ENABLE:Z

    .line 267
    iput v4, p0, Landroid/vts/motion/SKYMotionEngine;->SENSOR_DELAY_MODE:I

    .line 271
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->mHDMI:Z

    .line 278
    iput-boolean v3, p0, Landroid/vts/motion/SKYMotionEngine;->cameraIsRunning:Z

    .line 282
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_LOG:Z

    .line 283
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_FPS_LOG:Z

    .line 284
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_FPS_COUNT:Z

    .line 286
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/vts/motion/SKYMotionEngine;->lastTimeForFPS:J

    .line 288
    iput-boolean v3, p0, Landroid/vts/motion/SKYMotionEngine;->resetFPS:Z

    .line 291
    iput v2, p0, Landroid/vts/motion/SKYMotionEngine;->cntFrame:I

    .line 317
    const-string v0, "SKYMotionEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ENGINE] instanciation() : (ptr)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iput-object p2, p0, Landroid/vts/motion/SKYMotionEngine;->mContext:Landroid/content/Context;

    .line 321
    invoke-virtual {p0, p1, p3}, Landroid/vts/motion/SKYMotionEngine;->init(Landroid/vts/motion/SKYMotionAPI;I)V

    .line 322
    return-void
.end method

.method static synthetic access$0(Landroid/vts/motion/SKYMotionEngine;)Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_FPS_LOG:Z

    return v0
.end method

.method static synthetic access$1(Landroid/vts/motion/SKYMotionEngine;)Z
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_FPS_COUNT:Z

    return v0
.end method

.method static synthetic access$2(Landroid/vts/motion/SKYMotionEngine;)Z
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Landroid/vts/motion/SKYMotionEngine;->resetFPS:Z

    return v0
.end method

.method static synthetic access$3(Landroid/vts/motion/SKYMotionEngine;Z)V
    .locals 0

    .prologue
    .line 288
    iput-boolean p1, p0, Landroid/vts/motion/SKYMotionEngine;->resetFPS:Z

    return-void
.end method

.method static synthetic access$4()I
    .locals 1

    .prologue
    .line 287
    sget v0, Landroid/vts/motion/SKYMotionEngine;->cntFPS:I

    return v0
.end method

.method static synthetic access$5(I)V
    .locals 0

    .prologue
    .line 287
    sput p0, Landroid/vts/motion/SKYMotionEngine;->cntFPS:I

    return-void
.end method

.method static synthetic access$6(Landroid/vts/motion/SKYMotionEngine;)Landroid/vts/motion/SKYMotionAPI;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

    return-object v0
.end method

.method static synthetic access$7(Landroid/vts/motion/SKYMotionEngine;[B)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Landroid/vts/motion/SKYMotionEngine;->mFrame:[B

    return-void
.end method

.method private openCamera(I)Landroid/hardware/Camera;
    .locals 9
    .param p1, "cameraId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x6

    .line 552
    const/4 v0, 0x0

    .line 554
    .local v0, "camera":Landroid/hardware/Camera;
    iget-object v5, p0, Landroid/vts/motion/SKYMotionEngine;->mCamera:Landroid/hardware/Camera;

    if-nez v5, :cond_3

    .line 556
    iget-boolean v5, p0, Landroid/vts/motion/SKYMotionEngine;->cameraIsRunning:Z

    if-eqz v5, :cond_4

    .line 557
    invoke-static {}, Landroid/hardware/Camera;->isRunning()I

    move-result v5

    if-eqz v5, :cond_0

    .line 558
    const/4 v2, 0x0

    .line 560
    .local v2, "wait":I
    :goto_0
    const-string v5, "SKYMotionEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[ENGINE] startVTS() : camera is running (wait)"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "wait":I
    .local v3, "wait":I
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const/16 v5, 0xf

    if-ne v3, v5, :cond_1

    .line 572
    .end local v3    # "wait":I
    :cond_0
    invoke-static {}, Landroid/hardware/Camera;->isRunning()I

    move-result v5

    if-eqz v5, :cond_2

    .line 573
    const-string v5, "SKYMotionEngine"

    const-string v6, "[ENGINE] startVTS() : do not open camera because camera is still running"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v5, p0, Landroid/vts/motion/SKYMotionEngine;->mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

    iget-object v5, v5, Landroid/vts/motion/SKYMotionAPI;->mCallback:Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;

    invoke-interface {v5, v8}, Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;->HandleSKYMotionError(I)V

    .line 598
    :goto_1
    return-object v4

    .line 565
    .restart local v3    # "wait":I
    :cond_1
    const-wide/16 v5, 0xc8

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    :goto_2
    invoke-static {}, Landroid/hardware/Camera;->isRunning()I

    move-result v5

    if-eqz v5, :cond_0

    move v2, v3

    .end local v3    # "wait":I
    .restart local v2    # "wait":I
    goto :goto_0

    .line 566
    .end local v2    # "wait":I
    .restart local v3    # "wait":I
    :catch_0
    move-exception v1

    .line 567
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 577
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "wait":I
    :cond_2
    const-string v5, "SKYMotionEngine"

    const-string v6, "[ENGINE] startVTS() : camera is not running "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :try_start_1
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_3
    :goto_3
    move-object v4, v0

    .line 598
    goto :goto_1

    .line 580
    :catch_1
    move-exception v1

    .line 581
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "SKYMotionEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[ENGINE] startVTS() : mCamera.open is failed: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v5, p0, Landroid/vts/motion/SKYMotionEngine;->mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

    iget-object v5, v5, Landroid/vts/motion/SKYMotionAPI;->mCallback:Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;

    invoke-interface {v5, v8}, Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;->HandleSKYMotionError(I)V

    goto :goto_1

    .line 588
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_2
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto :goto_3

    .line 590
    :catch_2
    move-exception v1

    .line 591
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "SKYMotionEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[ENGINE] startVTS() : mCamera.open is failed: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object v5, p0, Landroid/vts/motion/SKYMotionEngine;->mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

    iget-object v5, v5, Landroid/vts/motion/SKYMotionAPI;->mCallback:Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;

    invoke-interface {v5, v8}, Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;->HandleSKYMotionError(I)V

    goto :goto_1
.end method

.method private processFrame([B)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "data"    # [B

    .prologue
    const/4 v11, 0x3

    const/16 v7, 0x140

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 900
    iget-boolean v3, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_LOG:Z

    if-eqz v3, :cond_0

    const-string v3, "SKYMotionEngine"

    const-string v4, "[ENGINE] processFrame()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :cond_0
    const/4 v0, -0x1

    .line 903
    .local v0, "motion":I
    iput-boolean v9, p0, Landroid/vts/motion/SKYMotionEngine;->isProcessing:Z

    .line 905
    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->cntFrame:I

    if-lez v3, :cond_9

    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->cntFrame:I

    const/4 v4, 0x7

    if-ge v3, v4, :cond_9

    .line 906
    const-string v3, "SKYMotionEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ENGINE] processFrame():(cntFrame)"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Landroid/vts/motion/SKYMotionEngine;->cntFrame:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->cntFrame:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/vts/motion/SKYMotionEngine;->cntFrame:I

    .line 915
    :cond_1
    :goto_0
    iget-boolean v3, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_LOG:Z

    if-eqz v3, :cond_2

    const-string v3, "SKYMotionEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ENGINE] processFrame_end(isProcessing)"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Landroid/vts/motion/SKYMotionEngine;->isProcessing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :cond_2
    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->mRotation:I

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->mRotation:I

    if-ne v3, v10, :cond_c

    .line 920
    :cond_3
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_1
    const/16 v3, 0xf0

    iget v4, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    div-int/2addr v3, v4

    if-lt v2, v3, :cond_a

    .line 931
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv_0:Landroid/vts/cv/VTSMat;

    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->mY_channel:[B

    invoke-virtual {v3, v8, v8, v4}, Landroid/vts/cv/VTSMat;->put(II[B)V

    .line 932
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv_0:Landroid/vts/cv/VTSMat;

    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv_90:Landroid/vts/cv/VTSMat;

    iget v5, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameWidth:I

    iget v6, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    div-int/2addr v5, v6

    iget v6, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameHeight:I

    iget v7, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    div-int/2addr v6, v7

    invoke-static {v3, v4, v5, v6}, Landroid/vts/cv/VTSImgProc;->resize(Landroid/vts/cv/VTSMat;Landroid/vts/cv/VTSMat;II)V

    .line 949
    :goto_2
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv_90:Landroid/vts/cv/VTSMat;

    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->data1:[B

    invoke-virtual {v3, v8, v8, v4}, Landroid/vts/cv/VTSMat;->get(II[B)V

    .line 950
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->mCore:Landroid/vts/motion/SKYMotionCore;

    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv_90:Landroid/vts/cv/VTSMat;

    invoke-virtual {v4}, Landroid/vts/cv/VTSMat;->getNativeObjAddr()J

    move-result-wide v4

    iget v6, p0, Landroid/vts/motion/SKYMotionEngine;->mRotation:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/vts/motion/SKYMotionCore;->NativeProcessFrame(JI)I

    move-result v0

    .line 952
    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->useRecType:I

    if-eq v3, v9, :cond_4

    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->useRecType:I

    if-ne v3, v10, :cond_f

    .line 953
    :cond_4
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->data1:[B

    invoke-virtual {p0, v3, v0}, Landroid/vts/motion/SKYMotionEngine;->record([BI)V

    .line 965
    :cond_5
    :goto_3
    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->status:I

    if-ne v3, v9, :cond_10

    .line 966
    iget-boolean v3, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_LOG:Z

    if-eqz v3, :cond_6

    const-string v3, "SKYMotionEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ENGINE] processFrame():sendEvent(motion)"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    :cond_6
    invoke-virtual {p0, v0}, Landroid/vts/motion/SKYMotionEngine;->sendEvent(I)V

    .line 973
    :cond_7
    :goto_4
    iput-boolean v8, p0, Landroid/vts/motion/SKYMotionEngine;->isProcessing:Z

    .line 974
    iget-boolean v3, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_LOG:Z

    if-eqz v3, :cond_8

    const-string v3, "SKYMotionEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ENGINE] processFrame_end(isProcessing)"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Landroid/vts/motion/SKYMotionEngine;->isProcessing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :cond_8
    const/4 v3, 0x0

    return-object v3

    .line 909
    .end local v2    # "y":I
    :cond_9
    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->cntFrame:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    .line 910
    const-string v3, "SKYMotionEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ENGINE] processFrame():(cntFrame)"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Landroid/vts/motion/SKYMotionEngine;->cntFrame:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "send COVER event"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

    iget-object v3, v3, Landroid/vts/motion/SKYMotionAPI;->mCallback:Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;

    invoke-interface {v3, v11}, Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;->HandleSKYMotionAction(I)V

    .line 912
    iput v8, p0, Landroid/vts/motion/SKYMotionEngine;->cntFrame:I

    goto/16 :goto_0

    .line 921
    .restart local v2    # "y":I
    :cond_a
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_5
    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    div-int v3, v7, v3

    if-lt v1, v3, :cond_b

    .line 920
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 922
    :cond_b
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->mY_channel:[B

    iget v4, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    div-int v4, v7, v4

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    mul-int/lit16 v4, v4, 0xf0

    iget v5, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    div-int/2addr v4, v5

    add-int/2addr v4, v2

    iget v5, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    mul-int/2addr v5, v2

    mul-int/lit16 v5, v5, 0x140

    iget v6, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    mul-int/2addr v6, v1

    add-int/2addr v5, v6

    aget-byte v5, p1, v5

    aput-byte v5, v3, v4

    .line 921
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 934
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_c
    const/4 v2, 0x0

    .restart local v2    # "y":I
    :goto_6
    const/16 v3, 0xf0

    iget v4, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    div-int/2addr v3, v4

    if-lt v2, v3, :cond_d

    .line 942
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv_90:Landroid/vts/cv/VTSMat;

    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->mY_channel:[B

    invoke-virtual {v3, v8, v8, v4}, Landroid/vts/cv/VTSMat;->put(II[B)V

    goto/16 :goto_2

    .line 935
    :cond_d
    const/4 v1, 0x0

    .restart local v1    # "x":I
    :goto_7
    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    div-int v3, v7, v3

    if-lt v1, v3, :cond_e

    .line 934
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 936
    :cond_e
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->mY_channel:[B

    mul-int/lit16 v4, v2, 0x140

    iget v5, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    div-int/2addr v4, v5

    add-int/2addr v4, v1

    iget v5, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    mul-int/2addr v5, v2

    mul-int/lit16 v5, v5, 0x140

    iget v6, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    mul-int/2addr v6, v1

    add-int/2addr v5, v6

    aget-byte v5, p1, v5

    aput-byte v5, v3, v4

    .line 935
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 955
    .end local v1    # "x":I
    :cond_f
    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->useRecType:I

    if-ne v3, v11, :cond_5

    .line 956
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv:Landroid/vts/cv/VTSMat;

    invoke-virtual {v3, v8, v8, p1}, Landroid/vts/cv/VTSMat;->put(II[B)V

    .line 957
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv:Landroid/vts/cv/VTSMat;

    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv2:Landroid/vts/cv/VTSMat;

    iget v5, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameWidth:I

    iget v6, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    div-int/2addr v5, v6

    iget v6, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameHeight:I

    iget v7, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    div-int/2addr v6, v7

    invoke-static {v3, v4, v5, v6}, Landroid/vts/cv/VTSImgProc;->resize(Landroid/vts/cv/VTSMat;Landroid/vts/cv/VTSMat;II)V

    .line 958
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv2:Landroid/vts/cv/VTSMat;

    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->data2:[B

    invoke-virtual {v3, v8, v8, v4}, Landroid/vts/cv/VTSMat;->get(II[B)V

    .line 959
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->data2:[B

    invoke-virtual {p0, v3, v0}, Landroid/vts/motion/SKYMotionEngine;->record([BI)V

    goto/16 :goto_3

    .line 970
    :cond_10
    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->status:I

    if-ne v3, v10, :cond_7

    .line 971
    iget-boolean v3, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_LOG:Z

    if-eqz v3, :cond_7

    const-string v3, "SKYMotionEngine"

    const-string v4, "[ENGINE] processFrame: do not send Event (NotStable)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method


# virtual methods
.method public EnableDBGLog(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 1320
    const-string v0, "SKYMotionEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ENGINE] EnableDBGLog(on)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    iput-boolean p1, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_LOG:Z

    .line 1322
    iput-boolean p1, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_FPS_LOG:Z

    .line 1323
    iput-boolean p1, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_FPS_COUNT:Z

    .line 1324
    return-void
.end method

.method public EnableWaveAction(Z)I
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1111
    const-string v0, "SKYMotionEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ENGINE] EnableWaveAction() : (enable)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    if-eqz p1, :cond_1

    .line 1114
    const/4 v0, 0x1

    iput v0, p0, Landroid/vts/motion/SKYMotionEngine;->waveState:I

    .line 1119
    :cond_0
    :goto_0
    return v3

    .line 1115
    :cond_1
    if-nez p1, :cond_0

    .line 1116
    iput v3, p0, Landroid/vts/motion/SKYMotionEngine;->waveState:I

    goto :goto_0
.end method

.method public RecordGesture(Z)V
    .locals 6
    .param p1, "mRecord"    # Z

    .prologue
    .line 1283
    const-string v3, "SKYMotionEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ENGINE] StartRecordGesture() : (mRecord)"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    if-eqz p1, :cond_0

    .line 1285
    const/4 v3, 0x1

    iput v3, p0, Landroid/vts/motion/SKYMotionEngine;->recordingState:I

    .line 1287
    const/4 v3, 0x0

    sput v3, Landroid/vts/motion/SKYMotionEngine;->RecFrame:I

    sput v3, Landroid/vts/motion/SKYMotionEngine;->RecMotionCntCover:I

    sput v3, Landroid/vts/motion/SKYMotionEngine;->RecMotionCntRight:I

    sput v3, Landroid/vts/motion/SKYMotionEngine;->RecMotionCntLeft:I

    .line 1289
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "MM.dd.HH.mm.ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1290
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 1291
    .local v0, "date":Ljava/util/Date;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/sdcard/vts"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Landroid/vts/motion/SKYMotionEngine;->useRecType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_epLock"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/vts/motion/SKYMotionEngine;->mEPLock:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_dt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/vts/motion/SKYMotionEngine;->mDt:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_rpm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/vts/motion/SKYMotionEngine;->mRPM:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".vts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->outputFile:Ljava/io/File;

    .line 1293
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->outputFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->outStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1301
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    return-void

    .line 1294
    .restart local v0    # "date":Ljava/util/Date;
    .restart local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v2

    .line 1296
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1299
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    const/4 v3, 0x2

    iput v3, p0, Landroid/vts/motion/SKYMotionEngine;->recordingState:I

    goto :goto_0
.end method

.method public RecordGesture(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "mRecord"    # Z
    .param p2, "epLock"    # Ljava/lang/String;
    .param p3, "dt"    # Ljava/lang/String;
    .param p4, "rpm"    # Ljava/lang/String;

    .prologue
    .line 1304
    const-string v0, "SKYMotionEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ENGINE] StartRecordGesture() : (mRecord)"

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

    .line 1305
    iput-object p2, p0, Landroid/vts/motion/SKYMotionEngine;->mEPLock:Ljava/lang/String;

    .line 1306
    iput-object p3, p0, Landroid/vts/motion/SKYMotionEngine;->mDt:Ljava/lang/String;

    .line 1307
    iput-object p4, p0, Landroid/vts/motion/SKYMotionEngine;->mRPM:Ljava/lang/String;

    .line 1308
    invoke-virtual {p0, p1}, Landroid/vts/motion/SKYMotionEngine;->RecordGesture(Z)V

    .line 1309
    return-void
.end method

.method public SetAccelerometerFilter(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 1124
    const-string v0, "SKYMotionEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ENGINE] SetAccelerometerFilter() : (on)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    iput-boolean p1, p0, Landroid/vts/motion/SKYMotionEngine;->accOn:Z

    .line 1126
    iget-boolean v0, p0, Landroid/vts/motion/SKYMotionEngine;->accOn:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/vts/motion/SKYMotionEngine;->SetAccelerometerFilter(ZI)V

    .line 1128
    return-void
.end method

.method public SetAccelerometerFilter(ZI)V
    .locals 7
    .param p1, "on"    # Z
    .param p2, "i"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1131
    const-string v0, "SKYMotionEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ENGINE] SetAccelerometerFilter() : (on)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(i)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    iput-boolean p1, p0, Landroid/vts/motion/SKYMotionEngine;->accOn:Z

    .line 1135
    iget-boolean v0, p0, Landroid/vts/motion/SKYMotionEngine;->accOn:Z

    if-eqz v0, :cond_2

    .line 1137
    iget v0, p0, Landroid/vts/motion/SKYMotionEngine;->shakingState:I

    if-ne v0, v3, :cond_1

    .line 1139
    iget-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->rotationVectorSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 1141
    iget v0, p0, Landroid/vts/motion/SKYMotionEngine;->SENSOR_DELAY_MODE:I

    packed-switch v0, :pswitch_data_0

    .line 1152
    :cond_0
    :goto_0
    iput v4, p0, Landroid/vts/motion/SKYMotionEngine;->shakingState:I

    .line 1191
    :cond_1
    :goto_1
    return-void

    .line 1144
    :pswitch_0
    iget-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->rotationVectorSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1146
    :pswitch_1
    iget-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->rotationVectorSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1148
    :pswitch_2
    iget-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->rotationVectorSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1150
    :pswitch_3
    iget-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->rotationVectorSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    .line 1157
    :cond_2
    iget-boolean v0, p0, Landroid/vts/motion/SKYMotionEngine;->accOn:Z

    if-nez v0, :cond_1

    .line 1159
    iget v0, p0, Landroid/vts/motion/SKYMotionEngine;->shakingState:I

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/vts/motion/SKYMotionEngine;->shakingState:I

    if-eq v0, v5, :cond_3

    iget v0, p0, Landroid/vts/motion/SKYMotionEngine;->shakingState:I

    if-ne v0, v6, :cond_1

    .line 1161
    :cond_3
    iget-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->rotationVectorSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_5

    .line 1163
    const-string v0, "SKYMotionEngine"

    const-string v1, "RotationVector : unregisterListener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    iget-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->rotationVectorSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 1170
    :goto_2
    if-nez p2, :cond_4

    .line 1171
    iget-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

    iget-object v0, v0, Landroid/vts/motion/SKYMotionAPI;->mCallback:Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;

    invoke-interface {v0, v3}, Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;->HandleSKYMotionStatus(I)V

    .line 1172
    iput v3, p0, Landroid/vts/motion/SKYMotionEngine;->status:I

    .line 1174
    :cond_4
    iget v0, p0, Landroid/vts/motion/SKYMotionEngine;->shakingState:I

    if-nez v0, :cond_1

    .line 1175
    iput v3, p0, Landroid/vts/motion/SKYMotionEngine;->shakingState:I

    goto :goto_1

    .line 1167
    :cond_5
    const-string v0, "SKYMotionEngine"

    const-string v1, "RotationVector : null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1141
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public SetParameter(II)V
    .locals 3
    .param p1, "param"    # I
    .param p2, "value"    # I

    .prologue
    .line 1270
    const-string v0, "SKYMotionEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ENGINE] SetParameter() : (param)"

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

    .line 1271
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 1272
    iput p2, p0, Landroid/vts/motion/SKYMotionEngine;->SHAKE_THRESHOLD:I

    .line 1275
    :goto_0
    return-void

    .line 1274
    :cond_0
    iget-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->mCore:Landroid/vts/motion/SKYMotionCore;

    invoke-virtual {v0, p1, p2}, Landroid/vts/motion/SKYMotionCore;->NativeSetParameter(II)V

    goto :goto_0
.end method

.method public SetVisiblePreview(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 1278
    const-string v0, "SKYMotionEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ENGINE] SetVisiblePreview() : (on)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    iput-boolean p1, p0, Landroid/vts/motion/SKYMotionEngine;->mVisiblePreview:Z

    .line 1280
    return-void
.end method

.method public init(Landroid/vts/motion/SKYMotionAPI;I)V
    .locals 8
    .param p1, "api"    # Landroid/vts/motion/SKYMotionAPI;
    .param p2, "algorithm"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 330
    const-string v1, "SKYMotionEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ENGINE] init() : (ptr)"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iput-object p1, p0, Landroid/vts/motion/SKYMotionEngine;->mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

    .line 337
    sput p2, Landroid/vts/motion/SKYMotionEngine;->mAlgorithm:I

    .line 339
    new-instance v1, Landroid/vts/motion/SKYMotionCore;

    invoke-direct {v1}, Landroid/vts/motion/SKYMotionCore;-><init>()V

    iput-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->mCore:Landroid/vts/motion/SKYMotionCore;

    .line 340
    iget-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->mCore:Landroid/vts/motion/SKYMotionCore;

    sget v2, Landroid/vts/motion/SKYMotionEngine;->mAlgorithm:I

    invoke-virtual {v1, v2}, Landroid/vts/motion/SKYMotionCore;->NativeSetup(I)V

    .line 342
    const/16 v1, 0x140

    iput v1, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameWidth:I

    .line 343
    const/16 v1, 0xf0

    iput v1, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameHeight:I

    .line 344
    iput v5, p0, Landroid/vts/motion/SKYMotionEngine;->mOrientation:I

    .line 346
    new-instance v1, Landroid/vts/cv/VTSMat;

    iget v2, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameHeight:I

    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    div-int/2addr v2, v3

    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameWidth:I

    iget v4, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    div-int/2addr v3, v4

    invoke-direct {v1, v2, v3, v6}, Landroid/vts/cv/VTSMat;-><init>(III)V

    iput-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv_90:Landroid/vts/cv/VTSMat;

    .line 347
    new-instance v1, Landroid/vts/cv/VTSMat;

    iget v2, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameWidth:I

    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    div-int/2addr v2, v3

    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameHeight:I

    iget v4, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    div-int/2addr v3, v4

    invoke-direct {v1, v2, v3, v6}, Landroid/vts/cv/VTSMat;-><init>(III)V

    iput-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv_0:Landroid/vts/cv/VTSMat;

    .line 349
    iget v1, p0, Landroid/vts/motion/SKYMotionEngine;->useRecType:I

    if-ne v1, v7, :cond_0

    .line 350
    new-instance v1, Landroid/vts/cv/VTSMat;

    iget v2, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameWidth:I

    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameHeight:I

    invoke-direct {v1, v2, v3, v7}, Landroid/vts/cv/VTSMat;-><init>(III)V

    iput-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv:Landroid/vts/cv/VTSMat;

    .line 351
    new-instance v1, Landroid/vts/cv/VTSMat;

    iget v2, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameWidth:I

    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    div-int/2addr v2, v3

    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameHeight:I

    iget v4, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    div-int/2addr v3, v4

    invoke-direct {v1, v2, v3, v7}, Landroid/vts/cv/VTSMat;-><init>(III)V

    iput-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv2:Landroid/vts/cv/VTSMat;

    .line 352
    iget v1, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameWidth:I

    iget v2, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameHeight:I

    mul-int/2addr v1, v2

    iget v2, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    mul-int/2addr v2, v3

    div-int/2addr v1, v2

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->data2:[B

    .line 355
    :cond_0
    iget v1, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameWidth:I

    iget v2, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameHeight:I

    mul-int/2addr v1, v2

    iget v2, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    mul-int/2addr v2, v3

    div-int/2addr v1, v2

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->mY_channel:[B

    .line 356
    iget v1, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameWidth:I

    iget v2, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameHeight:I

    mul-int/2addr v1, v2

    iget v2, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    mul-int/2addr v2, v3

    div-int/2addr v1, v2

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->data1:[B

    .line 357
    iput-boolean v5, p0, Landroid/vts/motion/SKYMotionEngine;->mPreview:Z

    .line 359
    iput-boolean v5, p0, Landroid/vts/motion/SKYMotionEngine;->stopCalled:Z

    .line 365
    iget-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->sensorManager:Landroid/hardware/SensorManager;

    .line 366
    iget-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->rotationVectorSensor:Landroid/hardware/Sensor;

    .line 369
    iget-boolean v1, p0, Landroid/vts/motion/SKYMotionEngine;->SENSOR_ENABLE:Z

    if-eqz v1, :cond_1

    .line 370
    iget-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->lightSensor:Landroid/hardware/Sensor;

    .line 371
    iget-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->proxSensor:Landroid/hardware/Sensor;

    .line 379
    :cond_1
    new-instance v0, Landroid/os/Build;

    invoke-direct {v0}, Landroid/os/Build;-><init>()V

    .line 381
    .local v0, "b":Landroid/os/Build;
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "IM-A850S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "IM-A850K"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "IM-A850L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 382
    :cond_2
    const/16 v1, 0x18

    iput v1, p0, Landroid/vts/motion/SKYMotionEngine;->mFixedFPS:I

    .line 383
    iput-boolean v6, p0, Landroid/vts/motion/SKYMotionEngine;->mHDMI:Z

    .line 386
    :cond_3
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "IM-A800S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 387
    const/4 v1, 0x6

    iput v1, p0, Landroid/vts/motion/SKYMotionEngine;->cntShaking:I

    .line 389
    :cond_4
    const-string v1, "SKYMotionEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[BUILD_MODEL]: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mFixedFPS is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->mFixedFPS:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string v1, "SKYMotionEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[BUILD_MODEL]: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mHDMI is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/vts/motion/SKYMotionEngine;->mHDMI:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string v1, "SKYMotionEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[BUILD_MODEL]: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cntShaking is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->cntShaking:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string v1, "SKYMotionEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[BUILD_MODEL]: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cameraIsRunning is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/vts/motion/SKYMotionEngine;->cameraIsRunning:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-boolean v1, p0, Landroid/vts/motion/SKYMotionEngine;->mHDMI:Z

    if-eqz v1, :cond_5

    .line 399
    const-string v1, "hdmi"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IHDMIService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHDMIService;

    move-result-object v1

    iput-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->hdmiService:Landroid/os/IHDMIService;

    .line 405
    :cond_5
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/hardware/Sensor;
    .param p2, "arg1"    # I

    .prologue
    .line 1196
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1202
    iget-object v5, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1267
    :cond_0
    :goto_0
    return-void

    .line 1206
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1207
    .local v0, "currentTime":J
    iget-wide v5, p0, Landroid/vts/motion/SKYMotionEngine;->lastTimeForACC:J

    sub-long v3, v0, v5

    .line 1209
    .local v3, "gabOfTime":J
    const-wide/16 v5, 0x14

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    .line 1210
    iput-wide v0, p0, Landroid/vts/motion/SKYMotionEngine;->lastTimeForACC:J

    .line 1212
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v9

    iput v5, p0, Landroid/vts/motion/SKYMotionEngine;->x:F

    .line 1213
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v8

    iput v5, p0, Landroid/vts/motion/SKYMotionEngine;->y:F

    .line 1214
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v10

    iput v5, p0, Landroid/vts/motion/SKYMotionEngine;->z:F

    .line 1216
    iget v5, p0, Landroid/vts/motion/SKYMotionEngine;->x:F

    iget v6, p0, Landroid/vts/motion/SKYMotionEngine;->y:F

    add-float/2addr v5, v6

    iget v6, p0, Landroid/vts/motion/SKYMotionEngine;->z:F

    add-float/2addr v5, v6

    iget v6, p0, Landroid/vts/motion/SKYMotionEngine;->lastX:F

    sub-float/2addr v5, v6

    iget v6, p0, Landroid/vts/motion/SKYMotionEngine;->lastY:F

    sub-float/2addr v5, v6

    iget v6, p0, Landroid/vts/motion/SKYMotionEngine;->lastZ:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 1217
    long-to-float v6, v3

    div-float/2addr v5, v6

    const v6, 0x461c4000    # 10000.0f

    mul-float/2addr v5, v6

    .line 1216
    iput v5, p0, Landroid/vts/motion/SKYMotionEngine;->speed:F

    .line 1219
    iget-boolean v5, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_LOG:Z

    if-eqz v5, :cond_1

    const-string v5, "SKYMotionEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[ENGINE] onSensorChanged : (x)"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Landroid/vts/motion/SKYMotionEngine;->x:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "(y)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/vts/motion/SKYMotionEngine;->y:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "(z)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/vts/motion/SKYMotionEngine;->z:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "(lastX)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/vts/motion/SKYMotionEngine;->lastX:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "(lastY)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/vts/motion/SKYMotionEngine;->lastY:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "(lastZ)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/vts/motion/SKYMotionEngine;->lastZ:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    :cond_1
    iget-boolean v5, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_LOG:Z

    if-eqz v5, :cond_2

    const-string v5, "SKYMotionEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[ENGINE] onSensorChanged : (speed)"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Landroid/vts/motion/SKYMotionEngine;->speed:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    :cond_2
    iget v5, p0, Landroid/vts/motion/SKYMotionEngine;->speed:F

    iget v6, p0, Landroid/vts/motion/SKYMotionEngine;->SHAKE_THRESHOLD:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    .line 1224
    iget v5, p0, Landroid/vts/motion/SKYMotionEngine;->isShaking:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/vts/motion/SKYMotionEngine;->isShaking:I

    .line 1225
    iput v9, p0, Landroid/vts/motion/SKYMotionEngine;->isNotShaking:I

    .line 1233
    :goto_1
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v9

    iput v5, p0, Landroid/vts/motion/SKYMotionEngine;->lastX:F

    .line 1234
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v8

    iput v5, p0, Landroid/vts/motion/SKYMotionEngine;->lastY:F

    .line 1235
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v10

    iput v5, p0, Landroid/vts/motion/SKYMotionEngine;->lastZ:F

    .line 1237
    iget-boolean v5, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_LOG:Z

    if-eqz v5, :cond_3

    const-string v5, "SKYMotionEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[ENGINE] onSensorChanged : (isShaking)"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Landroid/vts/motion/SKYMotionEngine;->isShaking:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "(isNotShaking)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/vts/motion/SKYMotionEngine;->isNotShaking:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    :cond_3
    iget v5, p0, Landroid/vts/motion/SKYMotionEngine;->isShaking:I

    iget v6, p0, Landroid/vts/motion/SKYMotionEngine;->cntShaking:I

    if-ne v5, v6, :cond_4

    .line 1240
    iget-object v5, p0, Landroid/vts/motion/SKYMotionEngine;->mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

    iget-object v5, v5, Landroid/vts/motion/SKYMotionAPI;->mCallback:Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;

    invoke-interface {v5, v10}, Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;->HandleSKYMotionStatus(I)V

    .line 1241
    iput v10, p0, Landroid/vts/motion/SKYMotionEngine;->status:I

    .line 1244
    :cond_4
    iget v5, p0, Landroid/vts/motion/SKYMotionEngine;->isNotShaking:I

    const/16 v6, 0x3c

    if-ne v5, v6, :cond_0

    .line 1246
    iget v5, p0, Landroid/vts/motion/SKYMotionEngine;->status:I

    if-eq v5, v8, :cond_6

    .line 1247
    iget-object v5, p0, Landroid/vts/motion/SKYMotionEngine;->mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

    iget-object v5, v5, Landroid/vts/motion/SKYMotionAPI;->mCallback:Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;

    invoke-interface {v5, v8}, Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;->HandleSKYMotionStatus(I)V

    .line 1248
    iput v8, p0, Landroid/vts/motion/SKYMotionEngine;->status:I

    .line 1251
    :try_start_0
    const-string v5, "SKYMotionEngine"

    const-string v6, "[ENGINE] onSensorChanged : (Thread)begin"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    const-wide/16 v5, 0x12c

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1257
    :goto_2
    const-string v5, "SKYMotionEngine"

    const-string v6, "[ENGINE] onSensorChanged : (Thread)end"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1228
    :cond_5
    iget v5, p0, Landroid/vts/motion/SKYMotionEngine;->isNotShaking:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/vts/motion/SKYMotionEngine;->isNotShaking:I

    .line 1229
    iput v9, p0, Landroid/vts/motion/SKYMotionEngine;->isShaking:I

    goto :goto_1

    .line 1253
    :catch_0
    move-exception v2

    .line 1255
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 1259
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_6
    iget v5, p0, Landroid/vts/motion/SKYMotionEngine;->status:I

    if-ne v5, v8, :cond_0

    .line 1260
    const-string v5, "SKYMotionEngine"

    const-string/jumbo v6, "no delay"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    iget-object v5, p0, Landroid/vts/motion/SKYMotionEngine;->mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

    iget-object v5, v5, Landroid/vts/motion/SKYMotionAPI;->mCallback:Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;

    invoke-interface {v5, v8}, Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;->HandleSKYMotionStatus(I)V

    .line 1262
    iput v8, p0, Landroid/vts/motion/SKYMotionEngine;->status:I

    goto/16 :goto_0

    .line 1202
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public record([BI)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "motion"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 856
    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->recordingState:I

    if-ne v3, v6, :cond_5

    .line 857
    sget v3, Landroid/vts/motion/SKYMotionEngine;->RecFrame:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Landroid/vts/motion/SKYMotionEngine;->RecFrame:I

    .line 858
    if-ne p2, v6, :cond_3

    sget v3, Landroid/vts/motion/SKYMotionEngine;->RecMotionCntLeft:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Landroid/vts/motion/SKYMotionEngine;->RecMotionCntLeft:I

    .line 863
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v3, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_LOG:Z

    if-eqz v3, :cond_1

    const-string v3, "SKYMotionEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ENGINE] record() : (type)"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Landroid/vts/motion/SKYMotionEngine;->useRecType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :cond_1
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->outStream:Ljava/io/FileOutputStream;

    const/4 v4, 0x0

    array-length v5, p1

    invoke-virtual {v3, p1, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 865
    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->useRecType:I

    if-eq v3, v6, :cond_2

    .line 866
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->outStream:Ljava/io/FileOutputStream;

    invoke-virtual {v3, p2}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    :cond_2
    :goto_1
    return-void

    .line 859
    :cond_3
    if-ne p2, v4, :cond_4

    sget v3, Landroid/vts/motion/SKYMotionEngine;->RecMotionCntRight:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Landroid/vts/motion/SKYMotionEngine;->RecMotionCntRight:I

    goto :goto_0

    .line 860
    :cond_4
    const/4 v3, 0x3

    if-ne p2, v3, :cond_0

    sget v3, Landroid/vts/motion/SKYMotionEngine;->RecMotionCntCover:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Landroid/vts/motion/SKYMotionEngine;->RecMotionCntCover:I

    goto :goto_0

    .line 867
    :catch_0
    move-exception v2

    .line 868
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 870
    .end local v2    # "e":Ljava/io/IOException;
    :cond_5
    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->recordingState:I

    if-ne v3, v4, :cond_2

    .line 872
    :try_start_1
    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->useRecType:I

    if-eq v3, v6, :cond_6

    .line 873
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->outStream:Ljava/io/FileOutputStream;

    sget v4, Landroid/vts/motion/SKYMotionEngine;->RecMotionCntLeft:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 874
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->outStream:Ljava/io/FileOutputStream;

    sget v4, Landroid/vts/motion/SKYMotionEngine;->RecMotionCntRight:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 875
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->outStream:Ljava/io/FileOutputStream;

    sget v4, Landroid/vts/motion/SKYMotionEngine;->RecMotionCntCover:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 877
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 878
    .local v0, "buff":Ljava/nio/ByteBuffer;
    sget v3, Landroid/vts/motion/SKYMotionEngine;->RecFrame:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 879
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 880
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 881
    .local v1, "byteV":[B
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->outStream:Ljava/io/FileOutputStream;

    const/4 v4, 0x0

    array-length v5, v1

    invoke-virtual {v3, v1, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 883
    .end local v0    # "buff":Ljava/nio/ByteBuffer;
    .end local v1    # "byteV":[B
    :cond_6
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->outStream:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 887
    :goto_2
    iput v7, p0, Landroid/vts/motion/SKYMotionEngine;->recordingState:I

    goto :goto_1

    .line 884
    :catch_1
    move-exception v2

    .line 885
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public release()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 658
    const-string v3, "SKYMotionEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ENGINE] release() : (isProcessing)"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Landroid/vts/motion/SKYMotionEngine;->isProcessing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (ptr)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-boolean v3, p0, Landroid/vts/motion/SKYMotionEngine;->stopCalled:Z

    if-eqz v3, :cond_1

    .line 661
    iget-boolean v3, p0, Landroid/vts/motion/SKYMotionEngine;->stopDone:Z

    if-nez v3, :cond_0

    .line 662
    const-string v3, "SKYMotionEngine"

    const-string v4, "[ENGINE] release() : stop is not done"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iput-boolean v7, p0, Landroid/vts/motion/SKYMotionEngine;->releaseCalled:Z

    .line 711
    :goto_0
    return-void

    .line 667
    :cond_0
    const/4 v1, 0x0

    .line 669
    .local v1, "wait":I
    :goto_1
    const-string v3, "SKYMotionEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ENGINE] release() : wait until ProcessFrame is end (wait)"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "wait":I
    .local v2, "wait":I
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    const/16 v3, 0xf

    if-ne v2, v3, :cond_3

    .line 680
    .end local v2    # "wait":I
    :cond_1
    iput v8, p0, Landroid/vts/motion/SKYMotionEngine;->shakingState:I

    .line 682
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v7}, Landroid/vts/motion/SKYMotionEngine;->SetAccelerometerFilter(ZI)V

    .line 684
    monitor-enter p0

    .line 685
    :try_start_0
    const-string v3, "SKYMotionEngine"

    const-string v4, "[ENGINE] release() : this.wait.notify()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/vts/motion/SKYMotionEngine;->releaseForThread:Z

    .line 687
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 684
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->mCore:Landroid/vts/motion/SKYMotionCore;

    invoke-virtual {v3}, Landroid/vts/motion/SKYMotionCore;->NativeRelease()V

    .line 691
    iput-object v6, p0, Landroid/vts/motion/SKYMotionEngine;->mCore:Landroid/vts/motion/SKYMotionCore;

    .line 700
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv_0:Landroid/vts/cv/VTSMat;

    invoke-virtual {v3}, Landroid/vts/cv/VTSMat;->release()V

    .line 701
    iput-object v6, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv_0:Landroid/vts/cv/VTSMat;

    .line 702
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv_90:Landroid/vts/cv/VTSMat;

    invoke-virtual {v3}, Landroid/vts/cv/VTSMat;->release()V

    .line 703
    iput-object v6, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv_90:Landroid/vts/cv/VTSMat;

    .line 705
    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->useRecType:I

    if-ne v3, v8, :cond_2

    .line 706
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv:Landroid/vts/cv/VTSMat;

    invoke-virtual {v3}, Landroid/vts/cv/VTSMat;->release()V

    .line 707
    iput-object v6, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv:Landroid/vts/cv/VTSMat;

    .line 710
    :cond_2
    iput-object v6, p0, Landroid/vts/motion/SKYMotionEngine;->mY_channel:[B

    goto :goto_0

    .line 673
    .restart local v2    # "wait":I
    :cond_3
    const-wide/16 v3, 0x64

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 677
    :goto_2
    iget-boolean v3, p0, Landroid/vts/motion/SKYMotionEngine;->isProcessing:Z

    if-eqz v3, :cond_1

    move v1, v2

    .end local v2    # "wait":I
    .restart local v1    # "wait":I
    goto :goto_1

    .line 674
    .end local v1    # "wait":I
    .restart local v2    # "wait":I
    :catch_0
    move-exception v0

    .line 675
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 684
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "wait":I
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public run()V
    .locals 4

    .prologue
    .line 1073
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->mThreadRun:Z

    .line 1074
    :cond_0
    :goto_0
    iget-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->mThreadRun:Z

    if-nez v2, :cond_1

    .line 1101
    return-void

    .line 1075
    :cond_1
    const/4 v0, 0x0

    .line 1077
    .local v0, "bmp":Landroid/graphics/Bitmap;
    monitor-enter p0

    .line 1079
    :try_start_0
    iget-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_LOG:Z

    if-eqz v2, :cond_2

    const-string v2, "SKYMotionEngine"

    const-string v3, "[ENGINE] this.wait.before()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 1081
    iget-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->releaseForThread:Z

    if-nez v2, :cond_5

    .line 1082
    iget-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_LOG:Z

    if-eqz v2, :cond_3

    const-string v2, "SKYMotionEngine"

    const-string v3, "[ENGINE] this.wait.after()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    :cond_3
    iget-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_LOG:Z

    if-eqz v2, :cond_4

    const-string v2, "SKYMotionEngine"

    const-string v3, "[ENGINE]run():processFrame()"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    :cond_4
    iget-object v2, p0, Landroid/vts/motion/SKYMotionEngine;->mFrame:[B

    invoke-direct {p0, v2}, Landroid/vts/motion/SKYMotionEngine;->processFrame([B)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1077
    :cond_5
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1093
    sget v2, Landroid/vts/motion/SKYMotionEngine;->ANDROID_VERSION:I

    if-nez v2, :cond_0

    .line 1094
    iget-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->mPreview:Z

    if-eqz v2, :cond_0

    .line 1095
    if-eqz v0, :cond_0

    .line 1096
    iget-object v2, p0, Landroid/vts/motion/SKYMotionEngine;->mView:Landroid/vts/motion/SKYMotionView;

    invoke-virtual {v2, v0}, Landroid/vts/motion/SKYMotionView;->draw(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1087
    :catch_0
    move-exception v1

    .line 1088
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 1077
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public sendEvent(I)V
    .locals 9
    .param p1, "motion"    # I

    .prologue
    const-wide/16 v7, 0x7d0

    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 985
    iget-boolean v0, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "SKYMotionEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ENGINE] sendEvent():(mMotion) "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/vts/motion/SKYMotionEngine;->mMotion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (motion) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    :cond_0
    iget v0, p0, Landroid/vts/motion/SKYMotionEngine;->waveState:I

    if-ne v0, v4, :cond_8

    .line 988
    if-eq p1, v4, :cond_1

    if-ne p1, v6, :cond_6

    .line 989
    :cond_1
    if-ne p1, v4, :cond_4

    .line 990
    iget-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

    iget-object v0, v0, Landroid/vts/motion/SKYMotionAPI;->mCallback:Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;->HandleSKYMotionAction(I)V

    .line 994
    :goto_0
    iput-boolean v4, p0, Landroid/vts/motion/SKYMotionEngine;->MOTION_EVENT_CHECK:Z

    .line 996
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/vts/motion/SKYMotionEngine;->currentTimeForWAVE:J

    .line 997
    iget-wide v0, p0, Landroid/vts/motion/SKYMotionEngine;->currentTimeForWAVE:J

    iget-wide v2, p0, Landroid/vts/motion/SKYMotionEngine;->lastTimeForWAVE:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/vts/motion/SKYMotionEngine;->gabOfTimeForWAVE:J

    .line 1002
    iget-wide v0, p0, Landroid/vts/motion/SKYMotionEngine;->gabOfTimeForWAVE2:J

    cmp-long v0, v0, v7

    if-gez v0, :cond_2

    .line 1006
    iget v0, p0, Landroid/vts/motion/SKYMotionEngine;->mMotion:I

    if-ne v0, v4, :cond_5

    if-ne p1, v6, :cond_5

    .line 1007
    const/4 p1, 0x4

    .line 1008
    iget-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

    iget-object v0, v0, Landroid/vts/motion/SKYMotionAPI;->mCallback:Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;

    invoke-interface {v0, p1}, Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;->HandleSKYMotionAction(I)V

    .line 1009
    iput-boolean v5, p0, Landroid/vts/motion/SKYMotionEngine;->MOTION_EVENT_CHECK:Z

    .line 1017
    :cond_2
    :goto_1
    iput p1, p0, Landroid/vts/motion/SKYMotionEngine;->mMotion:I

    .line 1018
    iget-wide v0, p0, Landroid/vts/motion/SKYMotionEngine;->currentTimeForWAVE:J

    iput-wide v0, p0, Landroid/vts/motion/SKYMotionEngine;->lastTimeForWAVE:J

    .line 1065
    :cond_3
    :goto_2
    return-void

    .line 992
    :cond_4
    iget-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

    iget-object v0, v0, Landroid/vts/motion/SKYMotionAPI;->mCallback:Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;->HandleSKYMotionAction(I)V

    goto :goto_0

    .line 1010
    :cond_5
    iget v0, p0, Landroid/vts/motion/SKYMotionEngine;->mMotion:I

    if-ne v0, v6, :cond_2

    if-ne p1, v4, :cond_2

    .line 1011
    const/4 p1, 0x5

    .line 1012
    iget-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

    iget-object v0, v0, Landroid/vts/motion/SKYMotionAPI;->mCallback:Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;

    invoke-interface {v0, p1}, Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;->HandleSKYMotionAction(I)V

    .line 1013
    iput-boolean v5, p0, Landroid/vts/motion/SKYMotionEngine;->MOTION_EVENT_CHECK:Z

    goto :goto_1

    .line 1021
    :cond_6
    if-nez p1, :cond_7

    .line 1022
    iget-boolean v0, p0, Landroid/vts/motion/SKYMotionEngine;->MOTION_EVENT_CHECK:Z

    if-eqz v0, :cond_3

    .line 1023
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/vts/motion/SKYMotionEngine;->currentTimeForWAVE2:J

    .line 1024
    iget-wide v0, p0, Landroid/vts/motion/SKYMotionEngine;->currentTimeForWAVE2:J

    iget-wide v2, p0, Landroid/vts/motion/SKYMotionEngine;->lastTimeForWAVE:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/vts/motion/SKYMotionEngine;->gabOfTimeForWAVE2:J

    .line 1026
    iget-wide v0, p0, Landroid/vts/motion/SKYMotionEngine;->gabOfTimeForWAVE2:J

    cmp-long v0, v0, v7

    if-lez v0, :cond_3

    .line 1029
    iget-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

    iget-object v0, v0, Landroid/vts/motion/SKYMotionAPI;->mCallback:Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;

    iget v1, p0, Landroid/vts/motion/SKYMotionEngine;->mMotion:I

    invoke-interface {v0, v1}, Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;->HandleSKYMotionAction(I)V

    .line 1030
    iput p1, p0, Landroid/vts/motion/SKYMotionEngine;->mMotion:I

    .line 1031
    iput-boolean v5, p0, Landroid/vts/motion/SKYMotionEngine;->MOTION_EVENT_CHECK:Z

    .line 1032
    iget-wide v0, p0, Landroid/vts/motion/SKYMotionEngine;->currentTimeForWAVE:J

    iput-wide v0, p0, Landroid/vts/motion/SKYMotionEngine;->lastTimeForWAVE:J

    goto :goto_2

    .line 1035
    :cond_7
    if-ne p1, v3, :cond_3

    .line 1044
    iput v4, p0, Landroid/vts/motion/SKYMotionEngine;->cntFrame:I

    goto :goto_2

    .line 1047
    :cond_8
    iget v0, p0, Landroid/vts/motion/SKYMotionEngine;->waveState:I

    if-nez v0, :cond_3

    .line 1048
    iget v0, p0, Landroid/vts/motion/SKYMotionEngine;->mMotion:I

    if-eq v0, p1, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    .line 1049
    if-ne p1, v3, :cond_9

    .line 1058
    iput v4, p0, Landroid/vts/motion/SKYMotionEngine;->cntFrame:I

    goto :goto_2

    .line 1061
    :cond_9
    iget-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

    iget-object v0, v0, Landroid/vts/motion/SKYMotionAPI;->mCallback:Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;

    invoke-interface {v0, p1}, Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;->HandleSKYMotionAction(I)V

    goto :goto_2
.end method

.method public setCameraParameters()V
    .locals 4

    .prologue
    .line 720
    const-string v1, "SKYMotionEngine"

    const-string v2, "[ENGINE] setCameraParameters()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 724
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    iget v1, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameWidth:I

    iget v2, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 729
    iget v1, p0, Landroid/vts/motion/SKYMotionEngine;->mFixedFPS:I

    mul-int/lit16 v1, v1, 0x3e8

    iget v2, p0, Landroid/vts/motion/SKYMotionEngine;->mFixedFPS:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 730
    const-string v1, "daylight"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 732
    const-string v1, "SKYMotionEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ENGINE] start() : (mVisiblePreview)"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Landroid/vts/motion/SKYMotionEngine;->mVisiblePreview:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-boolean v1, p0, Landroid/vts/motion/SKYMotionEngine;->mVisiblePreview:Z

    if-eqz v1, :cond_0

    .line 734
    const-string/jumbo v1, "pantech-vts"

    const-string/jumbo v2, "off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    :goto_0
    const-string v1, "auto-exposure-values"

    const-string v2, "center-weighted"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    iget-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 759
    return-void

    .line 736
    :cond_0
    const-string/jumbo v1, "pantech-vts"

    const-string/jumbo v2, "on"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setExposureLock(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 768
    iget-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    .line 769
    const-string v1, "SKYMotionEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ENGINE] setExposureLock(value)"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 771
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    iget v1, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameWidth:I

    iget v2, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 772
    if-eqz p1, :cond_0

    .line 773
    const-string v1, "auto-exposure-lock"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    :goto_0
    iget-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 781
    .end local v0    # "params":Landroid/hardware/Camera$Parameters;
    :goto_1
    return-void

    .line 775
    .restart local v0    # "params":Landroid/hardware/Camera$Parameters;
    :cond_0
    const-string v1, "auto-exposure-lock"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 779
    .end local v0    # "params":Landroid/hardware/Camera$Parameters;
    :cond_1
    const-string v1, "SKYMotionEngine"

    const-string v2, "[ENGINE] setExposureLock : mCamera is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setOrientation(I)I
    .locals 6
    .param p1, "orientation"    # I

    .prologue
    const/4 v5, 0x0

    .line 809
    const-string v2, "SKYMotionEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[ENGINE] setOrientation() : (ori)"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    iput p1, p0, Landroid/vts/motion/SKYMotionEngine;->mOrientation:I

    .line 812
    iget v2, p0, Landroid/vts/motion/SKYMotionEngine;->mOrientation:I

    packed-switch v2, :pswitch_data_0

    .line 844
    :goto_0
    const-string v2, "SKYMotionEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[ENGINE] setOrientation() : set rotation (rotation)"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Landroid/vts/motion/SKYMotionEngine;->mRotation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    return v5

    .line 814
    :pswitch_0
    iget-object v2, p0, Landroid/vts/motion/SKYMotionEngine;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 815
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 816
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, p0, Landroid/vts/motion/SKYMotionEngine;->mRotation:I

    goto :goto_0

    .line 820
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "wm":Landroid/view/WindowManager;
    :pswitch_1
    iput v5, p0, Landroid/vts/motion/SKYMotionEngine;->mRotation:I

    goto :goto_0

    .line 824
    :pswitch_2
    const/4 v2, 0x1

    iput v2, p0, Landroid/vts/motion/SKYMotionEngine;->mRotation:I

    goto :goto_0

    .line 828
    :pswitch_3
    const/4 v2, 0x3

    iput v2, p0, Landroid/vts/motion/SKYMotionEngine;->mRotation:I

    goto :goto_0

    .line 812
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setPreview(Landroid/view/SurfaceHolder;II)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 792
    const-string v0, "SKYMotionEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ENGINE] setPreview() : (holder)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (width)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (height)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iput-object p1, p0, Landroid/vts/motion/SKYMotionEngine;->mHolder:Landroid/view/SurfaceHolder;

    .line 796
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/vts/motion/SKYMotionEngine;->mPreview:Z

    .line 800
    return-void
.end method

.method public setSensorMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 1314
    const-string v0, "SKYMotionEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ENGINE] setSensorMode(mode)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    iput p1, p0, Landroid/vts/motion/SKYMotionEngine;->SENSOR_DELAY_MODE:I

    .line 1316
    return-void
.end method

.method public start(I)I
    .locals 10
    .param p1, "cameraId"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 414
    const-string v4, "SKYMotionEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[ENGINE] start() : (cameraId)"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (ptr)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-boolean v4, p0, Landroid/vts/motion/SKYMotionEngine;->mHDMI:Z

    if-eqz v4, :cond_0

    .line 422
    :try_start_0
    const-string v4, "SKYMotionEngine"

    const-string v5, "[ENGINE] hdmiService.setIsMotionRec(1)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->hdmiService:Landroid/os/IHDMIService;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/os/IHDMIService;->setIsMotionRec(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    :cond_0
    :goto_0
    iget v4, p0, Landroid/vts/motion/SKYMotionEngine;->mOrientation:I

    if-nez v4, :cond_1

    .line 435
    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 436
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 437
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v4

    iput v4, p0, Landroid/vts/motion/SKYMotionEngine;->mRotation:I

    .line 438
    const-string v4, "SKYMotionEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[ENGINE] start() : Display Rotation (rotation)"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Landroid/vts/motion/SKYMotionEngine;->mRotation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    .end local v0    # "display":Landroid/view/Display;
    .end local v3    # "wm":Landroid/view/WindowManager;
    :cond_1
    iput-boolean v8, p0, Landroid/vts/motion/SKYMotionEngine;->stopCalled:Z

    .line 447
    monitor-enter p0

    .line 448
    :try_start_1
    invoke-direct {p0, p1}, Landroid/vts/motion/SKYMotionEngine;->openCamera(I)Landroid/hardware/Camera;

    move-result-object v4

    iput-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->mCamera:Landroid/hardware/Camera;

    .line 450
    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->mCamera:Landroid/hardware/Camera;

    if-eqz v4, :cond_4

    .line 452
    invoke-virtual {p0}, Landroid/vts/motion/SKYMotionEngine;->setCameraParameters()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 457
    :try_start_2
    sget v4, Landroid/vts/motion/SKYMotionEngine;->ANDROID_VERSION:I

    if-nez v4, :cond_5

    .line 458
    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->mCamera:Landroid/hardware/Camera;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 468
    :cond_2
    :goto_1
    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->mCamera:Landroid/hardware/Camera;

    new-instance v5, Landroid/vts/motion/SKYMotionEngine$1;

    invoke-direct {v5, p0}, Landroid/vts/motion/SKYMotionEngine$1;-><init>(Landroid/vts/motion/SKYMotionEngine;)V

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 512
    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 517
    :goto_2
    :try_start_3
    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->startPreview()V

    .line 528
    iget v4, p0, Landroid/vts/motion/SKYMotionEngine;->shakingState:I

    if-eq v4, v9, :cond_3

    iget v4, p0, Landroid/vts/motion/SKYMotionEngine;->shakingState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_8

    .line 529
    :cond_3
    const-string v4, "SKYMotionEngine"

    const-string v5, "[ENGINE] start() : already stopped"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_4
    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 544
    return v8

    .line 424
    :catch_0
    move-exception v2

    .line 426
    .local v2, "e1":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 461
    .end local v2    # "e1":Landroid/os/RemoteException;
    :cond_5
    :try_start_4
    sget v4, Landroid/vts/motion/SKYMotionEngine;->ANDROID_VERSION:I

    if-ne v4, v7, :cond_2

    .line 462
    iget v4, p0, Landroid/vts/motion/SKYMotionEngine;->mRotation:I

    if-eqz v4, :cond_6

    iget v4, p0, Landroid/vts/motion/SKYMotionEngine;->mRotation:I

    if-ne v4, v9, :cond_7

    .line 463
    :cond_6
    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->mCamera:Landroid/hardware/Camera;

    const/16 v5, 0x5a

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 465
    :cond_7
    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->mCamera:Landroid/hardware/Camera;

    iget-object v5, p0, Landroid/vts/motion/SKYMotionEngine;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 513
    :catch_1
    move-exception v1

    .line 514
    .local v1, "e":Ljava/io/IOException;
    :try_start_5
    const-string v4, "SKYMotionEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mCamera.setPreviewDisplay fails: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 447
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v4

    .line 531
    :cond_8
    :try_start_6
    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

    iget-object v4, v4, Landroid/vts/motion/SKYMotionAPI;->mCallback:Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;->HandleSKYMotionStatus(I)V

    .line 532
    const/4 v4, 0x0

    iput v4, p0, Landroid/vts/motion/SKYMotionEngine;->status:I

    .line 535
    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

    iget-object v4, v4, Landroid/vts/motion/SKYMotionAPI;->mCallback:Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;->HandleSKYMotionStatus(I)V

    .line 536
    const/4 v4, 0x1

    iput v4, p0, Landroid/vts/motion/SKYMotionEngine;->status:I

    .line 539
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Landroid/vts/motion/SKYMotionEngine;->SetAccelerometerFilter(ZI)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3
.end method

.method public stop()I
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 608
    const-string v1, "SKYMotionEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ENGINE] stop() : (ptr)"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iput-boolean v4, p0, Landroid/vts/motion/SKYMotionEngine;->mPreview:Z

    .line 611
    iput-boolean v4, p0, Landroid/vts/motion/SKYMotionEngine;->mThreadRun:Z

    .line 612
    iput-boolean v5, p0, Landroid/vts/motion/SKYMotionEngine;->stopCalled:Z

    .line 613
    const/4 v1, 0x2

    iput v1, p0, Landroid/vts/motion/SKYMotionEngine;->shakingState:I

    .line 616
    invoke-virtual {p0, v4, v5}, Landroid/vts/motion/SKYMotionEngine;->SetAccelerometerFilter(ZI)V

    .line 622
    iget-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 623
    monitor-enter p0

    .line 624
    :try_start_0
    iget-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 625
    iget-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->mCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 626
    iget-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 627
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->mCamera:Landroid/hardware/Camera;

    .line 623
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 629
    iget-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

    iget-object v1, v1, Landroid/vts/motion/SKYMotionAPI;->mCallback:Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;

    invoke-interface {v1, v6}, Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;->HandleSKYMotionStatus(I)V

    .line 630
    iput v6, p0, Landroid/vts/motion/SKYMotionEngine;->status:I

    .line 633
    :cond_0
    iput-boolean v5, p0, Landroid/vts/motion/SKYMotionEngine;->stopDone:Z

    .line 634
    iget-boolean v1, p0, Landroid/vts/motion/SKYMotionEngine;->releaseCalled:Z

    if-eqz v1, :cond_1

    .line 635
    const-string v1, "SKYMotionEngine"

    const-string v2, "[ENGINE] stop() : call release()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    invoke-virtual {p0}, Landroid/vts/motion/SKYMotionEngine;->release()V

    .line 640
    :cond_1
    iget-boolean v1, p0, Landroid/vts/motion/SKYMotionEngine;->mHDMI:Z

    if-eqz v1, :cond_2

    .line 642
    :try_start_1
    const-string v1, "SKYMotionEngine"

    const-string v2, "[ENGINE] hdmiService.setIsMotionRec(0)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->hdmiService:Landroid/os/IHDMIService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/IHDMIService;->setIsMotionRec(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 649
    :cond_2
    :goto_0
    return v4

    .line 623
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 644
    :catch_0
    move-exception v0

    .line 645
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
