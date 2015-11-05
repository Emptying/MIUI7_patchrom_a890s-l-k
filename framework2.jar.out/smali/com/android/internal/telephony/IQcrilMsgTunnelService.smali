.class public interface abstract Lcom/android/internal/telephony/IQcrilMsgTunnelService;
.super Ljava/lang/Object;
.source "IQcrilMsgTunnelService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IQcrilMsgTunnelService$Stub;
    }
.end annotation


# virtual methods
.method public abstract sendOemRilRequestRaw([B[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
