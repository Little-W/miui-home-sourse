.class Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub$Proxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public onPreSoScStateChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZZII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p5

    :try_start_0
    const-string v0, "com.android.wm.shell.sosc.ISoScSplitScreenListener"

    invoke-virtual {p5, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p5, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p5, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p5, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p5, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, p5, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p5, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {p5, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, p5, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p5, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    invoke-virtual {p5, p4}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p6, :cond_3

    move v1, v0

    :cond_3
    invoke-virtual {p5, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p5, p7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p5, p8}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x4

    const/4 p2, 0x0

    invoke-interface {p0, p1, p5, p2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p5}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p5}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onSoScStateChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;ZII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.wm.shell.sosc.ISoScSplitScreenListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p5, :cond_3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p5, v0, v2}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    if-eqz p6, :cond_4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p6, v0, v2}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    :cond_4
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    if-eqz p7, :cond_5

    move v2, v1

    :cond_5
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x3

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onStagePositionChanged(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.wm.shell.sosc.ISoScSplitScreenListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-interface {p0, p2, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onTaskStageChanged(IIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.wm.shell.sosc.ISoScSplitScreenListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    if-eqz p3, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x2

    const/4 p3, 0x0

    invoke-interface {p0, p2, v0, p3, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
