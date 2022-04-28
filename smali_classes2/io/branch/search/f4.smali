.class public final Lio/branch/search/f4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/branch/search/ui/BranchEntity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/f4$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/branch/search/f4;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lio/branch/search/BranchBaseAppResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/branch/search/BranchBaseAppResult<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Lio/branch/search/ui/Image;

.field public final f:Lio/branch/search/ui/Image;

.field public final g:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/branch/search/f4$a;

    invoke-direct {v0}, Lio/branch/search/f4$a;-><init>()V

    sput-object v0, Lio/branch/search/f4;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/BranchBaseAppResult;Ljava/lang/String;Ljava/lang/String;ZLio/branch/search/ui/Image;Lio/branch/search/ui/Image;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/BranchBaseAppResult<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lio/branch/search/ui/Image;",
            "Lio/branch/search/ui/Image;",
            "Z)V"
        }
    .end annotation

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "primaryImage"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/f4;->a:Lio/branch/search/BranchBaseAppResult;

    iput-object p2, p0, Lio/branch/search/f4;->b:Ljava/lang/String;

    iput-object p3, p0, Lio/branch/search/f4;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lio/branch/search/f4;->d:Z

    iput-object p5, p0, Lio/branch/search/f4;->e:Lio/branch/search/ui/Image;

    iput-object p6, p0, Lio/branch/search/f4;->f:Lio/branch/search/ui/Image;

    iput-boolean p7, p0, Lio/branch/search/f4;->g:Z

    return-void
.end method

