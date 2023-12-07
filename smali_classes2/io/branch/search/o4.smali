.class public final Lio/branch/search/o4;
.super Ljava/lang/Object;

# interfaces
.implements Lio/branch/search/ui/BranchEntity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/o4$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/branch/search/o4;",
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

.field public final e:Lio/branch/search/ui/ImageLoadingStrategy;

.field public final f:Lio/branch/search/ui/ImageLoadingStrategy;

.field public final g:Z

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Lio/branch/search/ui/BranchExtra;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/branch/search/o4$a;

    invoke-direct {v0}, Lio/branch/search/o4$a;-><init>()V

    sput-object v0, Lio/branch/search/o4;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/BranchBaseAppResult;Ljava/lang/String;Ljava/lang/String;ZLio/branch/search/ui/ImageLoadingStrategy;Lio/branch/search/ui/ImageLoadingStrategy;ZLjava/lang/String;Ljava/lang/String;Lio/branch/search/ui/BranchExtra;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/BranchBaseAppResult<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lio/branch/search/ui/ImageLoadingStrategy;",
            "Lio/branch/search/ui/ImageLoadingStrategy;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/branch/search/ui/BranchExtra;",
            ")V"
        }
    .end annotation

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "primaryImage"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/o4;->a:Lio/branch/search/BranchBaseAppResult;

    iput-object p2, p0, Lio/branch/search/o4;->b:Ljava/lang/String;

    iput-object p3, p0, Lio/branch/search/o4;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lio/branch/search/o4;->d:Z

    iput-object p5, p0, Lio/branch/search/o4;->e:Lio/branch/search/ui/ImageLoadingStrategy;

    iput-object p6, p0, Lio/branch/search/o4;->f:Lio/branch/search/ui/ImageLoadingStrategy;

    iput-boolean p7, p0, Lio/branch/search/o4;->g:Z

    iput-object p8, p0, Lio/branch/search/o4;->h:Ljava/lang/String;

    iput-object p9, p0, Lio/branch/search/o4;->i:Ljava/lang/String;

    iput-object p10, p0, Lio/branch/search/o4;->j:Lio/branch/search/ui/BranchExtra;

    return-void
.end method

