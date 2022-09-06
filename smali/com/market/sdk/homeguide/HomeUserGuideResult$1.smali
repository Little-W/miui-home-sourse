.class Lcom/market/sdk/homeguide/HomeUserGuideResult$1;
.super Ljava/lang/Object;
.source "HomeUserGuideResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market/sdk/homeguide/HomeUserGuideResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/market/sdk/homeguide/HomeUserGuideResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/market/sdk/homeguide/HomeUserGuideResult;
    .locals 1

    .line 38
    new-instance v0, Lcom/market/sdk/homeguide/HomeUserGuideResult;

    invoke-direct {v0, p1}, Lcom/market/sdk/homeguide/HomeUserGuideResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/market/sdk/homeguide/HomeUserGuideResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/market/sdk/homeguide/HomeUserGuideResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/market/sdk/homeguide/HomeUserGuideResult;
    .locals 0

    .line 43
    new-array p1, p1, [Lcom/market/sdk/homeguide/HomeUserGuideResult;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/market/sdk/homeguide/HomeUserGuideResult$1;->newArray(I)[Lcom/market/sdk/homeguide/HomeUserGuideResult;

    move-result-object p1

    return-object p1
.end method
