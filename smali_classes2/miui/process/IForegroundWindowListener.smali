.class public interface abstract Lmiui/process/IForegroundWindowListener;
.super Ljava/lang/Object;
.source "IForegroundWindowListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/process/IForegroundWindowListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onForegroundWindowChanged(Lmiui/process/ForegroundInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
