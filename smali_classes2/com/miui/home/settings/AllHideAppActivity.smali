.class public final Lcom/miui/home/settings/AllHideAppActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "AllHideAppActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAllHideAppActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AllHideAppActivity.kt\ncom/miui/home/settings/AllHideAppActivity\n*L\n1#1,77:1\n*E\n"
.end annotation


# instance fields
.field private mAppsDisposable:Lio/reactivex2/disposables/Disposable;

.field private mController:Lcom/miui/home/settings/HideAppController;

.field private mListAdapter:Lcom/miui/home/settings/HideAppAdapter;

.field private mListView:Landroidx/recyclerview/widget/RecyclerView;

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMController$p(Lcom/miui/home/settings/AllHideAppActivity;)Lcom/miui/home/settings/HideAppController;
    .locals 1

    .line 18
    iget-object p0, p0, Lcom/miui/home/settings/AllHideAppActivity;->mController:Lcom/miui/home/settings/HideAppController;

    if-nez p0, :cond_0

    const-string v0, "mController"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$updateHideAppList(Lcom/miui/home/settings/AllHideAppActivity;Ljava/util/List;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/miui/home/settings/AllHideAppActivity;->updateHideAppList(Ljava/util/List;)V

    return-void
.end method

.method private final initData()V
    .locals 3

    .line 50
    new-instance v0, Lcom/miui/home/settings/AllHideAppActivity$initData$1;

    invoke-direct {v0, p0}, Lcom/miui/home/settings/AllHideAppActivity$initData$1;-><init>(Lcom/miui/home/settings/AllHideAppActivity;)V

    check-cast v0, Ljava/util/concurrent/Callable;

    invoke-static {v0}, Lio/reactivex2/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex2/Observable;

    move-result-object v0

    .line 51
    invoke-static {}, Lio/reactivex2/schedulers/Schedulers;->computation()Lio/reactivex2/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex2/Observable;->subscribeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object v0

    .line 52
    invoke-static {}, Lio/reactivex2/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex2/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex2/Observable;->observeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object v0

    new-instance v1, Lcom/miui/home/settings/AllHideAppActivity$initData$2;

    move-object v2, p0

    check-cast v2, Lcom/miui/home/settings/AllHideAppActivity;

    invoke-direct {v1, v2}, Lcom/miui/home/settings/AllHideAppActivity$initData$2;-><init>(Lcom/miui/home/settings/AllHideAppActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    new-instance v2, Lcom/miui/home/settings/AllHideAppActivity$sam$io_reactivex2_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/miui/home/settings/AllHideAppActivity$sam$io_reactivex2_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Lio/reactivex2/functions/Consumer;

    const-string v1, "AllHideAppActivity initData"

    .line 50
    invoke-static {v0, v2, v1}, Lcom/miui/home/launcher/common/Utilities;->subscribeToObservable(Lio/reactivex2/Observable;Lio/reactivex2/functions/Consumer;Ljava/lang/String;)Lio/reactivex2/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/AllHideAppActivity;->mAppsDisposable:Lio/reactivex2/disposables/Disposable;

    return-void
.end method

.method private final initView()V
    .locals 4

    const v0, 0x7f0a019b

    .line 61
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/AllHideAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.hide_app_recycler)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/home/settings/AllHideAppActivity;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    iget-object v0, p0, Lcom/miui/home/settings/AllHideAppActivity;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "mListView"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 63
    new-instance v0, Lcom/miui/home/settings/HideAppAdapter;

    invoke-direct {v0, v3}, Lcom/miui/home/settings/HideAppAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/settings/AllHideAppActivity;->mListAdapter:Lcom/miui/home/settings/HideAppAdapter;

    .line 64
    iget-object v0, p0, Lcom/miui/home/settings/AllHideAppActivity;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/miui/home/settings/AllHideAppActivity;->mListAdapter:Lcom/miui/home/settings/HideAppAdapter;

    if-nez v1, :cond_2

    const-string v2, "mListAdapter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const v0, 0x7f0a01f2

    .line 65
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/AllHideAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.loading_progress)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/home/settings/AllHideAppActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method private final updateHideAppList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/miui/home/settings/AllHideAppActivity;->mListAdapter:Lcom/miui/home/settings/HideAppAdapter;

    if-nez v0, :cond_0

    const-string v1, "mListAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/home/settings/HideAppAdapter;->setList(Ljava/util/List;)V

    .line 57
    iget-object p0, p0, Lcom/miui/home/settings/AllHideAppActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez p0, :cond_1

    const-string p1, "mProgressBar"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 26
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d008a

    .line 27
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/AllHideAppActivity;->setContentView(I)V

    const p1, 0x7f11026a

    .line 28
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/AllHideAppActivity;->setTitle(I)V

    .line 29
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    const-string v0, "Application.getInstance()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/miui/home/settings/AllHideAppActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/miui/home/settings/AllHideAppActivity;->setActionBarStyle(ZLmiuix/appcompat/app/ActionBar;Z)V

    .line 30
    invoke-direct {p0}, Lcom/miui/home/settings/AllHideAppActivity;->initView()V

    .line 31
    new-instance p1, Lcom/miui/home/settings/HideAppController;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/miui/home/settings/HideAppController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/home/settings/AllHideAppActivity;->mController:Lcom/miui/home/settings/HideAppController;

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 35
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStart()V

    .line 36
    invoke-direct {p0}, Lcom/miui/home/settings/AllHideAppActivity;->initData()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 69
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    .line 70
    iget-object v0, p0, Lcom/miui/home/settings/AllHideAppActivity;->mListAdapter:Lcom/miui/home/settings/HideAppAdapter;

    if-nez v0, :cond_0

    const-string v1, "mListAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/settings/HideAppAdapter;->dismissDialog()V

    .line 71
    iget-object p0, p0, Lcom/miui/home/settings/AllHideAppActivity;->mAppsDisposable:Lio/reactivex2/disposables/Disposable;

    if-eqz p0, :cond_1

    .line 72
    invoke-interface {p0}, Lio/reactivex2/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    invoke-interface {p0}, Lio/reactivex2/disposables/Disposable;->dispose()V

    :cond_1
    return-void
.end method

.method public final setActionBarStyle(ZLmiuix/appcompat/app/ActionBar;Z)V
    .locals 0

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    .line 42
    invoke-virtual {p2, p1}, Lmiuix/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 44
    :cond_0
    invoke-virtual {p2, p1}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    .line 45
    invoke-virtual {p2, p1}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    :cond_1
    return-void
.end method
