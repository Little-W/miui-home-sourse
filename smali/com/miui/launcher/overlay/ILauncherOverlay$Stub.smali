.class public abstract Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;
.super Landroid/os/Binder;
.source "ILauncherOverlay.java"

# interfaces
.implements Lcom/miui/launcher/overlay/ILauncherOverlay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/launcher/overlay/ILauncherOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/launcher/overlay/ILauncherOverlay$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.launcher.overlay.ILauncherOverlay"

.field static final TRANSACTION_call:I = 0x1

.field static final TRANSACTION_closeOverlay:I = 0x7

.field static final TRANSACTION_endScroll:I = 0x4

.field static final TRANSACTION_onMultiWindowModeChanged:I = 0xe

.field static final TRANSACTION_onNewIntent:I = 0xa

.field static final TRANSACTION_onScroll:I = 0x3

.field static final TRANSACTION_openOverlay:I = 0x8

.field static final TRANSACTION_setActivityState:I = 0x9

.field static final TRANSACTION_setAlpha:I = 0xc

.field static final TRANSACTION_setAlphaAndScale:I = 0xd

.field static final TRANSACTION_setScale:I = 0xb

.field static final TRANSACTION_startScroll:I = 0x2

.field static final TRANSACTION_windowAttached:I = 0x5

.field static final TRANSACTION_windowDetached:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.launcher.overlay.ILauncherOverlay"

    .line 65
    invoke-virtual {p0, p0, v0}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/launcher/overlay/ILauncherOverlay;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.miui.launcher.overlay.ILauncherOverlay"

    .line 76
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 77
    instance-of v1, v0, Lcom/miui/launcher/overlay/ILauncherOverlay;

    if-eqz v1, :cond_1

    .line 78
    check-cast v0, Lcom/miui/launcher/overlay/ILauncherOverlay;

    return-object v0

    .line 80
    :cond_1
    new-instance v0, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;
    .locals 1

    .line 554
    sget-object v0, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub$Proxy;->sDefaultImpl:Lcom/miui/launcher/overlay/ILauncherOverlay;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/miui/launcher/overlay/ILauncherOverlay;)Z
    .locals 1

    .line 544
    sget-object v0, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub$Proxy;->sDefaultImpl:Lcom/miui/launcher/overlay/ILauncherOverlay;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 548
    sput-object p0, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub$Proxy;->sDefaultImpl:Lcom/miui/launcher/overlay/ILauncherOverlay;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 545
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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.miui.launcher.overlay.ILauncherOverlay"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_7

    const/4 v1, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 244
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 229
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v1, v2

    .line 233
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 234
    sget-object p1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/content/res/Configuration;

    .line 239
    :cond_1
    invoke-virtual {p0, v1, v3}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    return v2

    .line 219
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    .line 224
    invoke-virtual {p0, p1, p2}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->setAlphaAndScale(FF)V

    return v2

    .line 211
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 214
    invoke-virtual {p0, p1}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->setAlpha(F)V

    return v2

    .line 203
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 206
    invoke-virtual {p0, p1}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->setScale(F)V

    return v2

    .line 190
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 193
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/content/Intent;

    .line 198
    :cond_2
    invoke-virtual {p0, v3}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->onNewIntent(Landroid/content/Intent;)V

    return v2

    .line 182
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 185
    invoke-virtual {p0, p1}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->setActivityState(I)V

    return v2

    .line 174
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 177
    invoke-virtual {p0, p1}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->openOverlay(I)V

    return v2

    .line 166
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 169
    invoke-virtual {p0, p1}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->closeOverlay(I)V

    return v2

    .line 158
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v1, v2

    .line 161
    :cond_3
    invoke-virtual {p0, v1}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->windowDetached(Z)V

    return v2

    .line 143
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 146
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/os/Bundle;

    .line 152
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/launcher/overlay/ILauncherOverlayCallback;

    move-result-object p1

    .line 153
    invoke-virtual {p0, v3, p1}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->windowAttached(Landroid/os/Bundle;Lcom/miui/launcher/overlay/ILauncherOverlayCallback;)V

    return v2

    .line 137
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->endScroll()V

    return v2

    .line 129
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 132
    invoke-virtual {p0, p1}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->onScroll(F)V

    return v2

    .line 123
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->startScroll()V

    return v2

    .line 98
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 105
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 110
    :cond_5
    invoke-virtual {p0, p1, p4, v3}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_6

    .line 113
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    invoke-virtual {p1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 117
    :cond_6
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v2

    .line 93
    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
