.class public Lorg/ahocorasick/interval/IntervalNode;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ahocorasick/interval/IntervalNode$Direction;
    }
.end annotation


# instance fields
.field private intervals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ahocorasick/interval/Intervalable;",
            ">;"
        }
    .end annotation
.end field

.field private left:Lorg/ahocorasick/interval/IntervalNode;

.field private point:I

.field private right:Lorg/ahocorasick/interval/IntervalNode;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/ahocorasick/interval/Intervalable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ahocorasick/interval/IntervalNode;->left:Lorg/ahocorasick/interval/IntervalNode;

    iput-object v0, p0, Lorg/ahocorasick/interval/IntervalNode;->right:Lorg/ahocorasick/interval/IntervalNode;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ahocorasick/interval/IntervalNode;->intervals:Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/ahocorasick/interval/IntervalNode;->determineMedian(Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lorg/ahocorasick/interval/IntervalNode;->point:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ahocorasick/interval/Intervalable;

    invoke-interface {v2}, Lorg/ahocorasick/interval/Intervalable;->getEnd()I

    move-result v3

    iget v4, p0, Lorg/ahocorasick/interval/IntervalNode;->point:I

    if-ge v3, v4, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Lorg/ahocorasick/interval/Intervalable;->getStart()I

    move-result v3

    iget v4, p0, Lorg/ahocorasick/interval/IntervalNode;->point:I

    if-le v3, v4, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/ahocorasick/interval/IntervalNode;->intervals:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    new-instance p1, Lorg/ahocorasick/interval/IntervalNode;

    invoke-direct {p1, v0}, Lorg/ahocorasick/interval/IntervalNode;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lorg/ahocorasick/interval/IntervalNode;->left:Lorg/ahocorasick/interval/IntervalNode;

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    new-instance p1, Lorg/ahocorasick/interval/IntervalNode;

    invoke-direct {p1, v1}, Lorg/ahocorasick/interval/IntervalNode;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lorg/ahocorasick/interval/IntervalNode;->right:Lorg/ahocorasick/interval/IntervalNode;

    :cond_4
    return-void
.end method


# virtual methods
.method protected addToOverlaps(Lorg/ahocorasick/interval/Intervalable;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ahocorasick/interval/Intervalable;",
            "Ljava/util/List<",
            "Lorg/ahocorasick/interval/Intervalable;",
            ">;",
            "Ljava/util/List<",
            "Lorg/ahocorasick/interval/Intervalable;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/ahocorasick/interval/Intervalable;

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected checkForOverlaps(Lorg/ahocorasick/interval/Intervalable;Lorg/ahocorasick/interval/IntervalNode$Direction;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ahocorasick/interval/Intervalable;",
            "Lorg/ahocorasick/interval/IntervalNode$Direction;",
            ")",
            "Ljava/util/List<",
            "Lorg/ahocorasick/interval/Intervalable;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lorg/ahocorasick/interval/IntervalNode;->intervals:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ahocorasick/interval/Intervalable;

    sget-object v2, Lorg/ahocorasick/interval/IntervalNode$1;->$SwitchMap$org$ahocorasick$interval$IntervalNode$Direction:[I

    invoke-virtual {p2}, Lorg/ahocorasick/interval/IntervalNode$Direction;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lorg/ahocorasick/interval/Intervalable;->getEnd()I

    move-result v2

    invoke-interface {p1}, Lorg/ahocorasick/interval/Intervalable;->getStart()I

    move-result v3

    if-lt v2, v3, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Lorg/ahocorasick/interval/Intervalable;->getStart()I

    move-result v2

    invoke-interface {p1}, Lorg/ahocorasick/interval/Intervalable;->getEnd()I

    move-result v3

    if-gt v2, v3, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method protected checkForOverlapsToTheLeft(Lorg/ahocorasick/interval/Intervalable;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ahocorasick/interval/Intervalable;",
            ")",
            "Ljava/util/List<",
            "Lorg/ahocorasick/interval/Intervalable;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/ahocorasick/interval/IntervalNode$Direction;->LEFT:Lorg/ahocorasick/interval/IntervalNode$Direction;

    invoke-virtual {p0, p1, v0}, Lorg/ahocorasick/interval/IntervalNode;->checkForOverlaps(Lorg/ahocorasick/interval/Intervalable;Lorg/ahocorasick/interval/IntervalNode$Direction;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected checkForOverlapsToTheRight(Lorg/ahocorasick/interval/Intervalable;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ahocorasick/interval/Intervalable;",
            ")",
            "Ljava/util/List<",
            "Lorg/ahocorasick/interval/Intervalable;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/ahocorasick/interval/IntervalNode$Direction;->RIGHT:Lorg/ahocorasick/interval/IntervalNode$Direction;

    invoke-virtual {p0, p1, v0}, Lorg/ahocorasick/interval/IntervalNode;->checkForOverlaps(Lorg/ahocorasick/interval/Intervalable;Lorg/ahocorasick/interval/IntervalNode$Direction;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public determineMedian(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/ahocorasick/interval/Intervalable;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, -0x1

    move v0, p1

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ahocorasick/interval/Intervalable;

    invoke-interface {v2}, Lorg/ahocorasick/interval/Intervalable;->getStart()I

    move-result v3

    invoke-interface {v2}, Lorg/ahocorasick/interval/Intervalable;->getEnd()I

    move-result v2

    if-eq v0, p1, :cond_1

    if-ge v3, v0, :cond_2

    :cond_1
    move v0, v3

    :cond_2
    if-eq v1, p1, :cond_3

    if-le v2, v1, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected findOverlappingRanges(Lorg/ahocorasick/interval/IntervalNode;Lorg/ahocorasick/interval/Intervalable;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ahocorasick/interval/IntervalNode;",
            "Lorg/ahocorasick/interval/Intervalable;",
            ")",
            "Ljava/util/List<",
            "Lorg/ahocorasick/interval/Intervalable;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lorg/ahocorasick/interval/IntervalNode;->findOverlaps(Lorg/ahocorasick/interval/Intervalable;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public findOverlaps(Lorg/ahocorasick/interval/Intervalable;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ahocorasick/interval/Intervalable;",
            ")",
            "Ljava/util/List<",
            "Lorg/ahocorasick/interval/Intervalable;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lorg/ahocorasick/interval/IntervalNode;->point:I

    invoke-interface {p1}, Lorg/ahocorasick/interval/Intervalable;->getStart()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lorg/ahocorasick/interval/IntervalNode;->right:Lorg/ahocorasick/interval/IntervalNode;

    invoke-virtual {p0, v1, p1}, Lorg/ahocorasick/interval/IntervalNode;->findOverlappingRanges(Lorg/ahocorasick/interval/IntervalNode;Lorg/ahocorasick/interval/Intervalable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/ahocorasick/interval/IntervalNode;->addToOverlaps(Lorg/ahocorasick/interval/Intervalable;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lorg/ahocorasick/interval/IntervalNode;->checkForOverlapsToTheRight(Lorg/ahocorasick/interval/Intervalable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/ahocorasick/interval/IntervalNode;->addToOverlaps(Lorg/ahocorasick/interval/Intervalable;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/ahocorasick/interval/IntervalNode;->point:I

    invoke-interface {p1}, Lorg/ahocorasick/interval/Intervalable;->getEnd()I

    move-result v2

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lorg/ahocorasick/interval/IntervalNode;->left:Lorg/ahocorasick/interval/IntervalNode;

    invoke-virtual {p0, v1, p1}, Lorg/ahocorasick/interval/IntervalNode;->findOverlappingRanges(Lorg/ahocorasick/interval/IntervalNode;Lorg/ahocorasick/interval/Intervalable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/ahocorasick/interval/IntervalNode;->addToOverlaps(Lorg/ahocorasick/interval/Intervalable;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lorg/ahocorasick/interval/IntervalNode;->checkForOverlapsToTheLeft(Lorg/ahocorasick/interval/Intervalable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/ahocorasick/interval/IntervalNode;->addToOverlaps(Lorg/ahocorasick/interval/Intervalable;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/ahocorasick/interval/IntervalNode;->intervals:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v1}, Lorg/ahocorasick/interval/IntervalNode;->addToOverlaps(Lorg/ahocorasick/interval/Intervalable;Ljava/util/List;Ljava/util/List;)V

    iget-object v1, p0, Lorg/ahocorasick/interval/IntervalNode;->left:Lorg/ahocorasick/interval/IntervalNode;

    invoke-virtual {p0, v1, p1}, Lorg/ahocorasick/interval/IntervalNode;->findOverlappingRanges(Lorg/ahocorasick/interval/IntervalNode;Lorg/ahocorasick/interval/Intervalable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/ahocorasick/interval/IntervalNode;->addToOverlaps(Lorg/ahocorasick/interval/Intervalable;Ljava/util/List;Ljava/util/List;)V

    iget-object v1, p0, Lorg/ahocorasick/interval/IntervalNode;->right:Lorg/ahocorasick/interval/IntervalNode;

    invoke-virtual {p0, v1, p1}, Lorg/ahocorasick/interval/IntervalNode;->findOverlappingRanges(Lorg/ahocorasick/interval/IntervalNode;Lorg/ahocorasick/interval/Intervalable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/ahocorasick/interval/IntervalNode;->addToOverlaps(Lorg/ahocorasick/interval/Intervalable;Ljava/util/List;Ljava/util/List;)V

    :goto_0
    return-object v0
.end method
