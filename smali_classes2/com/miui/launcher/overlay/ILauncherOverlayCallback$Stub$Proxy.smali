.class Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ILauncherOverlayCallback.java"

# interfaces
.implements Lcom/miui/launcher/overlay/ILauncherOverlayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/miui/launcher/overlay/ILauncherOverlayCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.miui.launcher.overlay.ILauncherOverlayCallback"

    .line 173
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    .line 177
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    :goto_0
    iget-object v4, p0, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 184
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlayCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 185
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlayCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/miui/launcher/overlay/ILauncherOverlayCallback;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 187
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 188
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 189
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 196
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 196
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 198
    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.miui.launcher.overlay.ILauncherOverlayCallback"

    return-object v0
.end method

.method public invoke(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 267
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.miui.launcher.overlay.ILauncherOverlayCallback"

    .line 269
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 273
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 277
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    :goto_0
    iget-object v2, p0, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 280
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlayCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 281
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlayCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/miui/launcher/overlay/ILauncherOverlayCallback;->invoke(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 287
    throw p1
.end method

.method public overlayScrollChanged(F)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 219
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.miui.launcher.overlay.ILauncherOverlayCallback"

    .line 221
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 223
    iget-object v1, p0, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 224
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlayCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 225
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlayCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/miui/launcher/overlay/ILauncherOverlayCallback;->overlayScrollChanged(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 231
    throw p1
.end method

.method public overlayScrollEnd(F)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.miui.launcher.overlay.ILauncherOverlayCallback"

    .line 237
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 239
    iget-object v1, p0, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 240
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlayCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 241
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlayCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/miui/launcher/overlay/ILauncherOverlayCallback;->overlayScrollEnd(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 247
    throw p1
.end method

.method public overlayScrollStart(F)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.miui.launcher.overlay.ILauncherOverlayCallback"

    .line 205
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 207
    iget-object v1, p0, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlayCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 209
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlayCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/miui/launcher/overlay/ILauncherOverlayCallback;->overlayScrollStart(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 215
    throw p1
.end method

.method public overlayStatusChanged(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 251
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.miui.launcher.overlay.ILauncherOverlayCallback"

    .line 253
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    iget-object v1, p0, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlayCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 257
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlayCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/miui/launcher/overlay/ILauncherOverlayCallback;->overlayStatusChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 263
    throw p1
.end method
