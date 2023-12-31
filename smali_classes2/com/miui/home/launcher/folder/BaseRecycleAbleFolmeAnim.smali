.class public abstract Lcom/miui/home/launcher/folder/BaseRecycleAbleFolmeAnim;
.super Ljava/lang/Object;
.source "BaseRecycleAbleFolmeAnim.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseRecycleAbleFolmeAnim.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseRecycleAbleFolmeAnim.kt\ncom/miui/home/launcher/folder/BaseRecycleAbleFolmeAnim\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,37:1\n1819#2,2:38\n1819#2,2:40\n*E\n*S KotlinDebug\n*F\n+ 1 BaseRecycleAbleFolmeAnim.kt\ncom/miui/home/launcher/folder/BaseRecycleAbleFolmeAnim\n*L\n24#1,2:38\n33#1,2:40\n*E\n"
.end annotation


# instance fields
.field private final configs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lmiuix/animation/base/AnimConfig;",
            "Lmiuix/animation/listener/TransitionListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/BaseRecycleAbleFolmeAnim;->configs:Ljava/util/List;

    return-void
.end method

.method private final findTransitionInternal(Lmiuix/animation/listener/TransitionListener;)Lkotlin/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/animation/listener/TransitionListener;",
            ")",
            "Lkotlin/Pair<",
            "Lmiuix/animation/base/AnimConfig;",
            "Lmiuix/animation/listener/TransitionListener;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object p0, p0, Lcom/miui/home/launcher/folder/BaseRecycleAbleFolmeAnim;->configs:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    .line 38
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    .line 25
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final recycle(Lmiuix/animation/listener/TransitionListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 17
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/folder/BaseRecycleAbleFolmeAnim;->findTransitionInternal(Lmiuix/animation/listener/TransitionListener;)Lkotlin/Pair;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 18
    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/animation/base/AnimConfig;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lmiuix/animation/listener/TransitionListener;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/animation/listener/TransitionListener;

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lmiuix/animation/base/AnimConfig;->removeListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    :cond_0
    return-void
.end method

.method public final stash(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/listener/TransitionListener;)V
    .locals 1

    const-string v0, "animConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transitionListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object p0, p0, Lcom/miui/home/launcher/folder/BaseRecycleAbleFolmeAnim;->configs:Ljava/util/List;

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
