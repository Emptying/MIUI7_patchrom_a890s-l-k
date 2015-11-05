.class final Lcom/android/internal/pantech/PantechVendor$8;
.super Ljava/util/ArrayList;
.source "PantechVendor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/pantech/PantechVendor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    const-string v0, "ef65s"

    invoke-virtual {p0, v0}, Lcom/android/internal/pantech/PantechVendor$8;->add(Ljava/lang/Object;)Z

    .line 85
    const-string v0, "EF65S"

    invoke-virtual {p0, v0}, Lcom/android/internal/pantech/PantechVendor$8;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method
