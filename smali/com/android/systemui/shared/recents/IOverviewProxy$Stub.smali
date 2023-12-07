.class public abstract Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/android/systemui/shared/recents/IOverviewProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/IOverviewProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.systemui.shared.recents.IOverviewProxy"

.field static final TRANSACTION_onActiveNavBarRegionChanges:I = 0xc

.field static final TRANSACTION_onAssistantAvailable:I = 0xe

.field static final TRANSACTION_onAssistantVisibilityChanged:I = 0xf

.field static final TRANSACTION_onBackAction:I = 0x10

.field static final TRANSACTION_onFocusNotifClicked:I = 0x36

.field static final TRANSACTION_onFocusNotifyAnimFinish:I = 0x34

.field static final TRANSACTION_onFocusedNotifUpdate:I = 0x35

.field static final TRANSACTION_onInitialize:I = 0xd

.field static final TRANSACTION_onOverviewHidden:I = 0x9

.field static final TRANSACTION_onOverviewShown:I = 0x8

.field static final TRANSACTION_onOverviewToggle:I = 0x7

.field static final TRANSACTION_onStatusBarLaunchAnimFinish:I = 0x39

.field static final TRANSACTION_onSystemUiStateChanged:I = 0x11

.field static final TRANSACTION_onTip:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.systemui.shared.recents.IOverviewProxy"

    invoke-virtual {p0, p0, v0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/recents/IOverviewProxy;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.systemui.shared.recents.IOverviewProxy"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/systemui/shared/recents/IOverviewProxy;

    return-object v0

    :cond_1
    new-instance v0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/android/systemui/shared/recents/IOverviewProxy;
    .locals 1

    sget-object v0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->sDefaultImpl:Lcom/android/systemui/shared/recents/IOverviewProxy;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/android/systemui/shared/recents/IOverviewProxy;)Z
    .locals 1

    sget-object v0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->sDefaultImpl:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    sput-object p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->sDefaultImpl:Lcom/android/systemui/shared/recents/IOverviewProxy;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x7

    const/4 v1, 0x1

    const-string v2, "com.android.systemui.shared.recents.IOverviewProxy"

    if-eq p1, v0, :cond_f

    const/16 v0, 0x8

    const/4 v3, 0x0

    if-eq p1, v0, :cond_d

    const/16 v0, 0x9

    if-eq p1, v0, :cond_a

    const/16 v0, 0x39

    if-eq p1, v0, :cond_9

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_8

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->onFocusNotifClicked()V

    return v1

    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_0

    sget-object p3, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/Icon;

    goto :goto_0

    :cond_0
    move-object p3, v0

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1

    sget-object p4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/graphics/Rect;

    :cond_1
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->onFocusedNotifUpdate(Ljava/lang/String;Landroid/graphics/drawable/Icon;Landroid/graphics/Rect;)V

    return v1

    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->onFocusNotifyAnimFinish()V

    return v1

    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->onSystemUiStateChanged(I)V

    return v1

    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v5, v1

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v8, v1

    goto :goto_2

    :cond_3
    move v8, v3

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    move v9, v1

    goto :goto_3

    :cond_4
    move v9, v3

    :goto_3
    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->onBackAction(ZIIZZ)V

    return v1

    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->onAssistantVisibilityChanged(F)V

    return v1

    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    move v3, v1

    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->onAssistantAvailable(Z)V

    return v1

    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->onInitialize(Landroid/os/Bundle;)V

    return v1

    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/graphics/Region;

    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->onActiveNavBarRegionChanges(Landroid/graphics/Region;)V

    return v1

    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->onTip(II)V

    return v1

    :cond_8
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->onStatusBarLaunchAnimFinish()V

    return v1

    :cond_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_b

    move p1, v1

    goto :goto_4

    :cond_b
    move p1, v3

    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_c

    move v3, v1

    :cond_c
    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->onOverviewHidden(ZZ)V

    return v1

    :cond_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_e

    move v3, v1

    :cond_e
    invoke-virtual {p0, v3}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->onOverviewShown(Z)V

    return v1

    :cond_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->onOverviewToggle()V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x34
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
