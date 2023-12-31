.class Lcom/android/wm/shell/pip/IPipAnimationListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPipAnimationListener.java"

# interfaces
.implements Lcom/android/wm/shell/pip/IPipAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/pip/IPipAnimationListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/android/wm/shell/pip/IPipAnimationListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/android/wm/shell/pip/IPipAnimationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/android/wm/shell/pip/IPipAnimationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public onExpandPip()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.wm.shell.pip.IPipAnimationListener"

    .line 170
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 171
    iget-object p0, p0, Lcom/android/wm/shell/pip/IPipAnimationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 172
    invoke-static {}, Lcom/android/wm/shell/pip/IPipAnimationListener$Stub;->getDefaultImpl()Lcom/android/wm/shell/pip/IPipAnimationListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 173
    invoke-static {}, Lcom/android/wm/shell/pip/IPipAnimationListener$Stub;->getDefaultImpl()Lcom/android/wm/shell/pip/IPipAnimationListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/wm/shell/pip/IPipAnimationListener;->onExpandPip()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 179
    throw p0
.end method

.method public onPipAnimationStarted()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.wm.shell.pip.IPipAnimationListener"

    .line 128
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 129
    iget-object p0, p0, Lcom/android/wm/shell/pip/IPipAnimationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 130
    invoke-static {}, Lcom/android/wm/shell/pip/IPipAnimationListener$Stub;->getDefaultImpl()Lcom/android/wm/shell/pip/IPipAnimationListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 131
    invoke-static {}, Lcom/android/wm/shell/pip/IPipAnimationListener$Stub;->getDefaultImpl()Lcom/android/wm/shell/pip/IPipAnimationListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/wm/shell/pip/IPipAnimationListener;->onPipAnimationStarted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 137
    throw p0
.end method

.method public onPipResourceDimensionsChanged(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.wm.shell.pip.IPipAnimationListener"

    .line 150
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-object p0, p0, Lcom/android/wm/shell/pip/IPipAnimationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 154
    invoke-static {}, Lcom/android/wm/shell/pip/IPipAnimationListener$Stub;->getDefaultImpl()Lcom/android/wm/shell/pip/IPipAnimationListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 155
    invoke-static {}, Lcom/android/wm/shell/pip/IPipAnimationListener$Stub;->getDefaultImpl()Lcom/android/wm/shell/pip/IPipAnimationListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/wm/shell/pip/IPipAnimationListener;->onPipResourceDimensionsChanged(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 161
    throw p0
.end method
