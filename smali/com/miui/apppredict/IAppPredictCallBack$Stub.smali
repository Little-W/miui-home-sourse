.class public abstract Lcom/miui/apppredict/IAppPredictCallBack$Stub;
.super Landroid/os/Binder;
.source "IAppPredictCallBack.java"

# interfaces
.implements Lcom/miui/apppredict/IAppPredictCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/apppredict/IAppPredictCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/apppredict/IAppPredictCallBack$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.apppredict.IAppPredictCallBack"

    .line 25
    invoke-virtual {p0, p0, v0}, Lcom/miui/apppredict/IAppPredictCallBack$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/apppredict/IAppPredictCallBack;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.miui.apppredict.IAppPredictCallBack"

    .line 36
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 37
    instance-of v1, v0, Lcom/miui/apppredict/IAppPredictCallBack;

    if-eqz v1, :cond_1

    .line 38
    check-cast v0, Lcom/miui/apppredict/IAppPredictCallBack;

    return-object v0

    .line 40
    :cond_1
    new-instance v0, Lcom/miui/apppredict/IAppPredictCallBack$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/miui/apppredict/IAppPredictCallBack$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/miui/apppredict/IAppPredictCallBack;
    .locals 1

    .line 122
    sget-object v0, Lcom/miui/apppredict/IAppPredictCallBack$Stub$Proxy;->sDefaultImpl:Lcom/miui/apppredict/IAppPredictCallBack;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.miui.apppredict.IAppPredictCallBack"

    if-eq p1, v0, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 53
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 58
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Lcom/miui/apppredict/IAppPredictCallBack$Stub;->loadAppList(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