.method public synthetic constructor <init>(Lio/branch/search/BranchBaseAppResult;Ljava/lang/String;Ljava/lang/String;ZLio/branch/search/ui/Image;Lio/branch/search/ui/Image;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, p4

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lio/branch/search/f4;-><init>(Lio/branch/search/BranchBaseAppResult;Ljava/lang/String;Ljava/lang/String;ZLio/branch/search/ui/Image;Lio/branch/search/ui/Image;Z)V

    return-void
.end method


# virtual methods
.method public final a()Lio/branch/search/BranchBaseAppResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/branch/search/BranchBaseAppResult<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/f4;->a:Lio/branch/search/BranchBaseAppResult;

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

    instance-of v0, p1, Lio/branch/search/f4;

    if-eqz v0, :cond_0

    check-cast p1, Lio/branch/search/f4;

    iget-object v0, p0, Lio/branch/search/f4;->a:Lio/branch/search/BranchBaseAppResult;

    iget-object v1, p1, Lio/branch/search/f4;->a:Lio/branch/search/BranchBaseAppResult;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/branch/search/f4;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/branch/search/f4;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/branch/search/f4;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/branch/search/f4;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/branch/search/f4;->isAd()Z

    move-result v0

    invoke-virtual {p1}, Lio/branch/search/f4;->isAd()Z

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lio/branch/search/f4;->getPrimaryImage()Lio/branch/search/ui/Image;

    move-result-object v0

    invoke-virtual {p1}, Lio/branch/search/f4;->getPrimaryImage()Lio/branch/search/ui/Image;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/branch/search/f4;->getSecondaryImage()Lio/branch/search/ui/Image;

    move-result-object v0

    invoke-virtual {p1}, Lio/branch/search/f4;->getSecondaryImage()Lio/branch/search/ui/Image;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/branch/search/f4;->g:Z

    iget-boolean p1, p1, Lio/branch/search/f4;->g:Z

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

    iget-object v0, p0, Lio/branch/search/f4;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryImage()Lio/branch/search/ui/Image;
    .locals 1

    iget-object v0, p0, Lio/branch/search/f4;->e:Lio/branch/search/ui/Image;

    return-object v0
.end method

.method public getSecondaryImage()Lio/branch/search/ui/Image;
    .locals 1

    iget-object v0, p0, Lio/branch/search/f4;->f:Lio/branch/search/ui/Image;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/branch/search/f4;->b:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lio/branch/search/f4;->a:Lio/branch/search/BranchBaseAppResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lio/branch/search/f4;->getTitle()Ljava/lang/String;

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

    invoke-virtual {p0}, Lio/branch/search/f4;->getDescription()Ljava/lang/String;

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

    invoke-virtual {p0}, Lio/branch/search/f4;->isAd()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    move v2, v3

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lio/branch/search/f4;->getPrimaryImage()Lio/branch/search/ui/Image;

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

    invoke-virtual {p0}, Lio/branch/search/f4;->getSecondaryImage()Lio/branch/search/ui/Image;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lio/branch/search/f4;->g:Z

    if-eqz v1, :cond_6

    move v1, v3

    :cond_6
    add-int/2addr v0, v1

    return v0
.end method

.method public isAd()Z
    .locals 1

    iget-boolean v0, p0, Lio/branch/search/f4;->d:Z

    return v0
.end method

.method public open(Landroid/content/Context;)Lio/branch/search/BranchError;
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/f4;->a:Lio/branch/search/BranchBaseAppResult;

    instance-of v1, v0, Lio/branch/search/BranchLocalAppResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lio/branch/search/BranchLocalAppResult;

    invoke-virtual {v0, p1}, Lio/branch/search/BranchLocalAppResult;->open(Landroid/content/Context;)Lio/branch/search/BranchSearchError;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lio/branch/search/BranchError;->Companion:Lio/branch/search/BranchError$c;

    invoke-virtual {v0, p1}, Lio/branch/search/BranchError$c;->a(Lio/branch/search/BranchSearchError;)Lio/branch/search/BranchError;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_1
    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lio/branch/search/BranchConfiguration;->j()Lio/branch/search/IBranchIntentHandler;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v3, p0, Lio/branch/search/f4;->a:Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {v3}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "app.packageName"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lio/branch/search/f4;->a:Lio/branch/search/BranchBaseAppResult;

    iget-object v4, v4, Lio/branch/search/BranchBaseAppResult;->b:Landroid/os/UserHandle;

    const-string v5, "app.user"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, p1, v3, v4}, Lio/branch/search/IBranchIntentHandler;->openApp(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lio/branch/search/f4;->a:Lio/branch/search/BranchBaseAppResult;

    const-string v1, "launch_intent"

    invoke-virtual {v0, p1, v1}, Lio/branch/search/l;->a(Lio/branch/search/AnalyticsEntity;Ljava/lang/String;)V

    new-instance p1, Lio/branch/search/o3;

    iget-object v1, p0, Lio/branch/search/f4;->a:Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {v1}, Lio/branch/search/AnalyticsEntity;->getSessionId()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lio/branch/search/f4;->a:Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {v1}, Lio/branch/search/AnalyticsEntity;->getRequestId()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v1, p0, Lio/branch/search/f4;->a:Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {v1}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v8

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lio/branch/search/o3;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    iget-object v0, v0, Lio/branch/search/l;->d:Lio/branch/search/internal/interfaces/LocalInterface;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lio/branch/search/internal/interfaces/LocalInterface;->a(Lio/branch/search/o3;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lio/branch/search/f4;->a:Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {p1}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppEntity.open"

    invoke-static {v0, p1}, Lio/branch/search/b0;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lio/branch/search/BranchError;->Companion:Lio/branch/search/BranchError$c;

    new-instance v0, Lio/branch/search/BranchSearchError;

    sget-object v1, Lio/branch/search/BranchSearchError$ERR_CODE;->l:Lio/branch/search/BranchSearchError$ERR_CODE;

    invoke-direct {v0, v1}, Lio/branch/search/BranchSearchError;-><init>(Lio/branch/search/BranchSearchError$ERR_CODE;)V

    invoke-virtual {p1, v0}, Lio/branch/search/BranchError$c;->a(Lio/branch/search/BranchSearchError;)Lio/branch/search/BranchError;

    move-result-object v2

    :cond_3
    :goto_1
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppEntity(app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/f4;->a:Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/branch/search/f4;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/branch/search/f4;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/branch/search/f4;->isAd()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", primaryImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/branch/search/f4;->getPrimaryImage()Lio/branch/search/ui/Image;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", secondaryImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/branch/search/f4;->getSecondaryImage()Lio/branch/search/ui/Image;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", retrievedLocally="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/branch/search/f4;->g:Z

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

    iget-object v0, p0, Lio/branch/search/f4;->a:Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lio/branch/search/f4;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/f4;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lio/branch/search/f4;->d:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lio/branch/search/f4;->e:Lio/branch/search/ui/Image;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lio/branch/search/f4;->f:Lio/branch/search/ui/Image;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean p2, p0, Lio/branch/search/f4;->g:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
