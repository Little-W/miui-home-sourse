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

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/TaskViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/TaskViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/recents/views/TaskViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTaskViewRect:Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 76
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/views/TaskViewHeader;->setWillNotDraw(Z)V

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 80
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f11002c

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mAppInfoDescFormat:Ljava/lang/String;

    const p2, 0x7f0705ae

    .line 81
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    .line 82
    new-instance p1, Lcom/miui/home/recents/util/SpringAnimationImpl;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/util/SpringAnimationImpl;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    .line 83
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

    .line 42
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mLockedImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method private hasMultipleTasks(Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 311
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private resetViewState()V
    .locals 5

    .line 282
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 283
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mSecIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 284
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 285
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mLockedImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 286
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mDismissView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 288
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 289
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mSecIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 290
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/TaskViewHeader;->hasMultipleTasks(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v0

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 297
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mLockedImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 298
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mDismissView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 299
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mDismissView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private setIconViewDescriptionAndListener(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 4

    .line 180
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mAppInfoDescFormat:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 181
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method public bindToTask(Lcom/android/systemui/shared/recents/model/Task;ZZ)V
    .locals 3

    .line 154
    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 156
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/TaskViewHeader;->hasMultipleTasks(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result p3

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 157
    iget-object p3, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 159
    :cond_0
    iget-object p3, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iget-object p3, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v2, p1, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 161
    iget-object p3, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 167
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/TaskViewHeader;->hasMultipleTasks(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 168
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    iget-object p3, p1, Lcom/android/systemui/shared/recents/model/Task;->cti1TitleDescription:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/miui/home/recents/views/TaskViewHeader;->setIconViewDescriptionAndListener(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 169
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mSecIconView:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->cti2TitleDescription:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/miui/home/recents/views/TaskViewHeader;->setIconViewDescriptionAndListener(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_1

    .line 171
    :cond_2
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/miui/home/recents/views/TaskViewHeader;->setIconViewDescriptionAndListener(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 175
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mLockedImageView:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean p2, p2, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    if-eqz p2, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mLockedImageView:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean p2, p2, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    if-eqz p2, :cond_5

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_5
    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public getIconView()Landroid/widget/ImageView;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    return-object v0
.end method

.method public getSubIconView()Landroid/widget/ImageView;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mSecIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/TaskViewHeader;->hasMultipleTasks(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 231
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

    .line 225
    new-array p1, p1, [I

    return-object p1
.end method

.method public onDarkModeChange()V
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mLockedImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0802c6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 102
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a019e

    .line 104
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    .line 105
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v0, 0x7f0a0345

    .line 106
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mSecIconView:Landroid/widget/ImageView;

    .line 107
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mSecIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v0, 0x7f0a0389

    .line 108
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    const v0, 0x7f0a01e4

    .line 109
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mLockedImageView:Landroid/widget/ImageView;

    const v0, 0x7f0a0111

    .line 110
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mDismissView:Landroid/widget/TextView;

    .line 111
    iget v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/miui/home/recents/views/TaskViewHeader;->setPadding(IIII)V

    .line 113
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/TaskViewHeader;->setClipChildren(Z)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 118
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 120
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/TaskViewHeader;->hasMultipleTasks(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 121
    iget p1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0xa

    goto :goto_0

    .line 123
    :cond_0
    iget p1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getWidth()I

    move-result p2

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, 0xa

    .line 125
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 126
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

    .line 128
    :cond_1
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
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/TaskViewHeader;->hasMultipleTasks(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/systemui/shared/recents/model/Task;->cti1Icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 196
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mSecIconView:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->cti2Icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mSecIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mSecIconView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 200
    :cond_1
    iget-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 201
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mSecIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public reset()V
    .locals 2

    .line 90
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V

    .line 91
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewHeader;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 92
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewHeader;->setAlpha(F)V

    .line 93
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewHeader;->setScaleX(F)V

    .line 94
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewHeader;->setScaleY(F)V

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewHeader;->setTranslationX(F)V

    .line 96
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewHeader;->setTranslationY(F)V

    .line 97
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewHeader;->resetViewState()V

    return-void
.end method

.method public showOrHideLockImageView(Z)V
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mLockedImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mLockedImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    .line 243
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 244
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 245
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/views/TaskViewHeader$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/views/TaskViewHeader$1;-><init>(Lcom/miui/home/recents/views/TaskViewHeader;Z)V

    .line 246
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 255
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public startDismissTaskAnim()V
    .locals 6

    .line 259
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

    .line 260
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

    .line 261
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

    .line 262
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

    .line 263
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

    .line 264
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mDismissView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public startResetTaskAnim()V
    .locals 6

    .line 268
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

    .line 269
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

    .line 270
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

    .line 271
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

    .line 272
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

    .line 273
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method unbindFromTask(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 211
    iput-object v0, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 212
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mSecIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    .line 215
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 216
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewHeader;->mSecIconView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_0
    return-void
.end method
