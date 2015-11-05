.class public Landroid/vts/motion/SKYMotionAPI;
.super Ljava/lang/Object;
.source "SKYMotionAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;
    }
.end annotation


# static fields
.field public static final DISPLAY_AUTO:I = 0x0

.field public static final DISPLAY_LANDSCAPE:I = 0x2

.field public static final DISPLAY_PORTRAIT:I = 0x1

.field public static final DISPLAY_REV_LANDSCAPE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SKYMotionEngine"


# instance fields
.field public mCallback:Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;

.field private mEngine:Landroid/vts/motion/SKYMotionEngine;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DestroySKYMotionEngine()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Landroid/vts/motion/SKYMotionAPI;->mEngine:Landroid/vts/motion/SKYMotionEngine;

    invoke-virtual {v0}, Landroid/vts/motion/SKYMotionEngine;->release()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/vts/motion/SKYMotionAPI;->mEngine:Landroid/vts/motion/SKYMotionEngine;

    .line 73
    return-void
.end method

.method public EnableDBGLog(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 115
    iget-object v0, p0, Landroid/vts/motion/SKYMotionAPI;->mEngine:Landroid/vts/motion/SKYMotionEngine;

    invoke-virtual {v0, p1}, Landroid/vts/motion/SKYMotionEngine;->EnableDBGLog(Z)V

    .line 116
    return-void
.end method

.method public EnableWaveAction(Z)I
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 92
    iget-object v0, p0, Landroid/vts/motion/SKYMotionAPI;->mEngine:Landroid/vts/motion/SKYMotionEngine;

    invoke-virtual {v0, p1}, Landroid/vts/motion/SKYMotionEngine;->EnableWaveAction(Z)I

    move-result v0

    return v0
.end method

.method public GetVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "SKYMotionengine v1.0.1 (Build.2014.02.26.1059)"

    return-object v0
.end method

.method public InitSKYMotionEngine(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 55
    new-instance v0, Landroid/vts/motion/SKYMotionEngine;

    invoke-direct {v0, p0, p1}, Landroid/vts/motion/SKYMotionEngine;-><init>(Landroid/vts/motion/SKYMotionAPI;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/vts/motion/SKYMotionAPI;->mEngine:Landroid/vts/motion/SKYMotionEngine;

    .line 56
    return-void
.end method

.method public InitSKYMotionEngine(Landroid/content/Context;I)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "algorithm"    # I

    .prologue
    .line 59
    new-instance v0, Landroid/vts/motion/SKYMotionEngine;

    invoke-direct {v0, p0, p1, p2}, Landroid/vts/motion/SKYMotionEngine;-><init>(Landroid/vts/motion/SKYMotionAPI;Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/vts/motion/SKYMotionAPI;->mEngine:Landroid/vts/motion/SKYMotionEngine;

    .line 60
    return-void
.end method

.method public RecordGesture(Z)V
    .locals 1
    .param p1, "mRecord"    # Z

    .prologue
    .line 104
    iget-object v0, p0, Landroid/vts/motion/SKYMotionAPI;->mEngine:Landroid/vts/motion/SKYMotionEngine;

    invoke-virtual {v0, p1}, Landroid/vts/motion/SKYMotionEngine;->RecordGesture(Z)V

    .line 105
    return-void
.end method

.method public RecordGesture(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "mRecord"    # Z
    .param p2, "epLock"    # Ljava/lang/String;
    .param p3, "dt"    # Ljava/lang/String;
    .param p4, "rpm"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v0, p0, Landroid/vts/motion/SKYMotionAPI;->mEngine:Landroid/vts/motion/SKYMotionEngine;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/vts/motion/SKYMotionEngine;->RecordGesture(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public RegisterPreview(Landroid/view/SurfaceHolder;II)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 76
    iget-object v0, p0, Landroid/vts/motion/SKYMotionAPI;->mEngine:Landroid/vts/motion/SKYMotionEngine;

    invoke-virtual {v0, p1, p2, p3}, Landroid/vts/motion/SKYMotionEngine;->setPreview(Landroid/view/SurfaceHolder;II)V

    .line 77
    return-void
.end method

.method public RegisterSKYMotionCallback(Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;

    .prologue
    .line 48
    iput-object p1, p0, Landroid/vts/motion/SKYMotionAPI;->mCallback:Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;

    .line 49
    return-void
.end method

.method public SKYMotionAPI()Landroid/vts/motion/SKYMotionAPI;
    .locals 3

    .prologue
    .line 39
    const-string v0, "SKYMotionEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[API] instanciation() : (ptr)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance v0, Landroid/vts/motion/SKYMotionAPI;

    invoke-direct {v0}, Landroid/vts/motion/SKYMotionAPI;-><init>()V

    return-object v0
.end method

.method public SetAccelerometerFilter(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 88
    iget-object v0, p0, Landroid/vts/motion/SKYMotionAPI;->mEngine:Landroid/vts/motion/SKYMotionEngine;

    invoke-virtual {v0, p1}, Landroid/vts/motion/SKYMotionEngine;->SetAccelerometerFilter(Z)V

    .line 89
    return-void
.end method

.method public SetOrientation(I)I
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 84
    iget-object v0, p0, Landroid/vts/motion/SKYMotionAPI;->mEngine:Landroid/vts/motion/SKYMotionEngine;

    invoke-virtual {v0, p1}, Landroid/vts/motion/SKYMotionEngine;->setOrientation(I)I

    move-result v0

    return v0
.end method

.method public SetParameter(II)V
    .locals 1
    .param p1, "param"    # I
    .param p2, "value"    # I

    .prologue
    .line 96
    iget-object v0, p0, Landroid/vts/motion/SKYMotionAPI;->mEngine:Landroid/vts/motion/SKYMotionEngine;

    invoke-virtual {v0, p1, p2}, Landroid/vts/motion/SKYMotionEngine;->SetParameter(II)V

    .line 97
    return-void
.end method

.method public SetVisiblePreview(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 100
    iget-object v0, p0, Landroid/vts/motion/SKYMotionAPI;->mEngine:Landroid/vts/motion/SKYMotionEngine;

    invoke-virtual {v0, p1}, Landroid/vts/motion/SKYMotionEngine;->SetVisiblePreview(Z)V

    .line 101
    return-void
.end method

.method public StartSKYMotionEngine(I)I
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 63
    iget-object v0, p0, Landroid/vts/motion/SKYMotionAPI;->mEngine:Landroid/vts/motion/SKYMotionEngine;

    invoke-virtual {v0, p1}, Landroid/vts/motion/SKYMotionEngine;->start(I)I

    move-result v0

    return v0
.end method

.method public StopSKYMotionEngine()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/vts/motion/SKYMotionAPI;->mEngine:Landroid/vts/motion/SKYMotionEngine;

    invoke-virtual {v0}, Landroid/vts/motion/SKYMotionEngine;->stop()I

    move-result v0

    return v0
.end method

.method public setSensorMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 112
    iget-object v0, p0, Landroid/vts/motion/SKYMotionAPI;->mEngine:Landroid/vts/motion/SKYMotionEngine;

    invoke-virtual {v0, p1}, Landroid/vts/motion/SKYMotionEngine;->setSensorMode(I)V

    .line 113
    return-void
.end method
