.class public Lcom/pantech/test/SlideCntTest;
.super Ljava/lang/Object;
.source "SlideCntTest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SlideCntTest"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "SlideCntTest"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method static native SlideCntTest_GetDetectionCnt(I)I
.end method


# virtual methods
.method public GetDetectionCnt(I)I
    .locals 1
    .param p1, "slidetype"    # I

    .prologue
    .line 45
    invoke-static {p1}, Lcom/pantech/test/SlideCntTest;->SlideCntTest_GetDetectionCnt(I)I

    move-result v0

    return v0
.end method
