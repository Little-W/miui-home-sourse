.class public final Lio/branch/search/m4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/branch/search/l;

.field public final b:Lio/branch/search/c0;

.field public final c:Lio/branch/search/internal/ui/AdLogic;

.field public final d:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lio/branch/search/m4;",
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

.field public e:Z


# direct methods
.method public constructor <init>(Lio/branch/search/l;Lio/branch/search/c0;Lio/branch/search/internal/ui/AdLogic;Lkotlin/jvm/functions/Function2;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/l;",
            "Lio/branch/search/c0;",
            "Lio/branch/search/internal/ui/AdLogic;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/branch/search/m4;",
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
            ">;>;>;Z)V"
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/m4;->a:Lio/branch/search/l;

    iput-object p2, p0, Lio/branch/search/m4;->b:Lio/branch/search/c0;

    iput-object p3, p0, Lio/branch/search/m4;->c:Lio/branch/search/internal/ui/AdLogic;

    iput-object p4, p0, Lio/branch/search/m4;->d:Lkotlin/jvm/functions/Function2;

    iput-boolean p5, p0, Lio/branch/search/m4;->e:Z

    return-void
.end method

.method public synthetic constructor <init>(Lio/branch/search/l;Lio/branch/search/c0;Lio/branch/search/internal/ui/AdLogic;Lkotlin/jvm/functions/Function2;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/branch/search/m4;-><init>(Lio/branch/search/l;Lio/branch/search/c0;Lio/branch/search/internal/ui/AdLogic;Lkotlin/jvm/functions/Function2;Z)V

    return-void
.end method


# virtual methods
.method public final a()Lio/branch/search/internal/ui/AdLogic;
    .locals 1

    iget-object v0, p0, Lio/branch/search/m4;->c:Lio/branch/search/internal/ui/AdLogic;

    return-object v0
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/branch/search/m4;->e:Z

    return-void
.end method

.method public final b()Lio/branch/search/l;
    .locals 1

    iget-object v0, p0, Lio/branch/search/m4;->a:Lio/branch/search/l;

    return-object v0
.end method

.method public final c()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lio/branch/search/m4;",
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

    iget-object v0, p0, Lio/branch/search/m4;->d:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lio/branch/search/m4;->e:Z

    return v0
.end method

.method public final e()Lio/branch/search/c0;
    .locals 1

    iget-object v0, p0, Lio/branch/search/m4;->b:Lio/branch/search/c0;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lio/branch/search/m4;

    if-eqz v0, :cond_0

    check-cast p1, Lio/branch/search/m4;

    iget-object v0, p0, Lio/branch/search/m4;->a:Lio/branch/search/l;

    iget-object v1, p1, Lio/branch/search/m4;->a:Lio/branch/search/l;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/m4;->b:Lio/branch/search/c0;

    iget-object v1, p1, Lio/branch/search/m4;->b:Lio/branch/search/c0;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/m4;->c:Lio/branch/search/internal/ui/AdLogic;

    iget-object v1, p1, Lio/branch/search/m4;->c:Lio/branch/search/internal/ui/AdLogic;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/m4;->d:Lkotlin/jvm/functions/Function2;

    iget-object v1, p1, Lio/branch/search/m4;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/branch/search/m4;->e:Z

    iget-boolean p1, p1, Lio/branch/search/m4;->e:Z

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

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lio/branch/search/m4;->a:Lio/branch/search/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/m4;->b:Lio/branch/search/c0;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/m4;->c:Lio/branch/search/internal/ui/AdLogic;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/m4;->d:Lkotlin/jvm/functions/Function2;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lio/branch/search/m4;->e:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SkeletonVisitor(branchSearch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/m4;->a:Lio/branch/search/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", virtualRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/m4;->b:Lio/branch/search/c0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adLogic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/m4;->c:Lio/branch/search/internal/ui/AdLogic;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", prepareAds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/m4;->d:Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", processedAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/branch/search/m4;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
