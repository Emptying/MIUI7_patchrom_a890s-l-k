.class public interface abstract Lcom/crucialtec/biometric/FingerprintHandler$CommonEventListener;
.super Ljava/lang/Object;
.source "FingerprintHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crucialtec/biometric/FingerprintHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CommonEventListener"
.end annotation


# virtual methods
.method public abstract OnFingerCaptureInit()V
.end method

.method public abstract OnFingerLeave()V
.end method

.method public abstract OnFingerPresent()V
.end method

.method public abstract OnFingerScanned(IIII)V
.end method

.method public abstract OnFingerScanning(II)V
.end method

.method public abstract OnProcess()V
.end method
