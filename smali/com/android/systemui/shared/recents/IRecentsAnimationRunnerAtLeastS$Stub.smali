.class public abstract Lcom/android/systemui/shared/recents/IRecentsAnimationRunnerAtLeastS$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/view/IRecentsAnimationRunner;
.implements Lcom/android/systemui/shared/recents/IRecentsAnimationRunnerAtLeastS;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/IRecentsAnimationRunnerAtLeastS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IRecentsAnimationRunner"

.field static final TRANSACTION_onAnimationCanceled:I = 0x2

.field static final TRANSACTION_onAnimationStart:I = 0x3

.field static final TRANSACTION_onTaskAppeared:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.view.IRecentsAnimationRunner"

    invoke-virtual {p0, p0, v0}, Lcom/android/systemui/shared/recents/IRecentsAnimationRunnerAtLeastS$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onAnimationCanceled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onAnimationCanceled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onAnimationStart(Landroid/view/IRecentsAnimationController;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onTaskAppeared(Landroid/view/RemoteAnimationTarget;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "android.view.IRecentsAnimationRunner"

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidT()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/IRecentsAnimationRunnerAtLeastS$Stub;->onTasksAppeared([Landroid/view/RemoteAnimationTarget;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/view/RemoteAnimationTarget;

    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/systemui/shared/recents/IRecentsAnimationRunnerAtLeastS$Stub;->onTaskAppeared(Landroid/view/RemoteAnimationTarget;)V

    :goto_0
    return v1

    :cond_4
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IRecentsAnimationController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRecentsAnimationController;

    move-result-object v4

    sget-object p1, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, [Landroid/view/RemoteAnimationTarget;

    sget-object p1, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    move-object v7, p1

    goto :goto_1

    :cond_5
    move-object v7, v2

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/graphics/Rect;

    :cond_6
    move-object v8, v2

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/shared/recents/IRecentsAnimationRunnerAtLeastS$Stub;->onAnimationStart(Landroid/view/IRecentsAnimationController;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return v1

    :cond_7
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_8

    invoke-static {p2}, Lcom/android/systemui/shared/recents/utilities/Utilities;->getTaskSnapshots(Landroid/os/Parcel;)[Ljava/lang/Object;

    move-result-object v2

    :cond_8
    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/shared/recents/IRecentsAnimationRunnerAtLeastS$Stub;->onAnimationCanceled([I[Ljava/lang/Object;)V

    goto :goto_2

    :cond_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {p2}, Lcom/android/systemui/shared/recents/utilities/Utilities;->getTaskSnapshot(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    :cond_a
    invoke-virtual {p0, v2}, Lcom/android/systemui/shared/recents/IRecentsAnimationRunnerAtLeastS$Stub;->onAnimationCanceled(Ljava/lang/Object;)V

    :goto_2
    return v1
.end method
