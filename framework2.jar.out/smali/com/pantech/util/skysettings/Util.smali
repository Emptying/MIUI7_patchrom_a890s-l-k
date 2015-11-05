.class public Lcom/pantech/util/skysettings/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field static ContextMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field static LayoutInflaterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/view/LayoutInflater;",
            ">;"
        }
    .end annotation
.end field

.field public static SSFRPackageName:Ljava/lang/String;

.field public static getResourceLog:Z

.field public static log1Show:Z

.field public static logOn:Z

.field public static mainContext:Landroid/content/Context;

.field public static tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 12
    const-string v0, "com.pantech.app.SkySettingFrameworkResource"

    sput-object v0, Lcom/pantech/util/skysettings/Util;->SSFRPackageName:Ljava/lang/String;

    .line 13
    const-string v0, "SSF"

    sput-object v0, Lcom/pantech/util/skysettings/Util;->tag:Ljava/lang/String;

    .line 14
    sput-boolean v1, Lcom/pantech/util/skysettings/Util;->logOn:Z

    .line 15
    sput-boolean v1, Lcom/pantech/util/skysettings/Util;->log1Show:Z

    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/pantech/util/skysettings/Util;->getResourceLog:Z

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/pantech/util/skysettings/Util;->mainContext:Landroid/content/Context;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pantech/util/skysettings/Util;->ContextMap:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pantech/util/skysettings/Util;->LayoutInflaterMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPackageContext(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Context;
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flag"    # I

    .prologue
    .line 32
    sget-object v2, Lcom/pantech/util/skysettings/Util;->ContextMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 33
    .local v1, "rc":Landroid/content/Context;
    if-nez v1, :cond_0

    .line 36
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 37
    sget-object v2, Lcom/pantech/util/skysettings/Util;->ContextMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createPackageContext create context "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/util/skysettings/Util;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_0
    :goto_0
    return-object v1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 53
    sget-object v1, Lcom/pantech/util/skysettings/Util;->LayoutInflaterMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 54
    .local v0, "li":Landroid/view/LayoutInflater;
    if-nez v0, :cond_0

    .line 56
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "li":Landroid/view/LayoutInflater;
    check-cast v0, Landroid/view/LayoutInflater;

    .line 57
    .restart local v0    # "li":Landroid/view/LayoutInflater;
    sget-object v1, Lcom/pantech/util/skysettings/Util;->LayoutInflaterMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLayoutInflater create LayoutInflater "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/util/skysettings/Util;->log(Ljava/lang/String;)V

    .line 64
    :goto_0
    return-object v0

    .line 62
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createPackageContext used LayoutInflater "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/util/skysettings/Util;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getMainContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/pantech/util/skysettings/Util;->mainContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 26
    const/4 v1, 0x3

    invoke-static {p0, p1, v1}, Lcom/pantech/util/skysettings/Util;->createPackageContext(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 27
    .local v0, "rc":Landroid/content/Context;
    return-object v0
.end method

.method public static loe(Ljava/lang/String;)V
    .locals 1
    .param p0, "l"    # Ljava/lang/String;

    .prologue
    .line 83
    sget-object v0, Lcom/pantech/util/skysettings/Util;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/pantech/util/skysettings/Util;->loe(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public static loe(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "t"    # Ljava/lang/String;
    .param p1, "l"    # Ljava/lang/String;

    .prologue
    .line 90
    sget-boolean v0, Lcom/pantech/util/skysettings/Util;->logOn:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 91
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "l"    # Ljava/lang/String;

    .prologue
    .line 69
    sget-object v0, Lcom/pantech/util/skysettings/Util;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/pantech/util/skysettings/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "t"    # Ljava/lang/String;
    .param p1, "l"    # Ljava/lang/String;

    .prologue
    .line 76
    sget-boolean v0, Lcom/pantech/util/skysettings/Util;->logOn:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 77
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    return-void
.end method

.method public static log(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "l"    # Ljava/lang/String;
    .param p1, "b"    # Z

    .prologue
    .line 97
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 98
    invoke-static {p0}, Lcom/pantech/util/skysettings/Util;->log(Ljava/lang/String;)V

    .line 99
    :cond_0
    return-void
.end method

.method public static setLogOn(Z)V
    .locals 3
    .param p0, "b"    # Z

    .prologue
    .line 103
    sget-object v0, Lcom/pantech/util/skysettings/Util;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v0, "persist.sys.sso.LogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sput-boolean p0, Lcom/pantech/util/skysettings/Util;->logOn:Z

    .line 107
    return-void
.end method