.method public synthetic constructor <init>(Lio/branch/search/BranchBaseAppResult;Ljava/lang/String;Ljava/lang/String;ZLio/branch/search/ui/ImageLoadingStrategy;Lio/branch/search/ui/ImageLoadingStrategy;ZLjava/lang/String;Ljava/lang/String;Lio/branch/search/ui/BranchExtra;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    and-int/lit8 v0, p11, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v5, v0

    goto :goto_0

    :cond_0
    move/from16 v5, p4

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lio/branch/search/o4;-><init>(Lio/branch/search/BranchBaseAppResult;Ljava/lang/String;Ljava/lang/String;ZLio/branch/search/ui/ImageLoadingStrategy;Lio/branch/search/ui/ImageLoadingStrategy;ZLjava/lang/String;Ljava/lang/String;Lio/branch/search/ui/BranchExtra;)V

    return-void
.end method


# virtual methods
.method public final a()Lio/branch/search/BranchBaseAppResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/branch/search/BranchBaseAppResult<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/o4;->a:Lio/branch/search/BranchBaseAppResult;

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lio/branch/search/o4;

    if-eqz v0, :cond_0

    check-cast p1, Lio/branch/search/o4;

    iget-object v0, p0, Lio/branch/search/o4;->a:Lio/branch/search/BranchBaseAppResult;

    iget-object v1, p1, Lio/branch/search/o4;->a:Lio/branch/search/BranchBaseAppResult;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/branch/search/o4;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/branch/search/o4;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/branch/search/o4;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/branch/search/o4;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/branch/search/o4;->isAd()Z

    move-result v0

    invoke-virtual {p1}, Lio/branch/search/o4;->isAd()Z

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lio/branch/search/o4;->getPrimaryImage()Lio/branch/search/ui/ImageLoadingStrategy;

    move-result-object v0

    invoke-virtual {p1}, Lio/branch/search/o4;->getPrimaryImage()Lio/branch/search/ui/ImageLoadingStrategy;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/branch/search/o4;->getSecondaryImage()Lio/branch/search/ui/ImageLoadingStrategy;

    move-result-object v0

    invoke-virtual {p1}, Lio/branch/search/o4;->getSecondaryImage()Lio/branch/search/ui/ImageLoadingStrategy;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/branch/search/o4;->g:Z

    iget-boolean v1, p1, Lio/branch/search/o4;->g:Z

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lio/branch/search/o4;->getContainerType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/branch/search/o4;->getContainerType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/branch/search/o4;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/branch/search/o4;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/branch/search/o4;->getBranchExtra()Lio/branch/search/ui/BranchExtra;

    move-result-object p0

    invoke-virtual {p1}, Lio/branch/search/o4;->getBranchExtra()Lio/branch/search/ui/BranchExtra;

    move-result-object p1

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

.method public getBranchExtra()Lio/branch/search/ui/BranchExtra;
    .locals 0

    iget-object p0, p0, Lio/branch/search/o4;->j:Lio/branch/search/ui/BranchExtra;

    return-object p0
.end method

.method public getContainerType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/branch/search/o4;->h:Ljava/lang/String;

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/branch/search/o4;->i:Ljava/lang/String;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/branch/search/o4;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getPrimaryImage()Lio/branch/search/ui/ImageLoadingStrategy;
    .locals 0

    iget-object p0, p0, Lio/branch/search/o4;->e:Lio/branch/search/ui/ImageLoadingStrategy;

    return-object p0
.end method

.method public getSecondaryImage()Lio/branch/search/ui/ImageLoadingStrategy;
    .locals 0

    iget-object p0, p0, Lio/branch/search/o4;->f:Lio/branch/search/ui/ImageLoadingStrategy;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/branch/search/o4;->b:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lio/branch/search/o4;->a:Lio/branch/search/BranchBaseAppResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lio/branch/search/o4;->getTitle()Ljava/lang/String;

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

    invoke-virtual {p0}, Lio/branch/search/o4;->getDescription()Ljava/lang/String;

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

    invoke-virtual {p0}, Lio/branch/search/o4;->isAd()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    move v2, v3

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lio/branch/search/o4;->getPrimaryImage()Lio/branch/search/ui/ImageLoadingStrategy;

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

    invoke-virtual {p0}, Lio/branch/search/o4;->getSecondaryImage()Lio/branch/search/ui/ImageLoadingStrategy;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_5
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lio/branch/search/o4;->g:Z

    if-eqz v2, :cond_6

    move v2, v3

    :cond_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lio/branch/search/o4;->getContainerType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_7
    move v2, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lio/branch/search/o4;->getContentType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_8
    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lio/branch/search/o4;->getBranchExtra()Lio/branch/search/ui/BranchExtra;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_9
    add-int/2addr v0, v1

    return v0
.end method

.method public isAd()Z
    .locals 0

    iget-boolean p0, p0, Lio/branch/search/o4;->d:Z

    return p0
.end method

.method public open(Landroid/content/Context;)Lio/branch/search/BranchError;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lio/branch/search/ui/BranchEntity$DefaultImpls;->open(Lio/branch/search/ui/BranchEntity;Landroid/content/Context;)Lio/branch/search/BranchError;

    move-result-object p0

    return-object p0
.end method

.method public open(Landroid/content/Context;Lio/branch/search/IBranchIntentHandler;)Lio/branch/search/BranchError;
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/o4;->a:Lio/branch/search/BranchBaseAppResult;

    instance-of v1, v0, Lio/branch/search/BranchLocalAppResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lio/branch/search/BranchLocalAppResult;

    invoke-virtual {v0, p1}, Lio/branch/search/BranchLocalAppResult;->open(Landroid/content/Context;)Lio/branch/search/BranchSearchError;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lio/branch/search/BranchError;->Companion:Lio/branch/search/BranchError$c;

    invoke-virtual {p1, p0}, Lio/branch/search/BranchError$c;->a(Lio/branch/search/BranchSearchError;)Lio/branch/search/BranchError;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_1
    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    iget-object v1, p0, Lio/branch/search/o4;->a:Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {v1}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "app.packageName"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lio/branch/search/o4;->a:Lio/branch/search/BranchBaseAppResult;

    iget-object v3, v3, Lio/branch/search/BranchBaseAppResult;->b:Landroid/os/UserHandle;

    const-string v4, "app.user"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1, v1, v3}, Lio/branch/search/IBranchIntentHandler;->openApp(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lio/branch/search/o4;->a:Lio/branch/search/BranchBaseAppResult;

    const-string p2, "launch_intent"

    invoke-virtual {v0, p1, p2}, Lio/branch/search/l;->a(Lio/branch/search/AnalyticsEntity;Ljava/lang/String;)V

    new-instance p1, Lio/branch/search/b4;

    iget-object p2, p0, Lio/branch/search/o4;->a:Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {p2}, Lio/branch/search/AnalyticsEntity;->getSessionId()Ljava/lang/String;

    move-result-object v4

    iget-object p2, p0, Lio/branch/search/o4;->a:Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {p2}, Lio/branch/search/AnalyticsEntity;->getRequestId()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object p0, p0, Lio/branch/search/o4;->a:Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {p0}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v8

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lio/branch/search/b4;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    iget-object p0, v0, Lio/branch/search/l;->e:Lio/branch/search/internal/interfaces/LocalInterface;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Lio/branch/search/internal/interfaces/LocalInterface;->a(Lio/branch/search/b4;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lio/branch/search/o4;->a:Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {p0}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppEntity.open"

    invoke-static {p1, p0}, Lio/branch/search/f0;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lio/branch/search/BranchError;->Companion:Lio/branch/search/BranchError$c;

    new-instance p1, Lio/branch/search/BranchSearchError;

    sget-object p2, Lio/branch/search/BranchSearchError$ERR_CODE;->l:Lio/branch/search/BranchSearchError$ERR_CODE;

    invoke-direct {p1, p2}, Lio/branch/search/BranchSearchError;-><init>(Lio/branch/search/BranchSearchError$ERR_CODE;)V

    invoke-virtual {p0, p1}, Lio/branch/search/BranchError$c;->a(Lio/branch/search/BranchSearchError;)Lio/branch/search/BranchError;

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

    iget-object v1, p0, Lio/branch/search/o4;->a:Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/branch/search/o4;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/branch/search/o4;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/branch/search/o4;->isAd()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", primaryImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/branch/search/o4;->getPrimaryImage()Lio/branch/search/ui/ImageLoadingStrategy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", secondaryImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/branch/search/o4;->getSecondaryImage()Lio/branch/search/ui/ImageLoadingStrategy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", retrievedLocally="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/branch/search/o4;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", containerType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/branch/search/o4;->getContainerType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/branch/search/o4;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", branchExtra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/branch/search/o4;->getBranchExtra()Lio/branch/search/ui/BranchExtra;

    move-result-object p0

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

    iget-object v0, p0, Lio/branch/search/o4;->a:Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lio/branch/search/o4;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/o4;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lio/branch/search/o4;->d:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lio/branch/search/o4;->e:Lio/branch/search/ui/ImageLoadingStrategy;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lio/branch/search/o4;->f:Lio/branch/search/ui/ImageLoadingStrategy;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Lio/branch/search/o4;->g:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lio/branch/search/o4;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/o4;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lio/branch/search/o4;->j:Lio/branch/search/ui/BranchExtra;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
