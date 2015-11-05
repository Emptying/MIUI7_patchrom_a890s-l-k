.class public Lcom/pantech/gota/GotaJni;
.super Ljava/lang/Object;
.source "GotaJni.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Gota Jni"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "gota_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method static native java_gota_jni_clear_backup()I
.end method

.method static native java_gota_jni_clear_reset_status()I
.end method

.method static native java_gota_jni_clear_update_status()I
.end method

.method static native java_gota_jni_end(I)I
.end method

.method static native java_gota_jni_get_permanent_mem(I[B)I
.end method

.method static native java_gota_jni_get_reset_status()I
.end method

.method static native java_gota_jni_get_status(I)I
.end method

.method static native java_gota_jni_get_update_status()I
.end method

.method static native java_gota_jni_read_backup()[B
.end method

.method static native java_gota_jni_set_permanent_mem(I[B)I
.end method

.method static native java_gota_jni_start(I[B)I
.end method

.method static native java_gota_jni_write_backup([B)I
.end method


# virtual methods
.method public gota_jni_clear_backup()I
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Lcom/pantech/gota/GotaJni;->java_gota_jni_clear_backup()I

    move-result v0

    return v0
.end method

.method public gota_jni_clear_reset_status()I
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lcom/pantech/gota/GotaJni;->java_gota_jni_clear_reset_status()I

    move-result v0

    return v0
.end method

.method public gota_jni_clear_update_status()I
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lcom/pantech/gota/GotaJni;->java_gota_jni_clear_update_status()I

    move-result v0

    return v0
.end method

.method public gota_jni_end(I)I
    .locals 1
    .param p1, "oper"    # I

    .prologue
    .line 56
    invoke-static {p1}, Lcom/pantech/gota/GotaJni;->java_gota_jni_end(I)I

    move-result v0

    return v0
.end method

.method public gota_jni_get_permanent_mem(I[B)I
    .locals 1
    .param p1, "oper"    # I
    .param p2, "data"    # [B

    .prologue
    .line 68
    invoke-static {p1, p2}, Lcom/pantech/gota/GotaJni;->java_gota_jni_get_permanent_mem(I[B)I

    move-result v0

    return v0
.end method

.method public gota_jni_get_reset_status()I
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/pantech/gota/GotaJni;->java_gota_jni_get_reset_status()I

    move-result v0

    return v0
.end method

.method public gota_jni_get_status(I)I
    .locals 1
    .param p1, "oper"    # I

    .prologue
    .line 60
    invoke-static {p1}, Lcom/pantech/gota/GotaJni;->java_gota_jni_get_status(I)I

    move-result v0

    return v0
.end method

.method public gota_jni_get_update_status()I
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lcom/pantech/gota/GotaJni;->java_gota_jni_get_update_status()I

    move-result v0

    return v0
.end method

.method public gota_jni_read_backup()[B
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Lcom/pantech/gota/GotaJni;->java_gota_jni_read_backup()[B

    move-result-object v0

    return-object v0
.end method

.method public gota_jni_set_permanent_mem(I[B)I
    .locals 1
    .param p1, "oper"    # I
    .param p2, "data"    # [B

    .prologue
    .line 64
    invoke-static {p1, p2}, Lcom/pantech/gota/GotaJni;->java_gota_jni_set_permanent_mem(I[B)I

    move-result v0

    return v0
.end method

.method public gota_jni_start(I[B)I
    .locals 1
    .param p1, "oper"    # I
    .param p2, "data"    # [B

    .prologue
    .line 52
    invoke-static {p1, p2}, Lcom/pantech/gota/GotaJni;->java_gota_jni_start(I[B)I

    move-result v0

    return v0
.end method

.method public gota_jni_write_backup([B)I
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 89
    invoke-static {p1}, Lcom/pantech/gota/GotaJni;->java_gota_jni_write_backup([B)I

    move-result v0

    return v0
.end method
