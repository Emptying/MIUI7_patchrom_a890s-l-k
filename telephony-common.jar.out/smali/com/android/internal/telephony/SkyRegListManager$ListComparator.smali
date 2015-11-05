.class Lcom/android/internal/telephony/SkyRegListManager$ListComparator;
.super Ljava/lang/Object;
.source "SkyRegListManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SkyRegListManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/telephony/SkyRegListManager$RegList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SkyRegListManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/SkyRegListManager;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/internal/telephony/SkyRegListManager$ListComparator;->this$0:Lcom/android/internal/telephony/SkyRegListManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/SkyRegListManager;Lcom/android/internal/telephony/SkyRegListManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/SkyRegListManager;
    .param p2, "x1"    # Lcom/android/internal/telephony/SkyRegListManager$1;

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SkyRegListManager$ListComparator;-><init>(Lcom/android/internal/telephony/SkyRegListManager;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/telephony/SkyRegListManager$RegList;Lcom/android/internal/telephony/SkyRegListManager$RegList;)I
    .locals 2
    .param p1, "a"    # Lcom/android/internal/telephony/SkyRegListManager$RegList;
    .param p2, "b"    # Lcom/android/internal/telephony/SkyRegListManager$RegList;

    .prologue
    .line 174
    iget-object v0, p1, Lcom/android/internal/telephony/SkyRegListManager$RegList;->event:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/android/internal/telephony/SkyRegListManager$RegList;->event:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 176
    const/4 v0, 0x0

    .line 187
    :goto_0
    return v0

    .line 178
    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/SkyRegListManager$RegList;->event:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 180
    const/4 v0, 0x1

    goto :goto_0

    .line 182
    :cond_1
    iget-object v0, p2, Lcom/android/internal/telephony/SkyRegListManager$RegList;->event:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 184
    const/4 v0, -0x1

    goto :goto_0

    .line 187
    :cond_2
    iget-object v0, p1, Lcom/android/internal/telephony/SkyRegListManager$RegList;->event:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/internal/telephony/SkyRegListManager$RegList;->event:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 170
    check-cast p1, Lcom/android/internal/telephony/SkyRegListManager$RegList;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/internal/telephony/SkyRegListManager$RegList;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SkyRegListManager$ListComparator;->compare(Lcom/android/internal/telephony/SkyRegListManager$RegList;Lcom/android/internal/telephony/SkyRegListManager$RegList;)I

    move-result v0

    return v0
.end method
