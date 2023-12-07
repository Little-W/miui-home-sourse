.class public final Lio/branch/search/ui/ImageLoadingStrategy$Url;
.super Lio/branch/search/ui/ImageLoadingStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/ui/ImageLoadingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Url"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/ui/ImageLoadingStrategy$Url$Creator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/branch/search/ui/ImageLoadingStrategy$Url;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final fallback:Lio/branch/search/ui/ImageLoadingStrategy;

.field private final resultType:Lio/branch/search/k;

.field private final url:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/branch/search/ui/ImageLoadingStrategy$Url$Creator;

    invoke-direct {v0}, Lio/branch/search/ui/ImageLoadingStrategy$Url$Creator;-><init>()V

    sput-object v0, Lio/branch/search/ui/ImageLoadingStrategy$Url;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/branch/search/k;Lio/branch/search/ui/ImageLoadingStrategy;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/branch/search/ui/ImageLoadingStrategy;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lio/branch/search/ui/ImageLoadingStrategy$Url;->url:Ljava/lang/String;

    iput-object p2, p0, Lio/branch/search/ui/ImageLoadingStrategy$Url;->resultType:Lio/branch/search/k;

    iput-object p3, p0, Lio/branch/search/ui/ImageLoadingStrategy$Url;->fallback:Lio/branch/search/ui/ImageLoadingStrategy;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lio/branch/search/ui/ImageLoadingStrategy$Url;

    if-eqz v0, :cond_0

    check-cast p1, Lio/branch/search/ui/ImageLoadingStrategy$Url;

    iget-object v0, p0, Lio/branch/search/ui/ImageLoadingStrategy$Url;->url:Ljava/lang/String;

    iget-object v1, p1, Lio/branch/search/ui/ImageLoadingStrategy$Url;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/ui/ImageLoadingStrategy$Url;->resultType:Lio/branch/search/k;

    iget-object v1, p1, Lio/branch/search/ui/ImageLoadingStrategy$Url;->resultType:Lio/branch/search/k;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/branch/search/ui/ImageLoadingStrategy$Url;->fallback:Lio/branch/search/ui/ImageLoadingStrategy;

    iget-object p1, p1, Lio/branch/search/ui/ImageLoadingStrategy$Url;->fallback:Lio/branch/search/ui/ImageLoadingStrategy;

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

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lio/branch/search/ui/ImageLoadingStrategy$Url;->url:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/ui/ImageLoadingStrategy$Url;->resultType:Lio/branch/search/k;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lio/branch/search/ui/ImageLoadingStrategy$Url;->fallback:Lio/branch/search/ui/ImageLoadingStrategy;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public load(Landroid/widget/ImageView;)V
    .locals 9

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/ui/ImageLoadingStrategy$Url;->fallback:Lio/branch/search/ui/ImageLoadingStrategy;

    instance-of v1, v0, Lio/branch/search/ui/ImageLoadingStrategy$AppIcon;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lio/branch/search/g5;->Companion:Lio/branch/search/g5$a;

    check-cast v0, Lio/branch/search/ui/ImageLoadingStrategy$AppIcon;

    invoke-virtual {v0}, Lio/branch/search/ui/ImageLoadingStrategy$AppIcon;->getPackageId()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lio/branch/search/ui/ImageLoadingStrategy$Url;->fallback:Lio/branch/search/ui/ImageLoadingStrategy;

    check-cast v3, Lio/branch/search/ui/ImageLoadingStrategy$AppIcon;

    invoke-virtual {v3}, Lio/branch/search/ui/ImageLoadingStrategy$AppIcon;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "v.context"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v3, v4}, Lio/branch/search/g5$a;->a(Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v6, v0

    move-object v7, v2

    :goto_0
    move-object v8, v7

    goto :goto_1

    :cond_0
    instance-of v1, v0, Lio/branch/search/ui/ImageLoadingStrategy$Url;

    if-eqz v1, :cond_1

    check-cast v0, Lio/branch/search/ui/ImageLoadingStrategy$Url;

    iget-object v0, v0, Lio/branch/search/ui/ImageLoadingStrategy$Url;->url:Ljava/lang/String;

    move-object v7, v0

    move-object v6, v2

    move-object v8, v6

    goto :goto_1

    :cond_1
    instance-of v1, v0, Lio/branch/search/ui/ImageLoadingStrategy$FromCache;

    if-eqz v1, :cond_2

    check-cast v0, Lio/branch/search/ui/ImageLoadingStrategy$FromCache;

    invoke-virtual {v0}, Lio/branch/search/ui/ImageLoadingStrategy$FromCache;->getUri()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    move-object v6, v2

    move-object v7, v6

    goto :goto_1

    :cond_2
    move-object v6, v2

    move-object v7, v6

    goto :goto_0

    :goto_1
    invoke-static {}, Lio/branch/search/v0;->b()Lio/branch/search/v0;

    move-result-object v3

    new-instance v4, Lio/branch/search/w0;

    iget-object v0, p0, Lio/branch/search/ui/ImageLoadingStrategy$Url;->url:Ljava/lang/String;

    iget-object p0, p0, Lio/branch/search/ui/ImageLoadingStrategy$Url;->resultType:Lio/branch/search/k;

    invoke-direct {v4, v0, p0}, Lio/branch/search/w0;-><init>(Ljava/lang/String;Lio/branch/search/k;)V

    move-object v5, p1

    invoke-virtual/range {v3 .. v8}, Lio/branch/search/v0;->a(Lio/branch/search/w0;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Url(url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/ui/ImageLoadingStrategy$Url;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", resultType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/ui/ImageLoadingStrategy$Url;->resultType:Lio/branch/search/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/branch/search/ui/ImageLoadingStrategy$Url;->fallback:Lio/branch/search/ui/ImageLoadingStrategy;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/ui/ImageLoadingStrategy$Url;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/ui/ImageLoadingStrategy$Url;->resultType:Lio/branch/search/k;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lio/branch/search/ui/ImageLoadingStrategy$Url;->fallback:Lio/branch/search/ui/ImageLoadingStrategy;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
