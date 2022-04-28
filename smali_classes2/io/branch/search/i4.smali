.class public final Lio/branch/search/i4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/branch/search/ui/BranchEntity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/i4$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/branch/search/i4;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lio/branch/search/BranchBaseLinkResult;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Lio/branch/search/ui/Image;

.field public final f:Lio/branch/search/ui/Image;

.field public final g:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/branch/search/i4$a;

    invoke-direct {v0}, Lio/branch/search/i4$a;-><init>()V

    sput-object v0, Lio/branch/search/i4;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/BranchBaseLinkResult;Ljava/lang/String;Ljava/lang/String;ZLio/branch/search/ui/Image;Lio/branch/search/ui/Image;Z)V
    .locals 1

    const-string v0, "link"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "primaryImage"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/i4;->a:Lio/branch/search/BranchBaseLinkResult;

    iput-object p2, p0, Lio/branch/search/i4;->b:Ljava/lang/String;

    iput-object p3, p0, Lio/branch/search/i4;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lio/branch/search/i4;->d:Z

    iput-object p5, p0, Lio/branch/search/i4;->e:Lio/branch/search/ui/Image;

    iput-object p6, p0, Lio/branch/search/i4;->f:Lio/branch/search/ui/Image;

    iput-boolean p7, p0, Lio/branch/search/i4;->g:Z

    return-void
.end method


# virtual methods
.method public final a()Lio/branch/search/BranchBaseLinkResult;
    .locals 1

    iget-object v0, p0, Lio/branch/search/i4;->a:Lio/branch/search/BranchBaseLinkResult;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lio/branch/search/i4;

    if-eqz v0, :cond_0

    check-cast p1, Lio/branch/search/i4;

    iget-object v0, p0, Lio/branch/search/i4;->a:Lio/branch/search/BranchBaseLinkResult;

    iget-object v1, p1, Lio/branch/search/i4;->a:Lio/branch/search/BranchBaseLinkResult;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/branch/search/i4;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/branch/search/i4;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/branch/search/i4;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/branch/search/i4;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/branch/search/i4;->isAd()Z

    move-result v0

    invoke-virtual {p1}, Lio/branch/search/i4;->isAd()Z

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lio/branch/search/i4;->getPrimaryImage()Lio/branch/search/ui/Image;

    move-result-object v0

    invoke-virtual {p1}, Lio/branch/search/i4;->getPrimaryImage()Lio/branch/search/ui/Image;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/branch/search/i4;->getSecondaryImage()Lio/branch/search/ui/Image;

    move-result-object v0

    invoke-virtual {p1}, Lio/branch/search/i4;->getSecondaryImage()Lio/branch/search/ui/Image;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/branch/search/i4;->g:Z

    iget-boolean p1, p1, Lio/branch/search/i4;->g:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/branch/search/i4;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryImage()Lio/branch/search/ui/Image;
    .locals 1

    iget-object v0, p0, Lio/branch/search/i4;->e:Lio/branch/search/ui/Image;

    return-object v0
.end method

.method public getSecondaryImage()Lio/branch/search/ui/Image;
    .locals 1

    iget-object v0, p0, Lio/branch/search/i4;->f:Lio/branch/search/ui/Image;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/branch/search/i4;->b:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lio/branch/search/i4;->a:Lio/branch/search/BranchBaseLinkResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lio/branch/search/i4;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lio/branch/search/i4;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lio/branch/search/i4;->isAd()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    move v2, v3

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lio/branch/search/i4;->getPrimaryImage()Lio/branch/search/ui/Image;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_4
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lio/branch/search/i4;->getSecondaryImage()Lio/branch/search/ui/Image;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lio/branch/search/i4;->g:Z

    if-eqz v1, :cond_6

    move v1, v3

    :cond_6
    add-int/2addr v0, v1

    return v0
.end method

.method public isAd()Z
    .locals 1

    iget-boolean v0, p0, Lio/branch/search/i4;->d:Z

    return v0
.end method

.method public open(Landroid/content/Context;)Lio/branch/search/BranchError;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/i4;->a:Lio/branch/search/BranchBaseLinkResult;

    invoke-virtual {v0, p1}, Lio/branch/search/BranchBaseLinkResult;->open(Landroid/content/Context;)Lio/branch/search/BranchSearchError;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lio/branch/search/BranchError;->Companion:Lio/branch/search/BranchError$c;

    invoke-virtual {v0, p1}, Lio/branch/search/BranchError$c;->a(Lio/branch/search/BranchSearchError;)Lio/branch/search/BranchError;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LinkEntity(link="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/i4;->a:Lio/branch/search/BranchBaseLinkResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/branch/search/i4;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/branch/search/i4;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/branch/search/i4;->isAd()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", primaryImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/branch/search/i4;->getPrimaryImage()Lio/branch/search/ui/Image;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", secondaryImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/branch/search/i4;->getSecondaryImage()Lio/branch/search/ui/Image;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", retrievedLocally="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/branch/search/i4;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/i4;->a:Lio/branch/search/BranchBaseLinkResult;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lio/branch/search/i4;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/i4;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lio/branch/search/i4;->d:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lio/branch/search/i4;->e:Lio/branch/search/ui/Image;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lio/branch/search/i4;->f:Lio/branch/search/ui/Image;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean p2, p0, Lio/branch/search/i4;->g:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
