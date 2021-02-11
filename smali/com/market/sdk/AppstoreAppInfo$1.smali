.class final Lcom/market/sdk/AppstoreAppInfo$1;
.super Ljava/lang/Object;
.source "AppstoreAppInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market/sdk/AppstoreAppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/market/sdk/AppstoreAppInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/market/sdk/AppstoreAppInfo;
    .locals 1

    .line 185
    new-instance v0, Lcom/market/sdk/AppstoreAppInfo;

    invoke-direct {v0, p1}, Lcom/market/sdk/AppstoreAppInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 183
    invoke-virtual {p0, p1}, Lcom/market/sdk/AppstoreAppInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/market/sdk/AppstoreAppInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/market/sdk/AppstoreAppInfo;
    .locals 0

    .line 189
    new-array p1, p1, [Lcom/market/sdk/AppstoreAppInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 183
    invoke-virtual {p0, p1}, Lcom/market/sdk/AppstoreAppInfo$1;->newArray(I)[Lcom/market/sdk/AppstoreAppInfo;

    move-result-object p1

    return-object p1
.end method
