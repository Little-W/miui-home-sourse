.class Lcom/miui/launcher/common/PinItemRequestCompat$1;
.super Ljava/lang/Object;
.source "PinItemRequestCompat.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/launcher/common/PinItemRequestCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/miui/launcher/common/PinItemRequestCompat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/launcher/common/PinItemRequestCompat;
    .locals 1

    const/4 p0, 0x0

    .line 115
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    .line 116
    new-instance v0, Lcom/miui/launcher/common/PinItemRequestCompat;

    invoke-direct {v0, p1, p0}, Lcom/miui/launcher/common/PinItemRequestCompat;-><init>(Landroid/os/Parcelable;Lcom/miui/launcher/common/PinItemRequestCompat$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 113
    invoke-virtual {p0, p1}, Lcom/miui/launcher/common/PinItemRequestCompat$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/launcher/common/PinItemRequestCompat;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/miui/launcher/common/PinItemRequestCompat;
    .locals 0

    .line 120
    new-array p0, p1, [Lcom/miui/launcher/common/PinItemRequestCompat;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 113
    invoke-virtual {p0, p1}, Lcom/miui/launcher/common/PinItemRequestCompat$1;->newArray(I)[Lcom/miui/launcher/common/PinItemRequestCompat;

    move-result-object p0

    return-object p0
.end method
