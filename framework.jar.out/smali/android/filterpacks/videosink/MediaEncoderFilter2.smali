.class public Landroid/filterpacks/videosink/MediaEncoderFilter2;
.super Landroid/filterfw/core/Filter;
.source "MediaEncoderFilter2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterpacks/videosink/MediaEncoderFilter2$OnRecordingStartListener;,
        Landroid/filterpacks/videosink/MediaEncoderFilter2$OnRecordingDoneListener;
    }
.end annotation


# static fields
.field private static final NO_AUDIO_SOURCE:I = -0x1

.field private static final REC_PAUSE:I = 0x2

.field private static final REC_RESUME:I = 0x3

.field private static final REC_START:I = 0x1

.field private static final REC_STOP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaEncoderFilter2"


# instance fields
.field private mAudioSource:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "audioSource"
    .end annotation
.end field

.field private mCaptureTimeLapse:Z

.field private mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "errorListener"
    .end annotation
.end field

.field private mFd:Ljava/io/FileDescriptor;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "outputFileDescriptor"
    .end annotation
.end field

.field private mFps:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "framerate"
    .end annotation
.end field

.field private mHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "height"
    .end annotation
.end field

.field private mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "infoListener"
    .end annotation
.end field

.field private mLastTimeLapseFrameRealTimestampNs:J

.field private mLogVerbose:Z

.field private mMaxDurationMs:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maxDurationMs"
    .end annotation
.end field

.field private mMaxFileSize:J
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maxFileSize"
    .end annotation
.end field

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mNumFramesEncoded:I

.field private mOrientationHint:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "orientationHint"
    .end annotation
.end field

.field private mOutputFile:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "outputFile"
    .end annotation
.end field

.field private mOutputFormat:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "outputFormat"
    .end annotation
.end field

.field private mProfile:Landroid/media/CamcorderProfile;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "recordingProfile"
    .end annotation
.end field

.field private mProgram:Landroid/filterfw/core/ShaderProgram;

.field private mRecording:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "recording"
    .end annotation
.end field

.field private mRecordingActive:Z

.field private mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter2$OnRecordingDoneListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "recordingDoneListener"
    .end annotation
.end field

.field private mRecordingPause:Z

.field private mRecordingResume:Z

.field private mRecordingStartListener:Landroid/filterpacks/videosink/MediaEncoderFilter2$OnRecordingStartListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "recordingStartListener"
    .end annotation
.end field

.field private mScreen:Landroid/filterfw/core/GLFrame;

.field private mSourceRegion:Landroid/filterfw/geometry/Quad;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "inputRegion"
    .end annotation
.end field

.field private mSurfaceId:I

.field private mTimeBetweenTimeLapseFrameCaptureUs:J
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "timelapseRecordingIntervalUs"
    .end annotation
.end field

.field private mTimestampNs:J

.field private mVideoBitrate:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "videoBitrate"
    .end annotation
.end field

.field private mVideoEncoder:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "videoEncoder"
    .end annotation
.end field

