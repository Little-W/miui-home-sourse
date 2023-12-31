.class public Lcom/miui/home/recents/views/RecentsView;
.super Landroid/widget/FrameLayout;
.source "RecentsView.java"

# interfaces
.implements Lcom/miui/home/launcher/LauncherStateManager$StateListener;
.implements Lcom/miui/home/recents/RecentsSoscStateHelper$RecentSoscListener;


# instance fields
.field private mAwaitingFirstLayout:Z

.field private mEmptyView:Landroid/widget/TextView;

.field private mFirstFloatingTaskView:Lcom/miui/home/recents/views/FloatingTaskView;

.field private mHomeIntent:Landroid/content/Intent;

.field private mInOverviewState:Z

.field private mIsInSplitSelectState:Z

.field private mMultiWindowChangedRunnable:Ljava/lang/Runnable;

.field private mRunningTaskId:I

.field private mSplitHiddenTaskViewIndex:I

.field private mSplitSelectStateController:Lcom/miui/home/recents/util/SplitSelectStateController;

.field private final mSplitToast:Landroid/widget/Toast;

.field private final mSplitUnsupportedToast:Landroid/widget/Toast;

.field public mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

.field private mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

.field private mVisualRotationSystemInsets:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 117
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x1

    .line 92
    iput-boolean p2, p0, Lcom/miui/home/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    .line 94
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/miui/home/recents/views/RecentsView;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    const/4 p3, -0x1

    .line 97
    iput p3, p0, Lcom/miui/home/recents/views/RecentsView;->mRunningTaskId:I

    const/4 p4, 0x0

    .line 102
    iput-object p4, p0, Lcom/miui/home/recents/views/RecentsView;->mMultiWindowChangedRunnable:Ljava/lang/Runnable;

    .line 754
    iput-boolean p2, p0, Lcom/miui/home/recents/views/RecentsView;->mInOverviewState:Z

    .line 839
    iput p3, p0, Lcom/miui/home/recents/views/RecentsView;->mSplitHiddenTaskViewIndex:I

    .line 871
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x0

    const p4, 0x7f1104cb

    invoke-static {p2, p4, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/recents/views/RecentsView;->mSplitToast:Landroid/widget/Toast;

    .line 873
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object p2

    const p4, 0x7f1104ca

    invoke-static {p2, p4, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/recents/views/RecentsView;->mSplitUnsupportedToast:Landroid/widget/Toast;

    .line 118
    invoke-virtual {p0, p3}, Lcom/miui/home/recents/views/RecentsView;->setWillNotDraw(Z)V

    .line 120
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0162

    .line 121
    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    .line 122
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    new-instance p2, Lcom/miui/home/recents/views/RecentsView$1;

    invoke-direct {p2, p0}, Lcom/miui/home/recents/views/RecentsView$1;-><init>(Lcom/miui/home/recents/views/RecentsView;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->addView(Landroid/view/View;)V

    .line 130
    new-instance p1, Lcom/miui/home/recents/util/SpringAnimationImpl;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/util/SpringAnimationImpl;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    .line 132
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.MAIN"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "android.intent.category.HOME"

    .line 133
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x10000000

    .line 134
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mHomeIntent:Landroid/content/Intent;

    return-void
.end method

.method private alignTaskByVisualRectF(Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;Landroid/graphics/RectF;FF)V
    .locals 8

    if-eqz p1, :cond_2

    .line 791
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 792
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 795
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskIndexById(I)I

    move-result v0

    .line 796
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 797
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v2, v3

    const/4 v3, 0x0

    .line 798
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 799
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/recents/views/TaskView;

    if-eq p1, v4, :cond_1

    .line 801
    invoke-virtual {v4}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, v5}, Lcom/miui/home/recents/views/RecentsView;->getTaskIndexById(I)I

    move-result v5

    sub-int v5, v0, v5

    int-to-float v5, v5

    .line 802
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v6

    add-float/2addr v6, p4

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v7

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    .line 803
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    sub-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 804
    invoke-virtual {v4}, Lcom/miui/home/recents/views/TaskView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {v4, v6}, Lcom/miui/home/recents/views/TaskView;->setPivotX(F)V

    .line 805
    invoke-virtual {v4}, Lcom/miui/home/recents/views/TaskView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    invoke-virtual {v4, v6}, Lcom/miui/home/recents/views/TaskView;->setPivotY(F)V

    .line 806
    invoke-virtual {v4, v2}, Lcom/miui/home/recents/views/TaskView;->setScaleX(F)V

    .line 807
    invoke-virtual {v4, v2}, Lcom/miui/home/recents/views/TaskView;->setScaleY(F)V

    .line 808
    invoke-virtual {v4, v5}, Lcom/miui/home/recents/views/TaskView;->setTranslationX(F)V

    .line 809
    invoke-virtual {v4, v1}, Lcom/miui/home/recents/views/TaskView;->setTranslationY(F)V

    .line 810
    invoke-virtual {v4}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v4

    invoke-virtual {v4, p5}, Lcom/miui/home/recents/views/TaskViewHeader;->setAlpha(F)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private isLandscapeVisually()Z
    .locals 2

    .line 609
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 610
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 611
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result p0

    invoke-static {p0}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result p0

    return p0

    .line 613
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isNeedShowEmptyView()Z
    .locals 1

    .line 958
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    .line 959
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSplitSelectTaskInSmallWindowState(Ljava/util/Set;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;",
            ">;)Z"
        }
    .end annotation

    .line 374
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->isInSplitSelectState()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 377
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 378
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsView;->mSplitSelectStateController:Lcom/miui/home/recents/util/SplitSelectStateController;

    const-string v3, "RecentsView"

    if-nez v2, :cond_2

    const-string p0, "isSplitSelectTaskInSmallWindowState: mSplitSelectStateController is null, return"

    .line 379
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    if-nez v0, :cond_3

    const-string v0, "isSplitSelectTaskInSmallWindowState: smallWindowInfo is null"

    .line 383
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 386
    :cond_3
    invoke-virtual {v2}, Lcom/miui/home/recents/util/SplitSelectStateController;->getInitialTaskPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsView;->mSplitSelectStateController:Lcom/miui/home/recents/util/SplitSelectStateController;

    .line 387
    invoke-virtual {v2}, Lcom/miui/home/recents/util/SplitSelectStateController;->getInitialTaskUserId()I

    move-result v2

    iget v0, v0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->userId:I

    if-ne v2, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
.end method

.method private isSplitTaskInSmallWindowState(Ljava/util/List;Ljava/util/Set;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/recents/views/TaskView;",
            ">;",
            "Ljava/util/Set<",
            "Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;",
            ">;)Z"
        }
    .end annotation

    .line 339
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-nez p0, :cond_1

    return v1

    .line 347
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/recents/views/TaskView;

    .line 348
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "RecentsView"

    const-string v2, "isSplitTaskInSmallWindowState: task is null"

    .line 350
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 353
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 357
    :cond_4
    iget-object v2, p1, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 358
    iget-object v3, p1, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 359
    iget-object v4, p1, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    .line 360
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    .line 361
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 362
    iget-object v7, v6, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget v7, v6, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->userId:I

    if-ne v4, v7, :cond_6

    return v0

    .line 365
    :cond_6
    iget-object v7, v6, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget v6, v6, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->userId:I

    if-ne p1, v6, :cond_5

    return v0

    :cond_7
    return v1
.end method

.method static synthetic lambda$updateTaskStackViewBounds$6()V
    .locals 1

    .line 1014
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1016
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->onLaunchActivityProcessEnd()V

    :cond_0
    return-void
.end method

.method private loadTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;
    .locals 4

    .line 588
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 589
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/miui/home/recents/views/RecentsView;->mRunningTaskId:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/recents/RecentsModel;->getSmartRecentsTaskLoadPlan(Landroid/content/Context;I)Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    move-result-object v1

    .line 590
    new-instance v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 591
    iget v3, p0, Lcom/miui/home/recents/views/RecentsView;->mRunningTaskId:I

    iput v3, v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 592
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getThumbnailCacheSize()I

    move-result v3

    iput v3, v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 593
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getThumbnailCacheSize()I

    move-result v3

    iput v3, v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 594
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 595
    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object p0

    return-object p0
.end method

.method private onStackLoaded(Lcom/android/systemui/shared/recents/model/TaskStack;)V
    .locals 1

    const/4 v0, 0x0

    .line 600
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsView;->onReload(Z)V

    .line 601
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->updateStack(Lcom/android/systemui/shared/recents/model/TaskStack;)V

    .line 603
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "fullScreen"

    goto :goto_0

    :cond_0
    const-string v0, "clickButton"

    .line 604
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsView;->isLandscapeVisually()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "landscape"

    goto :goto_1

    :cond_1
    const-string p0, "portrait"

    .line 605
    :goto_1
    invoke-static {p1, v0, p0}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendEnterRecentsEvent(Lcom/android/systemui/shared/recents/model/TaskStack;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private resetInitiatedSelect()V
    .locals 1

    const/4 v0, 0x0

    .line 950
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsView;->mIsInSplitSelectState:Z

    .line 951
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mFirstFloatingTaskView:Lcom/miui/home/recents/views/FloatingTaskView;

    if-eqz v0, :cond_0

    .line 952
    invoke-virtual {v0}, Lcom/miui/home/recents/views/FloatingTaskView;->removeView()V

    const/4 v0, 0x0

    .line 953
    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mFirstFloatingTaskView:Lcom/miui/home/recents/views/FloatingTaskView;

    :cond_0
    return-void
.end method

.method private startTaskOrHome(Lcom/miui/home/recents/views/TaskView;I)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "doubleTap"

    .line 547
    invoke-static {p0, p2}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendSwitchAppEvent(Ljava/lang/String;I)V

    const/4 p0, 0x1

    .line 548
    invoke-virtual {p1, p0}, Lcom/miui/home/recents/views/TaskView;->launchTask(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "clickRecentsKey"

    .line 550
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendHideRecentsEvent(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->startHome()V

    :goto_0
    return-void
.end method

.method private translateForRecentsVisibleBound(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 5

    .line 965
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->isPredictMinimized()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 966
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->getPredictMinimizedPosition()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 967
    iget p0, p2, Landroid/graphics/Rect;->top:I

    div-int/lit8 p0, p0, 0x2

    goto :goto_1

    .line 968
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->isPredictMinimized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 969
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->getPredictMinimizedPosition()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 970
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getBottom()I

    move-result p0

    sub-int/2addr p2, p0

    div-int/lit8 p0, p2, 0x2

    goto :goto_1

    .line 971
    :cond_1
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->getPredictState()I

    move-result v0

    if-nez v0, :cond_2

    .line 972
    iget p0, p2, Landroid/graphics/Rect;->left:I

    div-int/lit8 p0, p0, 0x2

    :goto_0
    move v4, v2

    move v2, p0

    move p0, v4

    goto :goto_1

    .line 973
    :cond_2
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->getPredictState()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 974
    iget p2, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getRight()I

    move-result p0

    sub-int/2addr p2, p0

    div-int/lit8 p0, p2, 0x2

    goto :goto_0

    :cond_3
    move p0, v2

    :goto_1
    int-to-float p2, v2

    .line 976
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    int-to-float p0, p0

    .line 977
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private updateTaskIsLauncherTarget()V
    .locals 3

    .line 663
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/views/TaskView;

    .line 664
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 666
    iget v2, p0, Lcom/miui/home/recents/views/RecentsView;->mRunningTaskId:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/recents/model/Task;->isSameTaskFromId(I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/shared/recents/model/Task;->isLaunchTarget:Z

    goto :goto_0

    .line 669
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 670
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v1, :cond_2

    .line 672
    iget v2, p0, Lcom/miui/home/recents/views/RecentsView;->mRunningTaskId:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/recents/model/Task;->isSameTaskFromId(I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/shared/recents/model/Task;->isLaunchTarget:Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method private updateTaskStackViewBounds(Landroid/graphics/Rect;Z)V
    .locals 2

    .line 997
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-nez v0, :cond_0

    const-string p0, "RecentsView"

    const-string p1, "updateTaskStackViewBounds: taskStackView is null"

    .line 999
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 1003
    new-instance v0, Lcom/miui/home/recents/views/-$$Lambda$RecentsView$4SvVnf-4rXcvsZ0DKAV-3N99QAU;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/views/-$$Lambda$RecentsView$4SvVnf-4rXcvsZ0DKAV-3N99QAU;-><init>(Lcom/miui/home/recents/views/RecentsView;)V

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mMultiWindowChangedRunnable:Ljava/lang/Runnable;

    .line 1005
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    new-instance v1, Lcom/miui/home/recents/views/-$$Lambda$RecentsView$6xUaPn68uXrLzzsgewMSvo43DMw;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/recents/views/-$$Lambda$RecentsView$6xUaPn68uXrLzzsgewMSvo43DMw;-><init>(Lcom/miui/home/recents/views/RecentsView;Landroid/graphics/Rect;Z)V

    sget-object p0, Lcom/miui/home/recents/views/-$$Lambda$RecentsView$osdsId3os8P4QleE-EuqvAb8QwY;->INSTANCE:Lcom/miui/home/recents/views/-$$Lambda$RecentsView$osdsId3os8P4QleE-EuqvAb8QwY;

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/folme/FolmeUtils;->hideThenShowRecentsAnim(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public alignTaskViewWhenAppToRecent(Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;Landroid/graphics/RectF;FF)V
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p4

    const/high16 p4, 0x41c80000    # 25.0f

    mul-float v5, v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p5

    .line 779
    invoke-direct/range {v1 .. v6}, Lcom/miui/home/recents/views/RecentsView;->alignTaskByVisualRectF(Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;Landroid/graphics/RectF;FF)V

    return-void
.end method

.method public alignTaskViewWhenTaskLaunch(Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;Landroid/graphics/RectF;FF)V
    .locals 7

    const/high16 v0, 0x41c80000    # 25.0f

    mul-float v5, p4, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move v6, p5

    .line 785
    invoke-direct/range {v1 .. v6}, Lcom/miui/home/recents/views/RecentsView;->alignTaskByVisualRectF(Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;Landroid/graphics/RectF;FF)V

    return-void
.end method

.method public checkTaskStackViewValid(Z)Z
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 168
    new-instance v0, Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/recents/views/TaskStackView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    .line 169
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsView;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskStackView;->setVisualRotationSystemInsets(Landroid/graphics/Rect;)V

    .line 170
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsView;->addView(Landroid/view/View;)V

    .line 171
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskStackView;->setLayoutDirection(I)V

    .line 172
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/recents/views/RecentsContainer;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/RecentsContainer;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setTaskStackView(Lcom/miui/home/recents/views/TaskStackView;)V

    .line 176
    :cond_0
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_1
    return p1
.end method

.method public confirmSplitSelect(Lcom/miui/home/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Landroid/widget/ImageView;Lcom/miui/home/recents/views/TaskViewThumbnail;)Z
    .locals 0

    .line 897
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->isInSplitSelectState()Z

    move-result p1

    const-string p3, "RecentsView"

    if-nez p1, :cond_0

    const-string p0, "confirmSplitSelect: is not in split select state, return false"

    .line 898
    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 901
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mSplitSelectStateController:Lcom/miui/home/recents/util/SplitSelectStateController;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/SplitSelectStateController;->isBothSplitAppsConfirmed()Z

    move-result p1

    const/4 p4, 0x1

    if-eqz p1, :cond_1

    const-string p0, "confirmSplitSelect: is both split apps confirmed, return true"

    .line 902
    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p4

    .line 905
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mSplitToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    .line 906
    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/Task;->isSupportSplit()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "confirmSplitSelect: task not support split screen, return true"

    .line 908
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mSplitUnsupportedToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return p4

    .line 912
    :cond_2
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mSplitSelectStateController:Lcom/miui/home/recents/util/SplitSelectStateController;

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/util/SplitSelectStateController;->setSecondTask(Lcom/android/systemui/shared/recents/model/Task;)V

    const-string p1, "confirmSplitSelect: launch split tasks, return true"

    .line 914
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mSplitSelectStateController:Lcom/miui/home/recents/util/SplitSelectStateController;

    new-instance p2, Lcom/miui/home/recents/views/-$$Lambda$RecentsView$a0ViA99DlTNLZFvNSS0oFikEoK0;

    invoke-direct {p2, p0}, Lcom/miui/home/recents/views/-$$Lambda$RecentsView$a0ViA99DlTNLZFvNSS0oFikEoK0;-><init>(Lcom/miui/home/recents/views/RecentsView;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/util/SplitSelectStateController;->launchSplitTasks(Ljava/util/function/Consumer;)V

    return p4
.end method

.method public getAnotherMultiTaskId(I)I
    .locals 2

    .line 641
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 642
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 644
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/Task;->isSameTaskFromId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 646
    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/Task;->getAnotherMultiTaskId(I)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getFirstTaskViewYWhenNoScroll()I
    .locals 0

    .line 469
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getFirstTaskViewYWhenNoScroll()I

    move-result p0

    return p0
.end method

.method public getQuickSwitchTaskIndex(I)I
    .locals 3

    .line 523
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object p0

    .line 524
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 525
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result p0

    if-eqz v0, :cond_3

    .line 526
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v1, p1, 0x1

    :goto_0
    add-int/lit8 v2, p0, -0x1

    if-gt v1, v2, :cond_2

    .line 531
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    .line 533
    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task;->isNeedHide()Z

    move-result v2

    if-nez v2, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p1

    :cond_3
    :goto_2
    const-string v0, "RecentsView"

    const-string v1, "getLeftTaskIndex : list is null or empty"

    .line 527
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p0, p0, -0x1

    add-int/lit8 p1, p1, 0x1

    .line 528
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getRunningTaskId()I
    .locals 0

    .line 683
    iget p0, p0, Lcom/miui/home/recents/views/RecentsView;->mRunningTaskId:I

    return p0
.end method

.method public getRunningTaskIndex()I
    .locals 1

    .line 687
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getRunningTaskView()Lcom/miui/home/recents/views/TaskView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 688
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewIndex(Lcom/miui/home/recents/views/TaskView;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getRunningTaskView()Lcom/miui/home/recents/views/TaskView;
    .locals 1

    .line 679
    iget v0, p0, Lcom/miui/home/recents/views/RecentsView;->mRunningTaskId:I

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskView(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p0

    return-object p0
.end method

.method public getSplitPlaceholder()Lcom/miui/home/recents/util/SplitSelectStateController;
    .locals 0

    .line 885
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mSplitSelectStateController:Lcom/miui/home/recents/util/SplitSelectStateController;

    return-object p0
.end method

.method public getSplitSelectTranslation()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;
    .locals 0

    .line 751
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    return-object p0
.end method

.method public getStack()Lcom/android/systemui/shared/recents/model/TaskStack;
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-eqz p0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTaskIdByIndex(I)I
    .locals 0

    .line 719
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViewAt(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 720
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getTaskIndexById(I)I
    .locals 0

    .line 714
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskView(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 715
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewIndex(Lcom/miui/home/recents/views/TaskView;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    return-object p0
.end method

.method public getTaskView(I)Lcom/miui/home/recents/views/TaskView;
    .locals 3

    .line 628
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 631
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/TaskView;

    .line 632
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 633
    invoke-virtual {v2, p1}, Lcom/android/systemui/shared/recents/model/Task;->isSameTaskFromId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getTaskViewAt(I)Lcom/miui/home/recents/views/TaskView;
    .locals 1

    .line 724
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 728
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/views/TaskView;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTaskViewCount()I
    .locals 0

    .line 733
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getTaskViews()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/recents/views/TaskView;",
            ">;"
        }
    .end annotation

    .line 692
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-eqz p0, :cond_0

    .line 693
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 695
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public hideEmptyView()V
    .locals 5

    .line 250
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 251
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object p0

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v3, -0x2

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    .line 252
    invoke-virtual {v1, v3, v4}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-interface {p0, v0}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method public hideEmptyViewAndShowTaskStackView()V
    .locals 2

    .line 244
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->hideEmptyView()V

    .line 245
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskStackView;->setVisibility(I)V

    .line 246
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->bringToFront()V

    return-void
.end method

.method public hideTaskViews(Lcom/miui/home/recents/views/TaskView;F)V
    .locals 2

    const/4 v0, 0x0

    .line 769
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 770
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/views/TaskView;

    if-eq p1, v1, :cond_0

    .line 772
    invoke-virtual {v1, p2}, Lcom/miui/home/recents/views/TaskView;->setAlpha(F)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public init(Lcom/miui/home/recents/util/SplitSelectStateController;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mSplitSelectStateController:Lcom/miui/home/recents/util/SplitSelectStateController;

    return-void
.end method

.method public initiateSplitSelect(Lcom/android/systemui/shared/recents/model/Task;I)V
    .locals 4

    .line 845
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/BaseDraggingActivity;

    const/4 v1, 0x0

    const/16 v2, 0x100

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/AbstractFloatingView;->closeOpenViews(Lcom/miui/home/launcher/BaseDraggingActivity;ZI)V

    .line 846
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsView;->mIsInSplitSelectState:Z

    if-eqz v0, :cond_0

    .line 847
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsView;->resetInitiatedSelect()V

    .line 849
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initiateSplitSelect: task = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", secondTaskStagePosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mSplitSelectStateController:Lcom/miui/home/recents/util/SplitSelectStateController;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/recents/util/SplitSelectStateController;->setInitialTaskSelect(Lcom/android/systemui/shared/recents/model/Task;I)V

    const/4 v0, 0x1

    .line 851
    iput v0, p0, Lcom/miui/home/recents/views/RecentsView;->mSplitHiddenTaskViewIndex:I

    .line 855
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    .line 856
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getTaskThumbnail(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    .line 855
    invoke-static {v1, v2, v3, p2}, Lcom/miui/home/recents/views/FloatingTaskView;->getFloatingTaskView(Lcom/miui/home/launcher/Launcher;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;I)Lcom/miui/home/recents/views/FloatingTaskView;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/recents/views/RecentsView;->mFirstFloatingTaskView:Lcom/miui/home/recents/views/FloatingTaskView;

    .line 859
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsView;->mFirstFloatingTaskView:Lcom/miui/home/recents/views/FloatingTaskView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, v1}, Lcom/miui/home/recents/views/FloatingTaskView;->setAlpha(F)V

    .line 860
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsView;->mSplitToast:Landroid/widget/Toast;

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 861
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->setFirstSplitScreenTask(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 862
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsView;->mIsInSplitSelectState:Z

    .line 864
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 866
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSystemUiController()Lcom/miui/home/launcher/util/SystemUiController;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/util/SystemUiController;->updateUiState(I)V

    .line 867
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->onMultiWindowModeChanged(Z)V

    :cond_1
    return-void
.end method

.method public isAnyWorldCirculateTaskIdInvalid(Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 699
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->isDeleteAllTasksAnimating()Z

    move-result v0

    if-nez v0, :cond_2

    .line 700
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/TaskView;

    if-eqz v0, :cond_0

    .line 701
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 702
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 703
    iget-boolean v1, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isWorldCirculate:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isVtCamera:Z

    if-eqz v1, :cond_0

    :cond_1
    iget v1, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 704
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isAnyWorldCirculateTaskIdInvalid: invalid task: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecentsView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public isInSplitSelectState()Z
    .locals 0

    .line 920
    iget-boolean p0, p0, Lcom/miui/home/recents/views/RecentsView;->mIsInSplitSelectState:Z

    return p0
.end method

.method public isTaskLaunchAnimRunning()Z
    .locals 0

    .line 542
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isTaskLaunchAnimRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$confirmSplitSelect$2$RecentsView(Ljava/lang/Boolean;)V
    .locals 0

    .line 915
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->resetFromSplitSelectionState()V

    return-void
.end method

.method public synthetic lambda$onRecentsVisibleBoundChangedWithAnim$3$RecentsView(Landroid/graphics/Rect;)V
    .locals 1

    .line 990
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/recents/views/RecentsView;->translateForRecentsVisibleBound(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public synthetic lambda$startHome$0$RecentsView()V
    .locals 1

    .line 565
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mHomeIntent:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$startHome$1$RecentsView()V
    .locals 2

    const-string v0, "RecentsView"

    const-string v1, "startHome onTransactionReady"

    .line 564
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/views/-$$Lambda$RecentsView$P-qyC9TDRQPxVVTEe5d01Uda4cM;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/views/-$$Lambda$RecentsView$P-qyC9TDRQPxVVTEe5d01Uda4cM;-><init>(Lcom/miui/home/recents/views/RecentsView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$updateTaskStackViewBounds$4$RecentsView()V
    .locals 0

    .line 1003
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->reloadStackView()V

    return-void
.end method

.method public synthetic lambda$updateTaskStackViewBounds$5$RecentsView(Landroid/graphics/Rect;Z)V
    .locals 1

    .line 1007
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mMultiWindowChangedRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1008
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 1009
    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mMultiWindowChangedRunnable:Ljava/lang/Runnable;

    .line 1011
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/TaskStackView;->onRecentsVisibleBoundChanged(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 258
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->addRecentSoscListener(Lcom/miui/home/recents/RecentsSoscStateHelper$RecentSoscListener;)V

    .line 259
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 263
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 265
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 267
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/LauncherStateManager;->addStateListener(Lcom/miui/home/launcher/LauncherStateManager$StateListener;)V

    .line 269
    :cond_2
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onDarkModeChanged()V
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-eqz p0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->onDarkModeChanged()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 274
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 275
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->removeRecentSoscListener(Lcom/miui/home/recents/RecentsSoscStateHelper$RecentSoscListener;)V

    .line 276
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 282
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 284
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/LauncherStateManager;->removeStateListener(Lcom/miui/home/launcher/LauncherStateManager$StateListener;)V

    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 458
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 437
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_0

    .line 438
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p1, p2, p3, v1, v2}, Lcom/miui/home/recents/views/TaskStackView;->layout(IIII)V

    .line 442
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    .line 443
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    .line 444
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr p4, p2

    sub-int/2addr p4, p1

    .line 445
    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p2, p4

    sub-int/2addr p5, p3

    sub-int/2addr p5, v0

    .line 446
    invoke-static {v1, p5}, Ljava/lang/Math;->max(II)I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    .line 447
    iget-object p4, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    add-int/2addr p1, p2

    add-int/2addr v0, p3

    invoke-virtual {p4, p2, p3, p1, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 450
    :cond_1
    iget-boolean p1, p0, Lcom/miui/home/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    if-eqz p1, :cond_2

    .line 451
    iput-boolean v1, p0, Lcom/miui/home/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    const/4 p1, 0x0

    .line 452
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->setTranslationY(F)V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 416
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 417
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 419
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskStackView;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 420
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v2, p1, p2}, Lcom/miui/home/recents/views/TaskStackView;->measure(II)V

    .line 424
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eq p1, v3, :cond_1

    .line 425
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 426
    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 425
    invoke-virtual {p0, p1, v2, p2}, Lcom/miui/home/recents/views/RecentsView;->measureChild(Landroid/view/View;II)V

    .line 429
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/views/RecentsView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/ClickTaskViewEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 290
    invoke-virtual {p1}, Lcom/miui/home/recents/messages/ClickTaskViewEvent;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 294
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskIndexById(I)I

    move-result p0

    .line 296
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apppairs_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 298
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u5206\u5c4f\u7ec4\u5408"

    goto :goto_0

    .line 301
    :cond_1
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u72ec\u7acbapp"

    :goto_0
    const-string v1, "clickToSwitch"

    .line 305
    invoke-static {v1, p1, p0, v0}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendSwitchAppEvent(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/HideRecentsEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_1

    .line 311
    iget-boolean p1, p1, Lcom/miui/home/recents/messages/HideRecentsEvent;->mIsAnnounceForAccessibility:Z

    if-eqz p1, :cond_0

    const p1, 0x7f110026

    .line 312
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(I)V

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->startHome()V

    :cond_1
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/MultiWindowStateChangedEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 v0, 0x0

    .line 403
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsView;->onReload(Z)V

    .line 404
    iget-object v0, p1, Lcom/miui/home/recents/messages/MultiWindowStateChangedEvent;->stack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsView;->updateStack(Lcom/android/systemui/shared/recents/model/TaskStack;)V

    .line 405
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->stopScroll()V

    .line 406
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lcom/miui/home/recents/messages/MultiWindowStateChangedEvent;->inMultiWindow:Z

    if-eqz p1, :cond_1

    .line 407
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->scrollToNearestMotionlessPosition()V

    :cond_1
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/smallwindow/messages/OpenSmallWindowsEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 320
    sget-boolean p1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z

    if-nez p1, :cond_0

    return-void

    .line 324
    :cond_0
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getAllSmallWindows()Ljava/util/Set;

    move-result-object p1

    .line 325
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    .line 326
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->isSplitSelectTaskInSmallWindowState(Ljava/util/Set;)Z

    move-result v1

    const-string v2, "RecentsView"

    if-eqz v1, :cond_1

    .line 327
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->resetFromSplitSelectionState()V

    .line 328
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->startHome()V

    const-string p0, "onMessageEvent: split select task now in small window state"

    .line 329
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 332
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/miui/home/recents/views/RecentsView;->isSplitTaskInSmallWindowState(Ljava/util/List;Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 333
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->startHome()V

    const-string p0, "onMessageEvent: split task now in small window state"

    .line 334
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public onRecentsVisibleBoundChanged(Landroid/graphics/Rect;Z)V
    .locals 0

    return-void
.end method

.method public onRecentsVisibleBoundChangedWithAnim(Landroid/graphics/Rect;Z)V
    .locals 3

    .line 988
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsView;->isNeedShowEmptyView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    new-instance v1, Lcom/miui/home/recents/views/-$$Lambda$RecentsView$EO8F78Pe6qAtjAr6yImFFJ5k4Qs;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/views/-$$Lambda$RecentsView$EO8F78Pe6qAtjAr6yImFFJ5k4Qs;-><init>(Lcom/miui/home/recents/views/RecentsView;Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/folme/FolmeUtils;->hideThenShowRecentsAnim(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 993
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/RecentsView;->updateTaskStackViewBounds(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public onReload(Z)V
    .locals 1

    .line 159
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->checkTaskStackViewValid(Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    .line 162
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->onReload(Z)V

    return-void
.end method

.method public onStateTransitionComplete(Lcom/miui/home/launcher/LauncherState;)V
    .locals 1

    .line 490
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-eqz p0, :cond_0

    .line 491
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->returnTaskViewsToPool()V

    :cond_0
    return-void
.end method

.method public onStateTransitionStart(Lcom/miui/home/launcher/LauncherState;)V
    .locals 1

    .line 482
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    if-ne p1, v0, :cond_0

    .line 484
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->reset()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 464
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public reloadStackView()V
    .locals 1

    .line 618
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsView;->loadTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    .line 619
    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/RecentsView;->onStackLoaded(Lcom/android/systemui/shared/recents/model/TaskStack;)V

    return-void
.end method

.method public requestLayout()V
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecentsView before requestLayout isParentLayoutRequested = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "parent null"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnGlobalListenerError"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    const-string p0, "RecentsView after requestLayout"

    .line 151
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, -0x1

    .line 577
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsView;->setCurrentTaskId(I)V

    return-void
.end method

.method public resetFromSplitSelectionState()V
    .locals 3

    .line 924
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->resetFirstSplitScreenTaskNull()V

    const/4 v0, 0x0

    .line 925
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsView;->mIsInSplitSelectState:Z

    .line 926
    iget v1, p0, Lcom/miui/home/recents/views/RecentsView;->mSplitHiddenTaskViewIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    .line 929
    :cond_0
    iput v2, p0, Lcom/miui/home/recents/views/RecentsView;->mSplitHiddenTaskViewIndex:I

    const-string v1, "RecentsView"

    const-string v2, "resetFromSplitSelectionState: "

    .line 931
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsView;->mFirstFloatingTaskView:Lcom/miui/home/recents/views/FloatingTaskView;

    if-eqz v1, :cond_1

    .line 934
    invoke-virtual {v1}, Lcom/miui/home/recents/views/FloatingTaskView;->removeView()V

    const/4 v1, 0x0

    .line 935
    iput-object v1, p0, Lcom/miui/home/recents/views/RecentsView;->mFirstFloatingTaskView:Lcom/miui/home/recents/views/FloatingTaskView;

    .line 938
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 940
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 941
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/views/RecentsContainer;->onMultiWindowModeChanged(Z)V

    .line 943
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSystemUiController()Lcom/miui/home/launcher/util/SystemUiController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 944
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSystemUiController()Lcom/miui/home/launcher/util/SystemUiController;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasLightBgForStatusBar()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/util/SystemUiController;->updateUiState(Z)V

    :cond_3
    return-void
.end method

.method public setCurrentTaskId(I)V
    .locals 1

    .line 655
    iget v0, p0, Lcom/miui/home/recents/views/RecentsView;->mRunningTaskId:I

    if-ne v0, p1, :cond_0

    return-void

    .line 658
    :cond_0
    iput p1, p0, Lcom/miui/home/recents/views/RecentsView;->mRunningTaskId:I

    .line 659
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsView;->updateTaskIsLauncherTarget()V

    return-void
.end method

.method public setInOverviewState(Z)V
    .locals 1

    .line 757
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsView;->mInOverviewState:Z

    if-eq v0, p1, :cond_1

    .line 758
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsView;->mInOverviewState:Z

    .line 759
    iget-boolean p1, p0, Lcom/miui/home/recents/views/RecentsView;->mInOverviewState:Z

    if-eqz p1, :cond_0

    .line 760
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->reloadStackView()V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 762
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->setAlpha(F)V

    .line 763
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->setTranslationY(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setRunningTaskHidden(IZ)V
    .locals 0

    .line 744
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskView(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 746
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskView;->setChildrenViewAlpha(F)V

    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecentsView setVisibility :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnGlobalListenerError"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public setVisulaRotationSystemInsets(Landroid/graphics/Rect;)V
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 396
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-eqz p1, :cond_0

    .line 397
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/views/TaskStackView;->setVisualRotationSystemInsets(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public shouldUseMultiWindowTaskSizeStrategy()Z
    .locals 0

    .line 623
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 624
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInMultiWindowMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showCurrentTask(I)V
    .locals 0

    .line 581
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->setCurrentTaskId(I)V

    .line 582
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->reloadStackView()V

    return-void
.end method

.method public showEmptyView(I)V
    .locals 4

    .line 231
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 232
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isSupportSosc()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 233
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->getPredictRecentsVisibleBound()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/RecentsView;->translateForRecentsVisibleBound(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 235
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x1

    new-array v1, p1, [Landroid/view/View;

    .line 236
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    aput-object p0, v1, v0

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object p0

    new-array p1, p1, [Lmiuix/animation/base/AnimConfig;

    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v2, -0x2

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    .line 237
    invoke-virtual {v1, v2, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-interface {p0, p1}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method public startHome()V
    .locals 4

    .line 556
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 557
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/recents/OverviewComponentObserver;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/OverviewComponentObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/OverviewComponentObserver;->isHomeAndOverviewSame()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/miui/home/launcher/LauncherStateManager;->exitOverviewStateIfNeed(ZZ)V

    goto :goto_0

    :cond_0
    const-string v0, "RecentsView"

    const-string v1, "checkAndLauncherHome"

    .line 560
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mainAnimNoFinishClear()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 562
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object v0

    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    new-instance v3, Lcom/miui/home/recents/views/-$$Lambda$RecentsView$otJET-5NVDJ3b-TVfM7RD_A_M7s;

    invoke-direct {v3, p0}, Lcom/miui/home/recents/views/-$$Lambda$RecentsView$otJET-5NVDJ3b-TVfM7RD_A_M7s;-><init>(Lcom/miui/home/recents/views/RecentsView;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->executeFinishCallback(ZLandroid/window/WindowContainerTransaction;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V

    goto :goto_0

    .line 568
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsView;->mHomeIntent:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 571
    :goto_0
    invoke-static {}, Lcom/miui/home/recents/util/Utilities;->isUseRemberWindows()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 572
    invoke-static {}, Lcom/miui/home/recents/ForegroundTaskHelper;->getInstance()Lcom/miui/home/recents/ForegroundTaskHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/ForegroundTaskHelper;->clearForegroundTasks()V

    :cond_2
    return-void
.end method

.method public startTaskOrHome(J)V
    .locals 5

    .line 496
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    const-string v1, "RecentsView"

    if-nez v0, :cond_0

    const-string p0, "mTaskStackView is null, can\'t start any task"

    .line 497
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 500
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getRunningTaskIndex()I

    move-result v0

    .line 501
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runningTaskIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-wide/16 v3, 0x12c

    if-eq v0, v2, :cond_2

    cmp-long p1, p1, v3

    if-gez p1, :cond_1

    .line 506
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->isTaskLaunchAnimRunning()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 507
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsView;->getQuickSwitchTaskIndex(I)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p2}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 509
    :cond_1
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskViewAt(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    .line 510
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/RecentsView;->startTaskOrHome(Lcom/miui/home/recents/views/TaskView;I)V

    goto :goto_0

    .line 512
    :cond_2
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsView;->getQuickSwitchTaskIndex(I)I

    move-result v0

    cmp-long p1, p1, v3

    if-gez p1, :cond_3

    .line 514
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskViewAt(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object v1

    .line 516
    :cond_3
    invoke-direct {p0, v1, v0}, Lcom/miui/home/recents/views/RecentsView;->startTaskOrHome(Lcom/miui/home/recents/views/TaskView;I)V

    :goto_0
    return-void
.end method

.method public updateEmptyView(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->hideEmptyViewAndShowTaskStackView()V

    goto :goto_0

    :cond_0
    const p1, 0x7f1103f1

    .line 209
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->showEmptyView(I)V

    :goto_0
    return-void
.end method

.method public updateStack(Lcom/android/systemui/shared/recents/model/TaskStack;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskStackView;->setTasks(Lcom/android/systemui/shared/recents/model/TaskStack;)V

    .line 194
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->requestLayout()V

    .line 197
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->updateEmptyView(I)V

    .line 198
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsView;->updateTaskIsLauncherTarget()V

    return-void
.end method

.method public updateThumbnail(ILcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 0

    .line 737
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskView(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 739
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/TaskView;->setThumbnail(ILcom/android/systemui/shared/recents/model/ThumbnailData;)V

    :cond_0
    return-void
.end method
