.class public interface abstract Lcom/miui/apppredict/IAppPredictCallBack;
.super Ljava/lang/Object;
.source "IAppPredictCallBack.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/apppredict/IAppPredictCallBack$Stub;
    }
.end annotation


# virtual methods
.method public abstract loadAppList(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
