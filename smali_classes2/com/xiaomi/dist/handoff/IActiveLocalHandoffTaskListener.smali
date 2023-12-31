.class public interface abstract Lcom/xiaomi/dist/handoff/IActiveLocalHandoffTaskListener;
.super Ljava/lang/Object;
.source "IActiveLocalHandoffTaskListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/dist/handoff/IActiveLocalHandoffTaskListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onLocalHandoffTaskUpdate([Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
