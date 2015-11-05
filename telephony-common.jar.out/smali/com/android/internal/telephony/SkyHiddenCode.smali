.class public Lcom/android/internal/telephony/SkyHiddenCode;
.super Ljava/lang/Object;
.source "SkyHiddenCode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SkyHiddenCode$HiddenCodeResult;
    }
.end annotation


# static fields
.field public static final DATA_HIDDEN_MENU:Ljava/lang/String; = "##3282#443336#"

.field public static final DEBUG_MENU:Ljava/lang/String; = "##000000#"

.field public static final DEBUG_SCREEN:Ljava/lang/String; = "*123456#"

.field public static final GPS_TEST_CODE:Ljava/lang/String; = "##759477#"

.field public static final HIDDEN_MENU:Ljava/lang/String; = "##46632874#"

.field public static final KT_FZ_MENU_REJECT_CAUSE:Ljava/lang/String; = "Unable to Set FreeZone\n in This Area(FreeZone)"

.field public static final KT_HIDDEN_MENU:Ljava/lang/String; = "##46632874#"

.field public static final KT_SUBSCRIPTION:Ljava/lang/String; = "*147359*682*"

.field public static final ROAMING_FAKE_SETTING:Ljava/lang/String; = "#47566#"

.field public static final SKT_HIDDEN_MENU:Ljava/lang/String; = "##7593#"

.field public static final SKT_SUBSCRIPTION:Ljava/lang/String; = "#758353266#646#"

.field public static final TAG:Ljava/lang/String; = "SKY HIDDEN CODE"

.field private static final codeSet:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "##46632874#"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "##7593#"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "*123456#"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "##759477#"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "#47566#"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "##000000#"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "#758353266#646#"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "*147359*682*"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "##3282#443336#"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/SkyHiddenCode;->codeSet:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static isHiddenCode(Ljava/lang/String;)Lcom/android/internal/telephony/SkyHiddenCode$HiddenCodeResult;
    .locals 8
    .param p0, "code"    # Ljava/lang/String;

    .prologue
    .line 49
    new-instance v2, Lcom/android/internal/telephony/SkyHiddenCode$HiddenCodeResult;

    invoke-direct {v2}, Lcom/android/internal/telephony/SkyHiddenCode$HiddenCodeResult;-><init>()V

    .line 50
    .local v2, "hresult":Lcom/android/internal/telephony/SkyHiddenCode$HiddenCodeResult;
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/internal/telephony/SkyHiddenCode$HiddenCodeResult;->result:Z

    .line 51
    const/4 v5, 0x0

    sput-object v5, Lcom/android/internal/telephony/SkyHiddenCode$HiddenCodeResult;->cause:Ljava/lang/String;

    .line 53
    sget-object v0, Lcom/android/internal/telephony/SkyHiddenCode;->codeSet:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 55
    .local v1, "each":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 57
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/internal/telephony/SkyHiddenCode$HiddenCodeResult;->result:Z

    .line 58
    const-string v5, "SKY HIDDEN CODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "phone code match="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " send intent"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .end local v1    # "each":Ljava/lang/String;
    :cond_0
    return-object v2

    .line 53
    .restart local v1    # "each":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
