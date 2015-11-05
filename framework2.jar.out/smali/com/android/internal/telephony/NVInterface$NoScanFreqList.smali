.class public Lcom/android/internal/telephony/NVInterface$NoScanFreqList;
.super Ljava/lang/Object;
.source "NVInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NVInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NoScanFreqList"
.end annotation


# instance fields
.field public freq_list:[I

.field public no_scan_enabled:I

.field public scan_enabled:[I

.field final synthetic this$0:Lcom/android/internal/telephony/NVInterface;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/NVInterface;)V
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 148
    iput-object p1, p0, Lcom/android/internal/telephony/NVInterface$NoScanFreqList;->this$0:Lcom/android/internal/telephony/NVInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/internal/telephony/NVInterface$NoScanFreqList;->freq_list:[I

    .line 150
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/internal/telephony/NVInterface$NoScanFreqList;->scan_enabled:[I

    .line 151
    return-void
.end method
