.class public interface abstract Lcom/xiaomi/mirror/IMirrorAdvConnectionCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/IMirrorAdvConnectionCallback$Stub;,
        Lcom/xiaomi/mirror/IMirrorAdvConnectionCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.mirror.IMirrorAdvConnectionCallback"


# virtual methods
.method public abstract onLost()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
