.class public final Lio/branch/search/ui/ImageLoadingStrategy$FromCache$Creator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/ui/ImageLoadingStrategy$FromCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lio/branch/search/ui/ImageLoadingStrategy$FromCache;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lio/branch/search/ui/ImageLoadingStrategy$FromCache;
    .locals 0

    const-string p0, "in"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lio/branch/search/ui/ImageLoadingStrategy$FromCache;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/branch/search/ui/ImageLoadingStrategy$FromCache;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/branch/search/ui/ImageLoadingStrategy$FromCache$Creator;->createFromParcel(Landroid/os/Parcel;)Lio/branch/search/ui/ImageLoadingStrategy$FromCache;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Lio/branch/search/ui/ImageLoadingStrategy$FromCache;
    .locals 0

    new-array p0, p1, [Lio/branch/search/ui/ImageLoadingStrategy$FromCache;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/branch/search/ui/ImageLoadingStrategy$FromCache$Creator;->newArray(I)[Lio/branch/search/ui/ImageLoadingStrategy$FromCache;

    move-result-object p0

    return-object p0
.end method
