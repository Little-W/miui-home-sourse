.class public final Lio/branch/search/u4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/branch/search/l;

.field public final b:Lio/branch/search/m0;

.field public final c:Lio/branch/search/internal/ui/AdLogic;

.field public final d:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lio/branch/search/u4;",
            "Ljava/util/List<",
            "+",
            "Lio/branch/search/BranchBaseAppResult<",
            "+",
            "Lio/branch/search/BranchBaseLinkResult;",
            ">;>;",
            "Ljava/util/List<",
            "Lio/branch/search/BranchBaseAppResult<",
            "+",
            "Lio/branch/search/BranchBaseLinkResult;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final e:Lio/branch/search/o5;

.field public final f:Lio/branch/search/t4;

.field public g:Z


# direct methods
.method public constructor <init>(Lio/branch/search/l;Lio/branch/search/m0;Lio/branch/search/internal/ui/AdLogic;Lkotlin/jvm/functions/Function2;Lio/branch/search/o5;Lio/branch/search/t4;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/l;",
            "Lio/branch/search/m0;",
            "Lio/branch/search/internal/ui/AdLogic;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/branch/search/u4;",
            "-",
            "Ljava/util/List<",
            "+",
            "Lio/branch/search/BranchBaseAppResult<",
            "+",
            "Lio/branch/search/BranchBaseLinkResult;",
            ">;>;+",
            "Ljava/util/List<",
            "+",
            "Lio/branch/search/BranchBaseAppResult<",
            "+",
            "Lio/branch/search/BranchBaseLinkResult;",
            ">;>;>;",
            "Lio/branch/search/o5;",
            "Lio/branch/search/t4;",
            "Z)V"
        }
    .end annotation

    const-string v0, "branchSearch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adLogic"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prepareAds"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextDelegate"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "api"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/u4;->a:Lio/branch/search/l;

    iput-object p2, p0, Lio/branch/search/u4;->b:Lio/branch/search/m0;

    iput-object p3, p0, Lio/branch/search/u4;->c:Lio/branch/search/internal/ui/AdLogic;

    iput-object p4, p0, Lio/branch/search/u4;->d:Lkotlin/jvm/functions/Function2;

    iput-object p5, p0, Lio/branch/search/u4;->e:Lio/branch/search/o5;

    iput-object p6, p0, Lio/branch/search/u4;->f:Lio/branch/search/t4;

    iput-boolean p7, p0, Lio/branch/search/u4;->g:Z

    return-void
.end method

.method public synthetic constructor <init>(Lio/branch/search/l;Lio/branch/search/m0;Lio/branch/search/internal/ui/AdLogic;Lkotlin/jvm/functions/Function2;Lio/branch/search/o5;Lio/branch/search/t4;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v8, v0

    goto :goto_0

    :cond_0
    move/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lio/branch/search/u4;-><init>(Lio/branch/search/l;Lio/branch/search/m0;Lio/branch/search/internal/ui/AdLogic;Lkotlin/jvm/functions/Function2;Lio/branch/search/o5;Lio/branch/search/t4;Z)V

    return-void
.end method


# virtual methods
.method public final a()Lio/branch/search/internal/ui/AdLogic;
    .locals 0

    iget-object p0, p0, Lio/branch/search/u4;->c:Lio/branch/search/internal/ui/AdLogic;

    return-object p0
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/branch/search/u4;->g:Z

    return-void
.end method

.method public final b()Lio/branch/search/t4;
    .locals 0

    iget-object p0, p0, Lio/branch/search/u4;->f:Lio/branch/search/t4;

    return-object p0
.end method

.method public final c()Lio/branch/search/l;
    .locals 0

    iget-object p0, p0, Lio/branch/search/u4;->a:Lio/branch/search/l;

    return-object p0
.end method

.method public final d()Lio/branch/search/o5;
    .locals 0

    iget-object p0, p0, Lio/branch/search/u4;->e:Lio/branch/search/o5;

    return-object p0
.end method

.method public final e()Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lio/branch/search/u4;",
            "Ljava/util/List<",
            "+",
            "Lio/branch/search/BranchBaseAppResult<",
            "+",
            "Lio/branch/search/BranchBaseLinkResult;",
            ">;>;",
            "Ljava/util/List<",
            "Lio/branch/search/BranchBaseAppResult<",
            "+",
            "Lio/branch/search/BranchBaseLinkResult;",
            ">;>;>;"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/u4;->d:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lio/branch/search/u4;

    if-eqz v0, :cond_0

    check-cast p1, Lio/branch/search/u4;

    iget-object v0, p0, Lio/branch/search/u4;->a:Lio/branch/search/l;

    iget-object v1, p1, Lio/branch/search/u4;->a:Lio/branch/search/l;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/u4;->b:Lio/branch/search/m0;

    iget-object v1, p1, Lio/branch/search/u4;->b:Lio/branch/search/m0;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/u4;->c:Lio/branch/search/internal/ui/AdLogic;

    iget-object v1, p1, Lio/branch/search/u4;->c:Lio/branch/search/internal/ui/AdLogic;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/u4;->d:Lkotlin/jvm/functions/Function2;

    iget-object v1, p1, Lio/branch/search/u4;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/u4;->e:Lio/branch/search/o5;

    iget-object v1, p1, Lio/branch/search/u4;->e:Lio/branch/search/o5;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/u4;->f:Lio/branch/search/t4;

    iget-object v1, p1, Lio/branch/search/u4;->f:Lio/branch/search/t4;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lio/branch/search/u4;->g:Z

    iget-boolean p1, p1, Lio/branch/search/u4;->g:Z

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final f()Z
    .locals 0

    iget-boolean p0, p0, Lio/branch/search/u4;->g:Z

    return p0
.end method

.method public final g()Lio/branch/search/m0;
    .locals 0

    iget-object p0, p0, Lio/branch/search/u4;->b:Lio/branch/search/m0;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lio/branch/search/u4;->a:Lio/branch/search/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/u4;->b:Lio/branch/search/m0;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/u4;->c:Lio/branch/search/internal/ui/AdLogic;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/u4;->d:Lkotlin/jvm/functions/Function2;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/u4;->e:Lio/branch/search/o5;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/u4;->f:Lio/branch/search/t4;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lio/branch/search/u4;->g:Z

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    :cond_6
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SkeletonVisitor(branchSearch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/u4;->a:Lio/branch/search/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", virtualRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/u4;->b:Lio/branch/search/m0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adLogic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/u4;->c:Lio/branch/search/internal/ui/AdLogic;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", prepareAds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/u4;->d:Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contextDelegate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/u4;->e:Lio/branch/search/o5;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", api="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/u4;->f:Lio/branch/search/t4;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", processedAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lio/branch/search/u4;->g:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
