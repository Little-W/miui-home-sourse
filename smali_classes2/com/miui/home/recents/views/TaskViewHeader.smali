.class public Lcom/miui/home/recents/views/TaskViewHeader;
.super Landroid/widget/FrameLayout;
.source "TaskViewHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mAppInfoDescFormat:Ljava/lang/String;

.field mDismissView:Landroid/widget/TextView;

.field mHeaderBarHeight:I

.field mHeaderButtonPadding:I

.field mIconView:Landroid/widget/ImageView;

.field private mLockedImageView:Landroid/widget/ImageView;

.field mSecIconView:Landroid/widget/ImageView;

.field private mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

.field private mTask:Lcom/android/systemui/shared/recents/model/Task;

.field mTaskViewRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/TaskViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/TaskViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/recents/views/TaskViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 53
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTaskViewRect:Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 75
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/views/TaskViewHeader;->setWillNotDraw(Z)V

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 79
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f11002c

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mAppInfoDescFormat:Ljava/lang/String;

    const p2, 0x7f070613

    .line 80
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    .line 81
    new-instance p1, Lcom/miui/home/recents/util/SpringAnimationImpl;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/util/SpringAnimationImpl;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/views/TaskViewHeader;)Landroid/widget/ImageView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mLockedImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method private hasMultipleTasks(Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 310
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private resetViewState()V
    .locals 5

    .line 281
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 282
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mSecIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 283
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 284
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mLockedImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 285
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mDismissView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 287
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 288
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mSecIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 289
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/TaskViewHeader;->hasMultipleTasks(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v0

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 296
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mLockedImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 297
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mDismissView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 298
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mDismissView:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private setIconViewDescriptionAndListener(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mAppInfoDescFormat:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 185
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method public bindToTask(Lcom/android/systemui/shared/recents/model/Task;ZZ)V
    .locals 4

    .line 157
    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 159
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/TaskViewHeader;->hasMultipleTasks(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result p3

    const/16 v0, 0x8

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 160
    iget-object p3, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 162
    :cond_0
    iget-object p3, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object p3, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 164
    iget-object p3, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v3, p1, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 165
    iget-object p3, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 171
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/TaskViewHeader;->hasMultipleTasks(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 172
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 173
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mSecIconView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_1

    .line 175
    :cond_2
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/miui/home/recents/views/TaskViewHeader;->setIconViewDescriptionAndListener(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 179
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mLockedImageView:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean p2, p2, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    if-eqz p2, :cond_4

    move v0, v2

    :cond_4
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mLockedImageView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public getIconView()Landroid/widget/ImageView;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;
    .locals 0

    .line 302
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    return-object p0
.end method

.method public getSubIconView()Landroid/widget/ImageView;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mSecIconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 85
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 86
    invoke-static {}, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->getTaskViewCornerRadius()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    .line 87
    iget v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/miui/home/recents/views/TaskViewHeader;->setPadding(IIII)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/TaskViewHeader;->hasMultipleTasks(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 235
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/recents/messages/ShowApplicationInfoEvent;

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/messages/ShowApplicationInfoEvent;-><init>(Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [I

    return-object p0
.end method

.method public onDarkModeChange()V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mLockedImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f0802e6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 106
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a01ab

    .line 108
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    const v0, 0x7f0a034e

    .line 109
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mSecIconView:Landroid/widget/ImageView;

    const v0, 0x7f0a038f

    .line 110
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    const v0, 0x7f0a01f5

    .line 111
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mLockedImageView:Landroid/widget/ImageView;

    const v0, 0x7f0a0120

    .line 112
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mDismissView:Landroid/widget/TextView;

    .line 113
    iget v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/miui/home/recents/views/TaskViewHeader;->setPadding(IIII)V

    .line 115
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/TaskViewHeader;->setClipChildren(Z)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 120
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 122
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/TaskViewHeader;->hasMultipleTasks(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 123
    iget p1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    mul-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 125
    :cond_0
    iget p1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getWidth()I

    move-result p2

    add-int/2addr p1, p2

    :goto_0
    add-int/lit8 p1, p1, 0xa

    .line 127
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mLockedImageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p2

    iget-object p3, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mLockedImageView:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 128
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p3, p1

    sub-int/2addr p3, p2

    iget p1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    mul-int/lit8 p1, p1, 0x2

    sub-int p1, p3, p1

    .line 131
    :cond_1
    iget-object p3, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mLockedImageView:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getTop()I

    move-result p4

    add-int/2addr p2, p1

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mLockedImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBottom()I

    move-result p0

    invoke-virtual {p3, p1, p4, p2, p0}, Landroid/widget/ImageView;->layout(IIII)V

    return-void
.end method

.method public onTaskDataLoaded()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-nez v0, :cond_0

    return-void

    .line 198
    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/TaskViewHeader;->hasMultipleTasks(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/systemui/shared/recents/model/Task;->cti1Icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mSecIconView:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->cti2Icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mSecIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mSecIconView:Landroid/widget/ImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 204
    :cond_1
    iget-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 205
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    :cond_2
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mSecIconView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public reset()V
    .locals 2

    .line 94
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V

    .line 95
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewHeader;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 96
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewHeader;->setAlpha(F)V

    .line 97
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewHeader;->setScaleX(F)V

    .line 98
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewHeader;->setScaleY(F)V

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewHeader;->setTranslationX(F)V

    .line 100
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewHeader;->setTranslationY(F)V

    .line 101
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewHeader;->resetViewState()V

    return-void
.end method

.method public showOrHideLockImageView(Z)V
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mLockedImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mLockedImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    .line 242
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 243
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 244
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/views/TaskViewHeader$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/views/TaskViewHeader$1;-><init>(Lcom/miui/home/recents/views/TaskViewHeader;Z)V

    .line 245
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 254
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public startDismissTaskAnim()V
    .locals 6

    .line 258
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 259
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mSecIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 260
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 261
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mLockedImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 262
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mDismissView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 263
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mDismissView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public startResetTaskAnim()V
    .locals 6

    .line 267
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 268
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mSecIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 269
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 270
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mLockedImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 271
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mDismissView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/views/TaskViewHeader$2;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/views/TaskViewHeader$2;-><init>(Lcom/miui/home/recents/views/TaskViewHeader;)V

    .line 272
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 277
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method unbindFromTask(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 215
    iput-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 216
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mSecIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    .line 219
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 220
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mSecIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_0
    return-void
.end method
