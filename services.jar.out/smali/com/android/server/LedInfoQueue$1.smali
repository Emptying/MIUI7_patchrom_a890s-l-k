.class Lcom/android/server/LedInfoQueue$1;
.super Ljava/lang/Object;
.source "LedInfoQueue.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LedInfoQueue;->sortListLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/pantech/led/LedInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LedInfoQueue;


# direct methods
.method constructor <init>(Lcom/android/server/LedInfoQueue;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/server/LedInfoQueue$1;->this$0:Lcom/android/server/LedInfoQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/pantech/led/LedInfo;Lcom/android/internal/pantech/led/LedInfo;)I
    .locals 2
    .param p1, "info1"    # Lcom/android/internal/pantech/led/LedInfo;
    .param p2, "info2"    # Lcom/android/internal/pantech/led/LedInfo;

    .prologue
    .line 94
    invoke-virtual {p1}, Lcom/android/internal/pantech/led/LedInfo;->getAppId()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/internal/pantech/led/LedInfo;->getAppId()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/pantech/led/LedInfo;->getAppId()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/internal/pantech/led/LedInfo;->getAppId()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 91
    check-cast p1, Lcom/android/internal/pantech/led/LedInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/internal/pantech/led/LedInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LedInfoQueue$1;->compare(Lcom/android/internal/pantech/led/LedInfo;Lcom/android/internal/pantech/led/LedInfo;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/android/internal/pantech/led/LedInfo;)Z
    .locals 1
    .param p1, "info"    # Lcom/android/internal/pantech/led/LedInfo;

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method
