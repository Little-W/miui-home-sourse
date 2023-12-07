.class public abstract Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.systemui.shared.recents.IMiuiSystemUiProxy"

.field static final TRANSACTION_exitSplitScreen:I = 0x2

.field static final TRANSACTION_getMiddleSplitScreenSecondaryBounds:I = 0x3

.field static final TRANSACTION_onAssistantGestureCompletion:I = 0x5

.field static final TRANSACTION_onDockIndicatorVisibilityChanged:I = 0x6

.field static final TRANSACTION_onFocusNotifyAnimEnd:I = 0x38

.field static final TRANSACTION_onFocusNotifyAnimStart:I = 0x37

.field static final TRANSACTION_onGestureLineProgress:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.systemui.shared.recents.IMiuiSystemUiProxy"

    invoke-virtual {p0, p0, v0}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.systemui.shared.recents.IMiuiSystemUiProxy"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    return-object v0

    :cond_1
    new-instance v0, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;
    .locals 1

    sget-object v0, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy$Stub$Proxy;->sDefaultImpl:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;)Z
    .locals 1

    sget-object v0, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy$Stub$Proxy;->sDefaultImpl:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    sput-object p0, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy$Stub$Proxy;->sDefaultImpl:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    const-string v2, "com.android.systemui.shared.recents.IMiuiSystemUiProxy"

    if-eq p1, v0, :cond_9

    const/4 v0, 0x3

    const/4 v3, 0x0

    if-eq p1, v0, :cond_7

    const/4 v0, 0x4

    if-eq p1, v0, :cond_6

    const/4 v0, 0x5

    if-eq p1, v0, :cond_5

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    const/16 v0, 0x37

    if-eq p1, v0, :cond_2

    const/16 v0, 0x38

    if-eq p1, v0, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy$Stub;->onFocusNotifyAnimEnd()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy$Stub;->onFocusNotifyAnimStart()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    move v3, v1

    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy$Stub;->onDockIndicatorVisibilityChanged(Z)V

    return v1

    :cond_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy$Stub;->onAssistantGestureCompletion()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy$Stub;->onGestureLineProgress(F)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy$Stub;->getMiddleSplitScreenSecondaryBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_8

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p3, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_8
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    :cond_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy$Stub;->exitSplitScreen()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
