.class public final Lio/branch/search/u0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/u0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lio/branch/search/u0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lio/branch/search/u0;
    .locals 1

    new-instance v0, Lio/branch/search/u0;

    invoke-direct {v0, p1}, Lio/branch/search/u0;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lio/branch/search/u0;
    .locals 0

    new-array p1, p1, [Lio/branch/search/u0;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/branch/search/u0$a;->a(Landroid/os/Parcel;)Lio/branch/search/u0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/branch/search/u0$a;->a(I)[Lio/branch/search/u0;

    move-result-object p1

    return-object p1
.end method
