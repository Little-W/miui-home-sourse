.class public interface abstract Lcom/xiaomi/mirror/ISameAccountApCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/ISameAccountApCallback$_Parcel;,
        Lcom/xiaomi/mirror/ISameAccountApCallback$Stub;,
        Lcom/xiaomi/mirror/ISameAccountApCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.mirror.ISameAccountApCallback"


# virtual methods
.method public abstract onApConnectedStatusUpdate(ILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onApInfoUpdate(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