.field private mWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "width"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 12
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const-wide/16 v10, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 211
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 64
    const/4 v4, 0x1

    iput v4, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mRecording:I

    .line 68
    new-instance v4, Ljava/lang/String;

    const-string v5, "/sdcard/MediaEncoderOut.mp4"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mOutputFile:Ljava/lang/String;

    .line 72
    iput-object v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mFd:Ljava/io/FileDescriptor;

    .line 78
    const/4 v4, -0x1

    iput v4, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mAudioSource:I

    .line 85
    iput-object v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    .line 92
    iput-object v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    .line 98
    iput-object v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter2$OnRecordingDoneListener;

    .line 101
    iput-object v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mRecordingStartListener:Landroid/filterpacks/videosink/MediaEncoderFilter2$OnRecordingStartListener;

    .line 108
    iput v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mOrientationHint:I

    .line 115
    iput-object v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mProfile:Landroid/media/CamcorderProfile;

    .line 120
    iput v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mWidth:I

    .line 125
    iput v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mHeight:I

    .line 130
    const/16 v4, 0x1e

    iput v4, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mFps:I

    .line 134
    const v4, 0x1e8480

    iput v4, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mVideoBitrate:I

    .line 141
    const/4 v4, 0x2

    iput v4, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mOutputFormat:I

    .line 147
    const/4 v4, 0x2

    iput v4, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mVideoEncoder:I

    .line 161
    iput-wide v10, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mMaxFileSize:J

    .line 167
    iput v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mMaxDurationMs:I

    .line 173
    iput-wide v10, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mTimeBetweenTimeLapseFrameCaptureUs:J

    .line 184
    iput-boolean v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mRecordingActive:Z

    .line 185
    iput-boolean v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mRecordingPause:Z

    .line 186
    iput-boolean v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mRecordingResume:Z

    .line 187
    iput-wide v10, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mTimestampNs:J

    .line 188
    iput-wide v10, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mLastTimeLapseFrameRealTimestampNs:J

    .line 189
    iput v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mNumFramesEncoded:I

    .line 192
    iput-boolean v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mCaptureTimeLapse:Z

    .line 212
    new-instance v0, Landroid/filterfw/geometry/Point;

    invoke-direct {v0, v8, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 213
    .local v0, "bl":Landroid/filterfw/geometry/Point;
    new-instance v1, Landroid/filterfw/geometry/Point;

    invoke-direct {v1, v9, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 214
    .local v1, "br":Landroid/filterfw/geometry/Point;
    new-instance v2, Landroid/filterfw/geometry/Point;

    invoke-direct {v2, v8, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 215
    .local v2, "tl":Landroid/filterfw/geometry/Point;
    new-instance v3, Landroid/filterfw/geometry/Point;

    invoke-direct {v3, v9, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 216
    .local v3, "tr":Landroid/filterfw/geometry/Point;
    new-instance v4, Landroid/filterfw/geometry/Quad;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    iput-object v4, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    .line 217
    const-string v4, "MediaEncoderFilter2"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    iput-boolean v4, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mLogVerbose:Z

    .line 218
    return-void
.end method

.method private pauseRecording()V
    .locals 4

    .prologue
    .line 490
    iget-boolean v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "MediaEncoderFilter2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pause recording:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mRecordingPause:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mRecordingResume:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_0
    iget-boolean v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mRecordingPause:Z

    if-nez v1, :cond_1

    .line 493
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mRecordingPause:Z

    .line 494
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mRecordingResume:Z

    .line 497
    :try_start_0
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->pause()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    :cond_1
    return-void

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Landroid/filterpacks/videosink/MediaRecorderStopException;

    const-string v2, "MediaRecorder.pause() failed!"

    invoke-direct {v1, v2, v0}, Landroid/filterpacks/videosink/MediaRecorderStopException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private resumeRecording()V
    .locals 4

    .prologue
    .line 505
    iget-boolean v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "MediaEncoderFilter2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resume recording:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mRecordingPause:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mRecordingResume:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_0
    iget-boolean v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mRecordingResume:Z

    if-nez v1, :cond_1

    .line 508
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mRecordingResume:Z

    .line 509
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mRecordingPause:Z

    .line 512
    :try_start_0
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :cond_1
    return-void

    .line 513
    :catch_0
    move-exception v0

    .line 514
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Landroid/filterpacks/videosink/MediaRecorderStopException;

    const-string v2, "MediaRecorder.pause() failed!"

    invoke-direct {v1, v2, v0}, Landroid/filterpacks/videosink/MediaRecorderStopException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private startRecording(Landroid/filterfw/core/FilterContext;)V
    .locals 11
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 318
    iget-boolean v5, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mLogVerbose:Z

    if-eqz v5, :cond_0

    const-string v5, "MediaEncoderFilter2"

    const-string v8, "Starting recording"

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_0
    new-instance v2, Landroid/filterfw/core/MutableFrameFormat;

    const/4 v5, 0x2

    const/4 v8, 0x3

    invoke-direct {v2, v5, v8}, Landroid/filterfw/core/MutableFrameFormat;-><init>(II)V

    .line 323
    .local v2, "screenFormat":Landroid/filterfw/core/MutableFrameFormat;
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/filterfw/core/MutableFrameFormat;->setBytesPerSample(I)V

    .line 326
    iget v5, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mWidth:I

    if-lez v5, :cond_3

    iget v5, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mHeight:I

    if-lez v5, :cond_3

    move v4, v6

    .line 329
    .local v4, "widthHeightSpecified":Z
    :goto_0
    iget-object v5, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v5, :cond_4

    if-nez v4, :cond_4

    .line 330
    iget-object v5, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v5, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 331
    .local v3, "width":I
    iget-object v5, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 336
    .local v1, "height":I
    :goto_1
    invoke-virtual {v2, v3, v1}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 337
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v5

    const/16 v8, 0x65

    const-wide/16 v9, 0x0

    invoke-virtual {v5, v2, v8, v9, v10}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v5

    check-cast v5, Landroid/filterfw/core/GLFrame;

    iput-object v5, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mScreen:Landroid/filterfw/core/GLFrame;

    .line 342
    new-instance v5, Landroid/media/MediaRecorder;

    invoke-direct {v5}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v5, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 343
    invoke-direct {p0}, Landroid/filterpacks/videosink/MediaEncoderFilter2;->updateMediaRecorderParams()V

    .line 346
    :try_start_0
    iget-object v5, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 359
    iget-object v5, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->start()V

    .line 360
    iget-boolean v5, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mLogVerbose:Z

    if-eqz v5, :cond_1

    const-string v5, "MediaEncoderFilter2"

    const-string v8, "Open: registering surface from Mediarecorder"

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_1
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v5

    iget-object v8, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5, v8}, Landroid/filterfw/core/GLEnvironment;->registerSurfaceFromMediaRecorder(Landroid/media/MediaRecorder;)I

    move-result v5

    iput v5, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mSurfaceId:I

    .line 363
    iput v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mNumFramesEncoded:I

    .line 364
    iput-boolean v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mRecordingActive:Z

    .line 365
    iput-boolean v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mRecordingPause:Z

    .line 366
    iput-boolean v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mRecordingResume:Z

    .line 368
    iget-object v5, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mRecordingStartListener:Landroid/filterpacks/videosink/MediaEncoderFilter2$OnRecordingStartListener;

    if-eqz v5, :cond_2

    .line 369
    iget-object v5, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mRecordingStartListener:Landroid/filterpacks/videosink/MediaEncoderFilter2$OnRecordingStartListener;

    invoke-interface {v5}, Landroid/filterpacks/videosink/MediaEncoderFilter2$OnRecordingStartListener;->onRecordingStart()V

    .line 371
    :cond_2
    return-void

    .end local v1    # "height":I
    .end local v3    # "width":I
    .end local v4    # "widthHeightSpecified":Z
    :cond_3
    move v4, v7

    .line 326
    goto :goto_0

    .line 333
    .restart local v4    # "widthHeightSpecified":Z
    :cond_4
    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mWidth:I

    .line 334
    .restart local v3    # "width":I
    iget v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mHeight:I

    .restart local v1    # "height":I
    goto :goto_1

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Ljava/lang/IllegalStateException;
    throw v0

    .line 349
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 350
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "IOException inMediaRecorder.prepare()!"

    invoke-direct {v5, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 352
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 353
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Unknown Exception inMediaRecorder.prepare()!"

    invoke-direct {v5, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private stopRecording(Landroid/filterfw/core/FilterContext;)V
    .locals 8
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 458
    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mLogVerbose:Z

    if-eqz v2, :cond_0

    const-string v2, "MediaEncoderFilter2"

    const-string v3, "Stopping recording"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_0
    iput-boolean v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mRecordingActive:Z

    .line 461
    iput v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mNumFramesEncoded:I

    .line 462
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v1

    .line 468
    .local v1, "glEnv":Landroid/filterfw/core/GLEnvironment;
    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mLogVerbose:Z

    if-eqz v2, :cond_1

    const-string v2, "MediaEncoderFilter2"

    const-string v3, "Unregistering surface %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mSurfaceId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_1
    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mSurfaceId:I

    invoke-virtual {v1, v2}, Landroid/filterfw/core/GLEnvironment;->unregisterSurfaceId(I)V

    .line 471
    :try_start_0
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 476
    iput-object v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 478
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v2}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 479
    iput-object v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mScreen:Landroid/filterfw/core/GLFrame;

    .line 484
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter2$OnRecordingDoneListener;

    if-eqz v2, :cond_2

    .line 485
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter2$OnRecordingDoneListener;

    invoke-interface {v2}, Landroid/filterpacks/videosink/MediaEncoderFilter2$OnRecordingDoneListener;->onRecordingDone()V

    .line 487
    :cond_2
    return-void

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Landroid/filterpacks/videosink/MediaRecorderStopException;

    const-string v3, "MediaRecorder.stop() failed!"

    invoke-direct {v2, v3, v0}, Landroid/filterpacks/videosink/MediaRecorderStopException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private updateMediaRecorderParams()V
    .locals 6

    .prologue
    .line 257
    iget-wide v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mTimeBetweenTimeLapseFrameCaptureUs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mCaptureTimeLapse:Z

    .line 258
    const/4 v0, 0x2

    .line 259
    .local v0, "GRALLOC_BUFFER":I
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 260
    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mCaptureTimeLapse:Z

    if-nez v2, :cond_0

    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mAudioSource:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 261
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mAudioSource:I

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 263
    :cond_0
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v2, :cond_3

    .line 264
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 265
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    iput v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mFps:I

    .line 266
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoBitRate:I

    iput v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mVideoBitrate:I

    .line 269
    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mWidth:I

    if-lez v2, :cond_1

    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mHeight:I

    if-lez v2, :cond_1

    .line 270
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mWidth:I

    iget v4, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 279
    :cond_1
    :goto_1
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mOrientationHint:I

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 280
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 281
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 282
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mFd:Ljava/io/FileDescriptor;

    if-eqz v2, :cond_4

    .line 283
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 288
    :goto_2
    :try_start_0
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-wide v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mMaxFileSize:J

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :goto_3
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mMaxDurationMs:I

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 299
    return-void

    .line 257
    .end local v0    # "GRALLOC_BUFFER":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 273
    .restart local v0    # "GRALLOC_BUFFER":I
    :cond_3
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mOutputFormat:I

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 274
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mVideoEncoder:I

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 275
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mWidth:I

    iget v4, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 276
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mFps:I

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 277
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mVideoBitrate:I

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    goto :goto_1

    .line 285
    :cond_4
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mOutputFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto :goto_2

    .line 289
    :catch_0
    move-exception v1

    .line 295
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MediaEncoderFilter2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting maxFileSize on MediaRecorder unsuccessful! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private updateSourceRegion()V
    .locals 2

    .prologue
    .line 245
    new-instance v0, Landroid/filterfw/geometry/Quad;

    invoke-direct {v0}, Landroid/filterfw/geometry/Quad;-><init>()V

    .line 246
    .local v0, "flippedRegion":Landroid/filterfw/geometry/Quad;
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    iget-object v1, v1, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    iput-object v1, v0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    .line 247
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    iget-object v1, v1, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    iput-object v1, v0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    .line 248
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    iget-object v1, v1, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    iput-object v1, v0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    .line 249
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    iget-object v1, v1, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    iput-object v1, v0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    .line 250
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v1, v0}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    .line 251
    return-void
.end method


# virtual methods
.method public close(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 521
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaEncoderFilter2"

    const-string v1, "Closing"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_0
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mRecordingActive:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroid/filterpacks/videosink/MediaEncoderFilter2;->stopRecording(Landroid/filterfw/core/FilterContext;)V

    .line 523
    :cond_1
    return-void
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 229
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaEncoderFilter2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been updated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    const-string/jumbo v0, "recording"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    :cond_1
    :goto_0
    return-void

    .line 231
    :cond_2
    const-string v0, "inputRegion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    invoke-virtual {p0}, Landroid/filterpacks/videosink/MediaEncoderFilter2;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/filterpacks/videosink/MediaEncoderFilter2;->updateSourceRegion()V

    goto :goto_0

    .line 237
    :cond_3
    invoke-virtual {p0}, Landroid/filterpacks/videosink/MediaEncoderFilter2;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mRecordingActive:Z

    if-eqz v0, :cond_1

    .line 238
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot change recording parameters when the filter is recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public open(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 312
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaEncoderFilter2"

    const-string v1, "Opening"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_0
    invoke-direct {p0}, Landroid/filterpacks/videosink/MediaEncoderFilter2;->updateSourceRegion()V

    .line 314
    iget v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mRecording:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Landroid/filterpacks/videosink/MediaEncoderFilter2;->startRecording(Landroid/filterfw/core/FilterContext;)V

    .line 315
    :cond_1
    return-void
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 303
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaEncoderFilter2"

    const-string v1, "Preparing"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_0
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 307
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mRecordingActive:Z

    .line 308
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 413
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    .line 415
    .local v0, "glEnv":Landroid/filterfw/core/GLEnvironment;
    const-string/jumbo v2, "videoframe"

    invoke-virtual {p0, v2}, Landroid/filterpacks/videosink/MediaEncoderFilter2;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 418
    .local v1, "input":Landroid/filterfw/core/Frame;
    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mRecordingActive:Z

    if-nez v2, :cond_0

    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mRecording:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 419
    invoke-direct {p0, p1}, Landroid/filterpacks/videosink/MediaEncoderFilter2;->startRecording(Landroid/filterfw/core/FilterContext;)V

    .line 422
    :cond_0
    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mRecordingActive:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mRecording:I

    if-nez v2, :cond_1

    .line 423
    invoke-direct {p0, p1}, Landroid/filterpacks/videosink/MediaEncoderFilter2;->stopRecording(Landroid/filterfw/core/FilterContext;)V

    .line 426
    :cond_1
    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mRecordingActive:Z

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mRecording:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 427
    invoke-direct {p0}, Landroid/filterpacks/videosink/MediaEncoderFilter2;->pauseRecording()V

    .line 430
    :cond_2
    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mRecordingActive:Z

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mRecording:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 431
    invoke-direct {p0}, Landroid/filterpacks/videosink/MediaEncoderFilter2;->resumeRecording()V

    .line 434
    :cond_3
    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mRecordingActive:Z

    if-nez v2, :cond_5

    .line 455
    :cond_4
    :goto_0
    return-void

    .line 436
    :cond_5
    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mCaptureTimeLapse:Z

    if-eqz v2, :cond_6

    .line 437
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/filterpacks/videosink/MediaEncoderFilter2;->skipFrameAndModifyTimestamp(J)Z

    move-result v2

    if-nez v2, :cond_4

    .line 445
    :goto_1
    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mSurfaceId:I

    invoke-virtual {v0, v2}, Landroid/filterfw/core/GLEnvironment;->activateSurfaceWithId(I)V

    .line 448
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mProgram:Landroid/filterfw/core/ShaderProgram;

    iget-object v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v2, v1, v3}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 451
    iget-wide v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mTimestampNs:J

    invoke-virtual {v0, v2, v3}, Landroid/filterfw/core/GLEnvironment;->setSurfaceTimestamp(J)V

    .line 453
    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->swapBuffers()V

    .line 454
    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mNumFramesEncoded:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mNumFramesEncoded:I

    goto :goto_0

    .line 441
    :cond_6
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getTimestamp()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mTimestampNs:J

    goto :goto_1
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 223
    const-string/jumbo v0, "videoframe"

    invoke-static {v1, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/videosink/MediaEncoderFilter2;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 225
    return-void
.end method

.method public skipFrameAndModifyTimestamp(J)Z
    .locals 9
    .param p1, "timestampNs"    # J

    .prologue
    const-wide/32 v7, 0x3b9aca00

    const/4 v0, 0x0

    .line 375
    iget v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mNumFramesEncoded:I

    if-nez v1, :cond_1

    .line 376
    iput-wide p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mLastTimeLapseFrameRealTimestampNs:J

    .line 377
    iput-wide p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mTimestampNs:J

    .line 378
    iget-boolean v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "MediaEncoderFilter2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timelapse: FIRST frame, last real t= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mLastTimeLapseFrameRealTimestampNs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", setting t = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mTimestampNs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_0
    :goto_0
    return v0

    .line 387
    :cond_1
    iget v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mNumFramesEncoded:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    iget-wide v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mLastTimeLapseFrameRealTimestampNs:J

    const-wide/16 v3, 0x3e8

    iget-wide v5, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mTimeBetweenTimeLapseFrameCaptureUs:J

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    cmp-long v1, p1, v1

    if-gez v1, :cond_3

    .line 392
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mLogVerbose:Z

    if-eqz v0, :cond_2

    const-string v0, "MediaEncoderFilter2"

    const-string/jumbo v1, "timelapse: skipping intermediate frame"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 399
    :cond_3
    iget-boolean v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mLogVerbose:Z

    if-eqz v1, :cond_4

    const-string v1, "MediaEncoderFilter2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timelapse: encoding frame, Timestamp t = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", last real t= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mLastTimeLapseFrameRealTimestampNs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", interval = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mTimeBetweenTimeLapseFrameCaptureUs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_4
    iput-wide p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mLastTimeLapseFrameRealTimestampNs:J

    .line 403
    iget-wide v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mTimestampNs:J

    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mFps:I

    int-to-long v3, v3

    div-long v3, v7, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mTimestampNs:J

    .line 404
    iget-boolean v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "MediaEncoderFilter2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timelapse: encoding frame, setting t = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mTimestampNs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", delta t = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mFps:I

    int-to-long v3, v3

    div-long v3, v7, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fps = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mFps:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 529
    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 532
    :cond_0
    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mScreen:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_1

    .line 533
    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter2;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 536
    :cond_1
    return-void
.end method
