.class public Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;
.super Lcom/miui/home/launcher/ThumbnailViewAdapter;
.source "RecommendShortcutsAdapter.java"


# instance fields
.field private final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

.field private mRecommendList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/commercial/recommend/RecommendController;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ThumbnailViewAdapter;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->mRecommendList:Ljava/util/ArrayList;

    .line 54
    invoke-static {p1}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/Application;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 55
    iput-object p2, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    return-void
.end method

.method private changeLoadingTitleToAdTitleWithAnim(Lcom/miui/home/launcher/ShortcutIcon;Ljava/lang/CharSequence;)V
    .locals 4

    const v0, 0x7f0a0149

    .line 132
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ShortcutIcon;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "alpha"

    const/4 v1, 0x2

    .line 133
    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 134
    new-instance v2, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseOutInterpolater;

    invoke-direct {v2}, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseOutInterpolater;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xe6

    .line 135
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 136
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    const-string v0, "alpha"

    .line 138
    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 139
    new-instance v1, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseInInterpolater;

    invoke-direct {v1}, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseInInterpolater;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 140
    new-instance v1, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter$2;-><init>(Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 146
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 147
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 148
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private changeLoadingViewToAdViewWithAnim(Lcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)V
    .locals 1

    .line 103
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->hideLoadingViewWithAnim(Lcom/miui/home/launcher/ShortcutIcon;)V

    .line 104
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->showAdViewWithAnim(Lcom/miui/home/launcher/ShortcutIcon;)V

    .line 105
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->changeLoadingTitleToAdTitleWithAnim(Lcom/miui/home/launcher/ShortcutIcon;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private getShortcutIcon(Landroid/view/View;Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;Landroid/view/ViewGroup;)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 1

    if-eqz p1, :cond_1

    .line 152
    invoke-virtual {p2}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    check-cast p1, Lcom/miui/home/launcher/ShortcutIcon;

    .line 164
    invoke-virtual {p2, p1, p3}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->setBuddyIconView(Lcom/miui/home/launcher/ShortcutIcon;Landroid/view/ViewGroup;)V

    goto :goto_1

    :cond_1
    :goto_0
    const p1, 0x7f0d0125

    .line 153
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1, v0, p3, p2}, Lcom/miui/home/launcher/ShortcutIcon;->fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    .line 155
    invoke-virtual {p2, p1, p3}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->setBuddyIconView(Lcom/miui/home/launcher/ShortcutIcon;Landroid/view/ViewGroup;)V

    .line 156
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getDefaultLayerType()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 p3, 0x1

    .line 157
    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/ShortcutIcon;->setSkipNextAutoLayoutAnimation(Z)V

    const p3, 0x3f4ccccd    # 0.8f

    .line 158
    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/ShortcutIcon;->setScaleX(F)V

    .line 159
    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/ShortcutIcon;->setScaleY(F)V

    .line 160
    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/ShortcutIcon;->setTouchScaleFactor(F)V

    const/high16 p3, 0x3f800000    # 1.0f

    .line 161
    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/ShortcutIcon;->setAlpha(F)V

    .line 167
    :goto_1
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->updateBuddyIconView(Lcom/miui/home/launcher/Launcher;)V

    .line 169
    invoke-virtual {p2}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    return-object p1
.end method

.method private hideLoadingViewWithAnim(Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 3

    const v0, 0x7f0a0179

    .line 109
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ShortcutIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    .line 110
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 111
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter$1;-><init>(Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;Lcom/miui/home/launcher/ShortcutIcon;Landroid/widget/FrameLayout;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1cc

    .line 119
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private needChangeLoadingViewToAdViewWithAnim(Landroid/view/View;Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)Z
    .locals 2

    .line 91
    invoke-virtual {p2}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->isLoading()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 93
    instance-of v1, p1, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p1}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->isLoading()Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private showAdViewWithAnim(Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 2

    const v0, 0x7f0a0145

    .line 123
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ShortcutIcon;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    const v0, 0x3f333333    # 0.7f

    .line 126
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 127
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 128
    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1cc

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->mRecommendList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->getItem(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->mRecommendList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    .line 177
    invoke-virtual {p1}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->isLoading()Z

    move-result v0

    .line 179
    invoke-direct {p0, p2, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->needChangeLoadingViewToAdViewWithAnim(Landroid/view/View;Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)Z

    move-result v1

    .line 180
    invoke-direct {p0, p2, p1, p3}, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->getShortcutIcon(Landroid/view/View;Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;Landroid/view/ViewGroup;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p2

    if-eqz v1, :cond_1

    .line 183
    invoke-direct {p0, p2, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->changeLoadingViewToAdViewWithAnim(Lcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)V

    goto :goto_0

    :cond_1
    const p1, 0x7f0a0145

    .line 185
    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/ShortcutIcon;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const p3, 0x7f0a0179

    .line 186
    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/ShortcutIcon;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    const v1, 0x7f0a0149

    .line 187
    invoke-virtual {p2, v1}, Lcom/miui/home/launcher/ShortcutIcon;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 189
    invoke-virtual {p3, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 190
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 191
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 192
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutIcon;->startLoadingAnim()V

    goto :goto_0

    .line 194
    :cond_2
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    invoke-virtual {p3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 3

    const/4 v0, 0x0

    .line 66
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->mRecommendList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    .line 68
    invoke-virtual {v1}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 69
    invoke-virtual {v1, v2, v2}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->setBuddyIconView(Lcom/miui/home/launcher/ShortcutIcon;Landroid/view/ViewGroup;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_1
    invoke-super {p0}, Lcom/miui/home/launcher/ThumbnailViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public refreshList()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->mRecommendList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 60
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getFilteredRecommendAppsContents()Ljava/util/ArrayList;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->mRecommendList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 62
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public remove(Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->mRecommendList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public showLoadingView()V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->mRecommendList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 204
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->mRecommendList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getLoadingContents()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 205
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->notifyDataSetChanged()V

    return-void
.end method
