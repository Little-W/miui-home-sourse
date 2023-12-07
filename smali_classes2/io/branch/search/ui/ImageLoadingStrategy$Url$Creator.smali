.class public final Lio/branch/search/ui/ImageLoadingStrategy$Url$Creator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/ui/ImageLoadingStrategy$Url;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lio/branch/search/ui/ImageLoadingStrategy$Url;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lio/branch/search/ui/ImageLoadingStrategy$Url;
    .locals 3

    const-string p0, "in"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lio/branch/search/ui/ImageLoadingStrategy$Url;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lio/branch/search/k;

    invoke-static {v2, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lio/branch/search/k;

    const-class v2, Lio/branch/search/ui/ImageLoadingStrategy$Url;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lio/branch/search/ui/ImageLoadingStrategy;

    invoke-direct {p0, v0, v1, p1}, Lio/branch/search/ui/ImageLoadingStrategy$Url;-><init>(Ljava/lang/String;Lio/branch/search/k;Lio/branch/search/ui/ImageLoadingStrategy;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/branch/search/ui/ImageLoadingStrategy$Url$Creator;->createFromParcel(Landroid/os/Parcel;)Lio/branch/search/ui/ImageLoadingStrategy$Url;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Lio/branch/search/ui/ImageLoadingStrategy$Url;
    .locals 0

    new-array p0, p1, [Lio/branch/search/ui/ImageLoadingStrategy$Url;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/branch/search/ui/ImageLoadingStrategy$Url$Creator;->newArray(I)[Lio/branch/search/ui/ImageLoadingStrategy$Url;

    move-result-object p0

    return-object p0
.end method
