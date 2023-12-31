.class public final Lio/branch/search/ui/ImageLoadingStrategy$AppIcon$Creator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/ui/ImageLoadingStrategy$AppIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lio/branch/search/ui/ImageLoadingStrategy$AppIcon;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lio/branch/search/ui/ImageLoadingStrategy$AppIcon;
    .locals 2

    const-string p0, "in"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lio/branch/search/ui/ImageLoadingStrategy$AppIcon;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    invoke-direct {p0, v0, p1}, Lio/branch/search/ui/ImageLoadingStrategy$AppIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/branch/search/ui/ImageLoadingStrategy$AppIcon$Creator;->createFromParcel(Landroid/os/Parcel;)Lio/branch/search/ui/ImageLoadingStrategy$AppIcon;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Lio/branch/search/ui/ImageLoadingStrategy$AppIcon;
    .locals 0

    new-array p0, p1, [Lio/branch/search/ui/ImageLoadingStrategy$AppIcon;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/branch/search/ui/ImageLoadingStrategy$AppIcon$Creator;->newArray(I)[Lio/branch/search/ui/ImageLoadingStrategy$AppIcon;

    move-result-object p0

    return-object p0
.end method
