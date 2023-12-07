.class public final Lio/branch/search/ui/ImageLoadingStrategy$FromCache;
.super Lio/branch/search/ui/ImageLoadingStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/ui/ImageLoadingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FromCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/ui/ImageLoadingStrategy$FromCache$Creator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/branch/search/ui/ImageLoadingStrategy$FromCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final uri:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/branch/search/ui/ImageLoadingStrategy$FromCache$Creator;

    invoke-direct {v0}, Lio/branch/search/ui/ImageLoadingStrategy$FromCache$Creator;-><init>()V

    sput-object v0, Lio/branch/search/ui/ImageLoadingStrategy$FromCache;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/branch/search/ui/ImageLoadingStrategy;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lio/branch/search/ui/ImageLoadingStrategy$FromCache;->uri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lio/branch/search/ui/ImageLoadingStrategy$FromCache;

    if-eqz v0, :cond_0

    check-cast p1, Lio/branch/search/ui/ImageLoadingStrategy$FromCache;

    iget-object p0, p0, Lio/branch/search/ui/ImageLoadingStrategy$FromCache;->uri:Ljava/lang/String;

    iget-object p1, p1, Lio/branch/search/ui/ImageLoadingStrategy$FromCache;->uri:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/branch/search/ui/ImageLoadingStrategy$FromCache;->uri:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lio/branch/search/ui/ImageLoadingStrategy$FromCache;->uri:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public load(Landroid/widget/ImageView;)V
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lio/branch/search/R$id;->branch_url_id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    invoke-static {}, Lio/branch/search/v0;->b()Lio/branch/search/v0;

    move-result-object v0

    iget-object p0, p0, Lio/branch/search/ui/ImageLoadingStrategy$FromCache;->uri:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lio/branch/search/v0;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FromCache(uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/branch/search/ui/ImageLoadingStrategy$FromCache;->uri:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/branch/search/ui/ImageLoadingStrategy$FromCache;->uri:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
