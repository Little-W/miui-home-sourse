.class public final Lio/branch/search/ui/KBranchZeroStateResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final containers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/branch/search/ui/BranchContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/branch/search/ui/BranchContainer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "containers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/ui/KBranchZeroStateResult;->containers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/ui/BranchContainer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/ui/KBranchZeroStateResult;->containers:Ljava/util/List;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lio/branch/search/ui/KBranchZeroStateResult;

    if-eqz v0, :cond_0

    check-cast p1, Lio/branch/search/ui/KBranchZeroStateResult;

    iget-object p0, p0, Lio/branch/search/ui/KBranchZeroStateResult;->containers:Ljava/util/List;

    iget-object p1, p1, Lio/branch/search/ui/KBranchZeroStateResult;->containers:Ljava/util/List;

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

.method public final getContainers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/ui/BranchContainer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/ui/KBranchZeroStateResult;->containers:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lio/branch/search/ui/KBranchZeroStateResult;->containers:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KBranchZeroStateResult(containers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/branch/search/ui/KBranchZeroStateResult;->containers:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
