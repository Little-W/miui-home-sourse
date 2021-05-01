.class public Lcom/miui/home/recents/views/TaskViewHeader;
.super Landroid/widget/FrameLayout;
.source "TaskViewHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field mAppInfoDescFormat:Ljava/lang/String;

.field mDismissView:Landroid/widget/TextView;

.field mHeaderBarHeight:I

.field mHeaderButtonPadding:I

.field mIconView:Landroid/widget/ImageView;

.field private mLockedImageView:Landroid/widget/ImageView;

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

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/TaskViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/TaskViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/recents/views/TaskViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 55
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTaskViewRect:Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 77
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/views/TaskViewHeader;->setWillNotDraw(Z)V

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 81
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f100029

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mAppInfoDescFormat:Ljava/lang/String;

    const p2, 0x7f070201

    .line 82
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    .line 83
    new-instance p1, Lcom/miui/home/recents/util/SpringAnimationImpl;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/util/SpringAnimationImpl;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    .line 84
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/util/Utilities;->getTaskViewCornerRadius(Landroid/content/Context;)F

    move-result p1

    const/high16 p2, 0x40800000    # 4.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/views/TaskViewHeader;)Landroid/widget/ImageView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mLockedImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method private resetViewState()V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 244
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 245
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mLockedImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 246
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mDismissView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 248
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 249
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 250
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mLockedImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 251
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mDismissView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 252
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mDismissView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public bindToTask(Lcom/android/systemui/shared/recents/model/Task;ZZ)V
    .locals 3

    .line 145
    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 147
    iget-object p3, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 148
    iget-object p3, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 153
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mAppInfoDescFormat:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    aput-object p1, v2, p3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 154
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 158
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mLockedImageView:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean p2, p2, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const/16 p3, 0x8

    :goto_0
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mLockedImageView:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean p2, p2, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    if-eqz p2, :cond_3

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public getIconView()Landroid/widget/ImageView;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 194
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/recents/messages/ShowApplicationInfoEvent;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {v0, v1}, Lcom/miui/home/recents/messages/ShowApplicationInfoEvent;-><init>(Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 0

    const/4 p1, 0x0

    .line 188
    new-array p1, p1, [I

    return-object p1
.end method

.method public onDarkModeChange()V
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mLockedImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080160

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 103
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a00e6

    .line 105
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    .line 106
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v0, 0x7f0a01d4

    .line 107
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    const v0, 0x7f0a0111

    .line 108
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mLockedImageView:Landroid/widget/ImageView;

    const v0, 0x7f0a0099

    .line 109
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mDismissView:Landroid/widget/TextView;

    .line 110
    iget v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/miui/home/recents/views/TaskViewHeader;->setPadding(IIII)V

    .line 112
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/TaskViewHeader;->setClipChildren(Z)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 117
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 119
    iget p1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getWidth()I

    move-result p2

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, 0xa

    .line 120
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p2, p1

    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mLockedImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p2, p1

    iget p1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    mul-int/lit8 p1, p1, 0x2

    sub-int p1, p2, p1

    .line 123
    :cond_0
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mLockedImageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getTop()I

    move-result p3

    iget-object p4, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mLockedImageView:Landroid/widget/ImageView;

    invoke-virtual {p4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p4, p1

    iget-object p5, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mLockedImageView:Landroid/widget/ImageView;

    invoke-virtual {p5}, Landroid/widget/ImageView;->getBottom()I

    move-result p5

    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/widget/ImageView;->layout(IIII)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onTaskDataLoaded()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .line 91
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V

    .line 92
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewHeader;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 93
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewHeader;->setAlpha(F)V

    .line 94
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewHeader;->setScaleX(F)V

    .line 95
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewHeader;->setScaleY(F)V

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewHeader;->setTranslationX(F)V

    .line 97
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewHeader;->setTranslationY(F)V

    .line 98
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewHeader;->resetViewState()V

    return-void
.end method

.method public showOrHideLockImageView(Z)V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mLockedImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mLockedImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    .line 206
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 207
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 208
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/views/TaskViewHeader$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/views/TaskViewHeader$1;-><init>(Lcom/miui/home/recents/views/TaskViewHeader;Z)V

    .line 209
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 218
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public startDismissTaskAnim()V
    .locals 6

    .line 222
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

    .line 223
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

    .line 224
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

    .line 225
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

    .line 226
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mDismissView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public startResetTaskAnim()V
    .locals 6

    .line 230
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

    .line 231
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

    .line 232
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

    .line 233
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

    .line 234
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method unbindFromTask(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 177
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    .line 179
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_0
    return-void
.end method
