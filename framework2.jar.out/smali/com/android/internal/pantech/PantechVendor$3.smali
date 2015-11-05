.class final Lcom/android/internal/pantech/PantechVendor$3;
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
    .line 35
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    const-string v0, "ef52s"

    invoke-virtual {p0, v0}, Lcom/android/internal/pantech/PantechVendor$3;->add(Ljava/lang/Object;)Z

    .line 38
    const-string v0, "ef52k"

    invoke-virtual {p0, v0}, Lcom/android/internal/pantech/PantechVendor$3;->add(Ljava/lang/Object;)Z

    .line 39
    const-string v0, "ef52l"

    invoke-virtual {p0, v0}, Lcom/android/internal/pantech/PantechVendor$3;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method
