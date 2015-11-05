.class final Lcom/android/internal/pantech/led/LedInfo$1;
.super Ljava/lang/Object;
.source "LedInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/pantech/led/LedInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/internal/pantech/led/LedInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/pantech/led/LedInfo;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 383
    new-instance v0, Lcom/android/internal/pantech/led/LedInfo;

    invoke-direct {v0, p1}, Lcom/android/internal/pantech/led/LedInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 381
    invoke-virtual {p0, p1}, Lcom/android/internal/pantech/led/LedInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/pantech/led/LedInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/pantech/led/LedInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 387
    new-array v0, p1, [Lcom/android/internal/pantech/led/LedInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 381
    invoke-virtual {p0, p1}, Lcom/android/internal/pantech/led/LedInfo$1;->newArray(I)[Lcom/android/internal/pantech/led/LedInfo;

    move-result-object v0

    return-object v0
.end method
