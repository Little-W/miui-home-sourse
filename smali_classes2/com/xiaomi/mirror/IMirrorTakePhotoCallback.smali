.class public interface abstract Lcom/xiaomi/mirror/IMirrorTakePhotoCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/IMirrorTakePhotoCallback$Stub;,
        Lcom/xiaomi/mirror/IMirrorTakePhotoCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.mirror.IMirrorTakePhotoCallback"


# virtual methods
.method public abstract onTakePhotoChanged(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
