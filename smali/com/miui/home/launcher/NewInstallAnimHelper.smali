.class public final Lcom/miui/home/launcher/NewInstallAnimHelper;
.super Ljava/lang/Object;
.source "NewInstallAnimHelper.kt"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNewInstallAnimHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NewInstallAnimHelper.kt\ncom/miui/home/launcher/NewInstallAnimHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,76:1\n1819#2,2:77\n1256#3,2:79\n1256#3,2:81\n*E\n*S KotlinDebug\n*F\n+ 1 NewInstallAnimHelper.kt\ncom/miui/home/launcher/NewInstallAnimHelper\n*L\n35#1,2:77\n58#1,2:79\n71#1,2:81\n*E\n"
.end annotation


# instance fields
.field private isParentVisible:Z

.field private final mBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContainer:Lcom/miui/home/launcher/NewInstallIconContainer;

.field private final mExposeItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/NewInstallIconContainer;)V
    .locals 1

    const-string v0, "mContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/NewInstallAnimHelper;->mContainer:Lcom/miui/home/launcher/NewInstallIconContainer;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/NewInstallAnimHelper;->mExposeItemList:Ljava/util/ArrayList;

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/NewInstallAnimHelper;->mBuffer:Ljava/util/ArrayList;

    .line 14
    iget-object p1, p0, Lcom/miui/home/launcher/NewInstallAnimHelper;->mContainer:Lcom/miui/home/launcher/NewInstallIconContainer;

    check-cast p0, Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {p1, p0}, Lcom/miui/home/launcher/NewInstallIconContainer;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public static final synthetic access$getMBuffer$p(Lcom/miui/home/launcher/NewInstallAnimHelper;)Ljava/util/ArrayList;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/miui/home/launcher/NewInstallAnimHelper;->mBuffer:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getMExposeItemList$p(Lcom/miui/home/launcher/NewInstallAnimHelper;)Ljava/util/ArrayList;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/miui/home/launcher/NewInstallAnimHelper;->mExposeItemList:Ljava/util/ArrayList;

    return-object p0
.end method

.method private final checkExposeAndDoNewInstallAnim()V
    .locals 3

    .line 50
    iget-boolean v0, p0, Lcom/miui/home/launcher/NewInstallAnimHelper;->isParentVisible:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/home/launcher/NewInstallAnimHelper;->mContainer:Lcom/miui/home/launcher/NewInstallIconContainer;

    invoke-interface {v0}, Lcom/miui/home/launcher/NewInstallIconContainer;->hasNewInstallApps()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/NewInstallAnimHelper;->mContainer:Lcom/miui/home/launcher/NewInstallIconContainer;

    invoke-interface {v0}, Lcom/miui/home/launcher/NewInstallIconContainer;->getAllVisibleMIMarketNewInstallShortcuts()Ljava/util/List;

    move-result-object v0

    const-string v1, "current"

    .line 56
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 57
    new-instance v1, Lcom/miui/home/launcher/NewInstallAnimHelper$checkExposeAndDoNewInstallAnim$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/NewInstallAnimHelper$checkExposeAndDoNewInstallAnim$1;-><init>(Lcom/miui/home/launcher/NewInstallAnimHelper;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/NewInstallAppIcon;

    const-string v2, "newInstallAppIcon"

    .line 59
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/miui/home/launcher/NewInstallAppIcon;->isNeedNewInstalledAnim()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 60
    invoke-interface {v1}, Lcom/miui/home/launcher/NewInstallAppIcon;->startNewInstallAnim()V

    .line 62
    :cond_2
    invoke-interface {v1}, Lcom/miui/home/launcher/NewInstallAppIcon;->getShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 63
    iget-object v2, p0, Lcom/miui/home/launcher/NewInstallAnimHelper;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-static {v1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackShortcutIconExpose(Lcom/miui/home/launcher/ShortcutInfo;)V

    goto :goto_0

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/NewInstallAnimHelper;->mExposeItemList:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 69
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/miui/home/launcher/NewInstallAnimHelper$checkExposeAndDoNewInstallAnim$3;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/NewInstallAnimHelper$checkExposeAndDoNewInstallAnim$3;-><init>(Lcom/miui/home/launcher/NewInstallAnimHelper;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 81
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    const-string v2, "static_icon"

    .line 71
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->setTrackMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 72
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/NewInstallAnimHelper;->mExposeItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 73
    iget-object v0, p0, Lcom/miui/home/launcher/NewInstallAnimHelper;->mExposeItemList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/NewInstallAnimHelper;->mBuffer:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 74
    iget-object p0, p0, Lcom/miui/home/launcher/NewInstallAnimHelper;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public final onNewVisibleItemAdd(Lcom/miui/home/launcher/NewInstallAppIcon;)V
    .locals 2

    const-string v0, "newAdd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-boolean v0, p0, Lcom/miui/home/launcher/NewInstallAnimHelper;->isParentVisible:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/miui/home/launcher/NewInstallAppIcon;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaomi.market"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/miui/home/launcher/NewInstallAppIcon;->isNewInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/miui/home/launcher/NewInstallAppIcon;->isNeedNewInstalledAnim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-interface {p1}, Lcom/miui/home/launcher/NewInstallAppIcon;->startNewInstallAnim()V

    .line 42
    invoke-interface {p1}, Lcom/miui/home/launcher/NewInstallAppIcon;->getShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p1

    .line 43
    iget-object p0, p0, Lcom/miui/home/launcher/NewInstallAnimHelper;->mExposeItemList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackShortcutIconExpose(Lcom/miui/home/launcher/ShortcutInfo;)V

    :cond_0
    return-void
.end method

.method public final onParentInvisible()V
    .locals 3

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/miui/home/launcher/NewInstallAnimHelper;->isParentVisible:Z

    .line 35
    iget-object v0, p0, Lcom/miui/home/launcher/NewInstallAnimHelper;->mExposeItemList:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 77
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    const-string v2, "static_icon"

    .line 35
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->setTrackMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/NewInstallAnimHelper;->mExposeItemList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final onParentVisible()V
    .locals 1

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/miui/home/launcher/NewInstallAnimHelper;->isParentVisible:Z

    .line 30
    invoke-direct {p0}, Lcom/miui/home/launcher/NewInstallAnimHelper;->checkExposeAndDoNewInstallAnim()V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    const-string/jumbo p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 19
    invoke-direct {p0}, Lcom/miui/home/launcher/NewInstallAnimHelper;->checkExposeAndDoNewInstallAnim()V

    :cond_0
    return-void
.end method
