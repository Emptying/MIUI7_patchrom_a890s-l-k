.class public Landroid/app/ActivityManager$SafeBoxPackageInfo;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SafeBoxPackageInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ActivityManager$SafeBoxPackageInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public safeBoxPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2403
    new-instance v0, Landroid/app/ActivityManager$SafeBoxPackageInfo$1;

    invoke-direct {v0}, Landroid/app/ActivityManager$SafeBoxPackageInfo$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManager$SafeBoxPackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2389
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 2412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2413
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$SafeBoxPackageInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 2414
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ActivityManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/app/ActivityManager$1;

    .prologue
    .line 2384
    invoke-direct {p0, p1}, Landroid/app/ActivityManager$SafeBoxPackageInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 2392
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 2400
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$SafeBoxPackageInfo;->safeBoxPackageName:Ljava/lang/String;

    .line 2401
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 2396
    iget-object v0, p0, Landroid/app/ActivityManager$SafeBoxPackageInfo;->safeBoxPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2397
    return-void
.end method
