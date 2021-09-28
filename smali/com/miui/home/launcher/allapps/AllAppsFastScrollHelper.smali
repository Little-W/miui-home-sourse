.class public Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;
.super Ljava/lang/Object;
.source "AllAppsFastScrollHelper.java"

# interfaces
.implements Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$BindViewCallback;


# instance fields
.field private mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

.field private mCurrentFastScrollSection:Ljava/lang/String;

.field private mFastScrollFrameIndex:I

.field private final mFastScrollFrames:[I

.field private mFastScrollToTargetSectionRunnable:Ljava/lang/Runnable;

.field private mHasFastScrollTouchSettled:Z

.field private mHasFastScrollTouchSettledAtLeastOnce:Z

.field private mRv:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

.field private mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;

.field private mTargetFastScrollPosition:I

.field private mTargetFastScrollSection:Ljava/lang/String;

.field private mTrackedFastScrollViews:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mTargetFastScrollPosition:I

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mTrackedFastScrollViews:Ljava/util/HashSet;

    const/16 v0, 0xa

    .line 47
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mFastScrollFrames:[I

    .line 53
    new-instance v0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper$1;-><init>(Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;)V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;

    .line 67
    new-instance v0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper$2;-><init>(Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;)V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mFastScrollToTargetSectionRunnable:Ljava/lang/Runnable;

    .line 79
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mRv:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    .line 80
    iput-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mFastScrollFrameIndex:I

    return p0
.end method

.method static synthetic access$008(Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;)I
    .locals 2

    .line 23
    iget v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mFastScrollFrameIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mFastScrollFrameIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;)[I
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mFastScrollFrames:[I

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;)Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mRv:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;)Ljava/lang/Runnable;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$402(Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mCurrentFastScrollSection:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mTargetFastScrollSection:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mHasFastScrollTouchSettled:Z

    return p1
.end method

.method static synthetic access$702(Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mHasFastScrollTouchSettledAtLeastOnce:Z

    return p1
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->updateTrackedViewsFastScrollFocusState()V

    return-void
.end method

.method private resetTrackedViewsFastScrollFocusState()V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mTrackedFastScrollViews:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 216
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->resetTrackedViewsFastScrollFocusState(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resetTrackedViewsFastScrollFocusState(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 221
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private smoothSnapToPosition(IILcom/miui/home/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;)V
    .locals 6

    .line 110
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mRv:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 111
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mRv:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mFastScrollToTargetSectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 113
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mHasFastScrollTouchSettled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p3, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mCurrentFastScrollSection:Ljava/lang/String;

    .line 118
    iput-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mTargetFastScrollSection:Ljava/lang/String;

    .line 119
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->updateTrackedViewsFastScrollFocusState()V

    goto :goto_1

    .line 125
    :cond_0
    iput-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mCurrentFastScrollSection:Ljava/lang/String;

    .line 126
    iget-object v0, p3, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mTargetFastScrollSection:Ljava/lang/String;

    .line 127
    iput-boolean v2, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mHasFastScrollTouchSettled:Z

    .line 128
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->updateTrackedViewsFastScrollFocusState()V

    .line 133
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mRv:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mFastScrollToTargetSectionRunnable:Ljava/lang/Runnable;

    .line 134
    iget-boolean v3, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mHasFastScrollTouchSettledAtLeastOnce:Z

    if-eqz v3, :cond_1

    const-wide/16 v3, 0xc8

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x64

    .line 133
    :goto_0
    invoke-virtual {v0, v1, v3, v4}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 142
    :goto_1
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    .line 143
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->getFastScrollerSections()Ljava/util/List;

    move-result-object v0

    .line 144
    iget-object v1, p3, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    iget v1, v1, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 145
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p3, :cond_2

    move p2, v2

    goto :goto_2

    .line 147
    :cond_2
    iget-object p3, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mRv:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {p3}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getVerticalFadingEdgeLength()I

    move-result v0

    invoke-virtual {p3, v1, v0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getCurrentScrollY(II)I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 148
    :goto_2
    iget-object p3, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mFastScrollFrames:[I

    array-length p3, p3

    sub-int/2addr p2, p1

    int-to-float p1, p2

    .line 150
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    float-to-double v0, p1

    .line 151
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, p3

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    mul-double/2addr v0, v3

    double-to-int v0, v0

    move v1, p2

    move p2, v2

    :goto_3
    if-ge p2, p3, :cond_3

    .line 154
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mFastScrollFrames:[I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    aput v4, v3, p2

    sub-int/2addr v1, v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 157
    :cond_3
    iput v2, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mFastScrollFrameIndex:I

    .line 158
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mRv:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateTrackedViewsFastScrollFocusState()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mTrackedFastScrollViews:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 200
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->updateTrackedViewsFastScrollFocusState(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateTrackedViewsFastScrollFocusState(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 205
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 207
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mCurrentFastScrollSection:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    if-eqz v0, :cond_0

    .line 209
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mCurrentFastScrollSection:Ljava/lang/String;

    iget-object v0, v0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v2, v0

    .line 211
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onBindView(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mTrackedFastScrollViews:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mCurrentFastScrollSection:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mTargetFastScrollSection:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->resetTrackedViewsFastScrollFocusState(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_1

    .line 184
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->updateTrackedViewsFastScrollFocusState(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :goto_1
    return-void
.end method

.method onFastScrollCompleted()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mRv:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 167
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mRv:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mFastScrollToTargetSectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 170
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mHasFastScrollTouchSettled:Z

    .line 171
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mHasFastScrollTouchSettledAtLeastOnce:Z

    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mCurrentFastScrollSection:Ljava/lang/String;

    .line 173
    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mTargetFastScrollSection:Ljava/lang/String;

    const/4 v0, -0x1

    .line 174
    iput v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mTargetFastScrollPosition:I

    .line 176
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->resetTrackedViewsFastScrollFocusState()V

    return-void
.end method

.method onSetAdapter(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;)V
    .locals 0

    .line 84
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->setBindViewCallback(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$BindViewCallback;)V

    return-void
.end method

.method public onViewRecycle(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mTrackedFastScrollViews:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method setAllTrackedViewsFastScrollFocusState(Z)V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mTrackedFastScrollViews:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 226
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method smoothScrollToSection(IILcom/miui/home/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;)Z
    .locals 2

    .line 94
    iget v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mTargetFastScrollPosition:I

    iget-object v1, p3, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    iget v1, v1, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    if-eq v0, v1, :cond_0

    .line 95
    iget-object v0, p3, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    iget v0, v0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    iput v0, p0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->mTargetFastScrollPosition:I

    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->smoothSnapToPosition(IILcom/miui/home/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;)V

    const/4 p1, 0x1

    return p1

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->updateTrackedViewsFastScrollFocusState()V

    const/4 p1, 0x0

    return p1
.end method
