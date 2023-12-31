.class final Lpl/droidsonroids/gif/GifAnimationMetaData$1;
.super Ljava/lang/Object;
.source "GifAnimationMetaData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/droidsonroids/gif/GifAnimationMetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lpl/droidsonroids/gif/GifAnimationMetaData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 307
    invoke-virtual {p0, p1}, Lpl/droidsonroids/gif/GifAnimationMetaData$1;->createFromParcel(Landroid/os/Parcel;)Lpl/droidsonroids/gif/GifAnimationMetaData;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lpl/droidsonroids/gif/GifAnimationMetaData;
    .locals 1

    .line 309
    new-instance p0, Lpl/droidsonroids/gif/GifAnimationMetaData;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lpl/droidsonroids/gif/GifAnimationMetaData;-><init>(Landroid/os/Parcel;Lpl/droidsonroids/gif/GifAnimationMetaData$1;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 307
    invoke-virtual {p0, p1}, Lpl/droidsonroids/gif/GifAnimationMetaData$1;->newArray(I)[Lpl/droidsonroids/gif/GifAnimationMetaData;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lpl/droidsonroids/gif/GifAnimationMetaData;
    .locals 0

    .line 313
    new-array p0, p1, [Lpl/droidsonroids/gif/GifAnimationMetaData;

    return-object p0
.end method
