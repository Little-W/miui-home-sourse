.class Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IFsGestureCallback.java"

# interfaces
.implements Lcom/android/systemui/fsgesture/IFsGestureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/android/systemui/fsgesture/IFsGestureCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public changeAlphaScale(FFIIIIZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v0, "com.android.systemui.fsgesture.IFsGestureCallback"

    .line 153
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v0, p1

    .line 154
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeFloat(F)V

    move v4, p2

    .line 155
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    move v5, p3

    .line 156
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    move v6, p4

    .line 157
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, p5

    .line 158
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v8, p6

    .line 159
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    if-eqz p7, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 160
    :goto_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    move-object v3, p0

    .line 161
    iget-object v3, v3, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v9, 0x0

    invoke-interface {v3, v2, v1, v9, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 162
    invoke-static {}, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;->getDefaultImpl()Lcom/android/systemui/fsgesture/IFsGestureCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 163
    invoke-static {}, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;->getDefaultImpl()Lcom/android/systemui/fsgesture/IFsGestureCallback;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/android/systemui/fsgesture/IFsGestureCallback;->changeAlphaScale(FFIIIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 169
    throw v0
.end method

.method public getSpec(Ljava/lang/String;I)Lcom/android/systemui/fsgesture/TransitionAnimationSpec;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 174
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.android.systemui.fsgesture.IFsGestureCallback"

    .line 177
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget-object p0, p0, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 181
    invoke-static {}, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;->getDefaultImpl()Lcom/android/systemui/fsgesture/IFsGestureCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 182
    invoke-static {}, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;->getDefaultImpl()Lcom/android/systemui/fsgesture/IFsGestureCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/fsgesture/IFsGestureCallback;->getSpec(Ljava/lang/String;I)Lcom/android/systemui/fsgesture/TransitionAnimationSpec;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 184
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 185
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_1

    .line 186
    sget-object p0, Lcom/android/systemui/fsgesture/TransitionAnimationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/fsgesture/TransitionAnimationSpec;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 193
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 193
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 195
    throw p0
.end method

.method public notifyHomeModeFsGestureStart()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 230
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.systemui.fsgesture.IFsGestureCallback"

    .line 232
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 233
    iget-object p0, p0, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 234
    invoke-static {}, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;->getDefaultImpl()Lcom/android/systemui/fsgesture/IFsGestureCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 235
    invoke-static {}, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;->getDefaultImpl()Lcom/android/systemui/fsgesture/IFsGestureCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/fsgesture/IFsGestureCallback;->notifyHomeModeFsGestureStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 241
    throw p0
.end method

.method public notifyMiuiAnimationEnd()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 215
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.systemui.fsgesture.IFsGestureCallback"

    .line 217
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 218
    iget-object p0, p0, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 219
    invoke-static {}, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;->getDefaultImpl()Lcom/android/systemui/fsgesture/IFsGestureCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 220
    invoke-static {}, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;->getDefaultImpl()Lcom/android/systemui/fsgesture/IFsGestureCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/fsgesture/IFsGestureCallback;->notifyMiuiAnimationEnd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 226
    throw p0
.end method

.method public notifyMiuiAnimationStart()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 200
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.systemui.fsgesture.IFsGestureCallback"

    .line 202
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 203
    iget-object p0, p0, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 204
    invoke-static {}, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;->getDefaultImpl()Lcom/android/systemui/fsgesture/IFsGestureCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 205
    invoke-static {}, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;->getDefaultImpl()Lcom/android/systemui/fsgesture/IFsGestureCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/fsgesture/IFsGestureCallback;->notifyMiuiAnimationStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 211
    throw p0
.end method
