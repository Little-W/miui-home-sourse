.class public Lcom/miui/home/recents/util/SpringAnimationUtils;
.super Ljava/lang/Object;
.source "SpringAnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/miui/home/recents/util/SpringAnimationUtils;


# instance fields
.field private final HEADER_HIDE:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

.field private final HEADER_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

.field private final HEADER_SCALE_DOWN:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

.field private final RECENTS_VIEW_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

.field private final RECENTS_VIEW_SCALE_DOWN:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

.field private final SHORTCUT_MENU_LAYER:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

.field private final SHORTCUT_MENU_LAYER_SCALE_DOWN:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

.field private final TASK_VIEW_HIDE:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

.field private final TASK_VIEW_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

.field private final THUMBNAIL_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

.field private final THUMBNAIL_SCALE_DOWN:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

.field private final THUMBNAIL_SCALE_UP:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

.field private final THUMBNAIL_SCALE_UP_PLUS:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

.field private mAppHoldTaskAnimRatio:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public mAppHoldTaskAnimRatioValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

.field private mAppHoldTaskAnimUpdateRunnable:Ljava/lang/Runnable;

.field private mAppHoldTaskAnimWidth:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public mAppHoldTaskAnimWidthValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

.field private mAppHoldTaskAnimX:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public mAppHoldTaskAnimXValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

.field private mAppHoldTaskAnimY:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public mAppHoldTaskAnimYValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

.field private mOnHandAnimUpdateRunnable:Ljava/lang/Runnable;

.field mOnHandSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public mOnHandValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 136
    new-instance v0, Lcom/miui/home/recents/util/SpringAnimationUtils;

    invoke-direct {v0}, Lcom/miui/home/recents/util/SpringAnimationUtils;-><init>()V

    sput-object v0, Lcom/miui/home/recents/util/SpringAnimationUtils;->sInstance:Lcom/miui/home/recents/util/SpringAnimationUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 15

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v7, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f8ccccd    # 1.1f

    const v4, 0x3f8ccccd    # 1.1f

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(Lcom/miui/home/recents/util/SpringAnimationUtils;FFFFF)V

    iput-object v7, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->THUMBNAIL_SCALE_UP_PLUS:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    .line 41
    new-instance v0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f866666    # 1.05f

    const v12, 0x3f866666    # 1.05f

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v8, v0

    move-object v9, p0

    invoke-direct/range {v8 .. v14}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(Lcom/miui/home/recents/util/SpringAnimationUtils;FFFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->THUMBNAIL_SCALE_UP:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    .line 42
    new-instance v0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(Lcom/miui/home/recents/util/SpringAnimationUtils;FFFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->THUMBNAIL_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    .line 43
    new-instance v0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const v11, 0x3f666666    # 0.9f

    const v12, 0x3f666666    # 0.9f

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(Lcom/miui/home/recents/util/SpringAnimationUtils;FFFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->THUMBNAIL_SCALE_DOWN:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    .line 51
    new-instance v0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const/4 v3, 0x0

    const v4, 0x3f733333    # 0.95f

    const v5, 0x3f733333    # 0.95f

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(Lcom/miui/home/recents/util/SpringAnimationUtils;FFFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->HEADER_SCALE_DOWN:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    .line 52
    new-instance v0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(Lcom/miui/home/recents/util/SpringAnimationUtils;FFFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->HEADER_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    .line 53
    new-instance v0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(Lcom/miui/home/recents/util/SpringAnimationUtils;FFFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->HEADER_HIDE:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    .line 55
    new-instance v0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const/4 v10, 0x0

    const v11, 0x3f733333    # 0.95f

    const v12, 0x3f733333    # 0.95f

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(Lcom/miui/home/recents/util/SpringAnimationUtils;FFFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->TASK_VIEW_HIDE:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    .line 56
    new-instance v0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(Lcom/miui/home/recents/util/SpringAnimationUtils;FFFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->TASK_VIEW_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    .line 58
    new-instance v0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const v10, 0x3f4ccccd    # 0.8f

    const v11, 0x3f6b851f    # 0.92f

    const v12, 0x3f6b851f    # 0.92f

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(Lcom/miui/home/recents/util/SpringAnimationUtils;FFFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->RECENTS_VIEW_SCALE_DOWN:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    .line 59
    new-instance v0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(Lcom/miui/home/recents/util/SpringAnimationUtils;FFFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->RECENTS_VIEW_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    .line 61
    new-instance v0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const/4 v10, 0x0

    const/high16 v11, 0x3f400000    # 0.75f

    const/high16 v12, 0x3f400000    # 0.75f

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(Lcom/miui/home/recents/util/SpringAnimationUtils;FFFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->SHORTCUT_MENU_LAYER_SCALE_DOWN:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    .line 62
    new-instance v0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(Lcom/miui/home/recents/util/SpringAnimationUtils;FFFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->SHORTCUT_MENU_LAYER:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    .line 69
    new-instance v0, Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->mOnHandValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    .line 70
    new-instance v0, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->mAppHoldTaskAnimXValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    .line 71
    new-instance v0, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->mAppHoldTaskAnimYValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    .line 72
    new-instance v0, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->mAppHoldTaskAnimWidthValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    .line 73
    new-instance v0, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->mAppHoldTaskAnimRatioValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/util/SpringAnimationUtils;)Ljava/lang/Runnable;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->mAppHoldTaskAnimUpdateRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/recents/util/SpringAnimationUtils;)Ljava/lang/Runnable;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->mOnHandAnimUpdateRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static calculateStiffFromResponse(F)F
    .locals 4

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const p0, 0x3ea3d70a    # 0.32f

    :cond_0
    const v0, 0x3c23d70a    # 0.01f

    .line 149
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    float-to-double v2, p0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    .line 150
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method private createAppHoldTaskAnim(Landroidx/dynamicanimation/animation/FloatValueHolder;Landroidx/dynamicanimation/animation/FloatValueHolder;Landroidx/dynamicanimation/animation/FloatValueHolder;Landroidx/dynamicanimation/animation/FloatValueHolder;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->mAppHoldTaskAnimX:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->createSpringAnimByValueHolder(Landroidx/dynamicanimation/animation/FloatValueHolder;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->mAppHoldTaskAnimX:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 82
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->createSpringAnimByValueHolder(Landroidx/dynamicanimation/animation/FloatValueHolder;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->mAppHoldTaskAnimY:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 83
    invoke-virtual {p0, p3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->createSpringAnimByValueHolder(Landroidx/dynamicanimation/animation/FloatValueHolder;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->mAppHoldTaskAnimWidth:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 84
    invoke-virtual {p0, p4}, Lcom/miui/home/recents/util/SpringAnimationUtils;->createSpringAnimByValueHolder(Landroidx/dynamicanimation/animation/FloatValueHolder;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->mAppHoldTaskAnimRatio:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 85
    iget-object p1, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->mAppHoldTaskAnimX:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p2, Lcom/miui/home/recents/util/SpringAnimationUtils$1;

    invoke-direct {p2, p0}, Lcom/miui/home/recents/util/SpringAnimationUtils$1;-><init>(Lcom/miui/home/recents/util/SpringAnimationUtils;)V

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;
    .locals 1

    .line 142
    sget-object v0, Lcom/miui/home/recents/util/SpringAnimationUtils;->sInstance:Lcom/miui/home/recents/util/SpringAnimationUtils;

    return-object v0
.end method

.method private setToState(Landroid/view/View;Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V
    .locals 1

    .line 419
    iget v0, p2, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->alpha:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 420
    iget v0, p2, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->scaleX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 421
    iget v0, p2, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->scaleY:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 422
    iget v0, p2, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->translationX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 423
    iget p2, p2, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->translationY:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private startAnimByChangingEnd(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/FloatValueHolder;FFF)V
    .locals 1

    .line 108
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result p2

    cmpl-float p2, p2, p3

    if-eqz p2, :cond_1

    .line 109
    :cond_0
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    .line 110
    invoke-virtual {p2, p4}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    .line 111
    invoke-static {p5}, Lcom/miui/home/recents/util/SpringAnimationUtils;->calculateStiffFromResponse(F)F

    move-result p4

    invoke-virtual {p2, p4}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    .line 112
    invoke-virtual {p2, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    .line 113
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 114
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result p2

    if-nez p2, :cond_1

    .line 115
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :cond_1
    return-void
.end method

.method private startTaskViewThumbnailSwipeAnim(Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 377
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setPivotX(F)V

    .line 378
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setPivotY(F)V

    .line 379
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object p1

    const v0, 0x3f19999a    # 0.6f

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addEndListener(Landroidx/dynamicanimation/animation/SpringAnimation;Ljava/lang/Runnable;)V
    .locals 1

    .line 269
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    new-instance v0, Lcom/miui/home/recents/util/SpringAnimationUtils$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/home/recents/util/SpringAnimationUtils$3;-><init>(Lcom/miui/home/recents/util/SpringAnimationUtils;Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/SpringAnimation;)V

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 280
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method public cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V
    .locals 2

    .line 261
    invoke-virtual {p1}, Lcom/miui/home/recents/util/SpringAnimationImpl;->getAllSpringAnim()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 262
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public cancelOnHandSpringAnim()V
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->mOnHandSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->mOnHandSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_0
    return-void
.end method

.method public createDefaultSpringAnim(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 1

    .line 194
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0, p3}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const p3, 0x3f5c28f6    # 0.86f

    .line 195
    invoke-virtual {v0, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p3

    const v0, 0x3ea3d70a    # 0.32f

    .line 196
    invoke-static {v0}, Lcom/miui/home/recents/util/SpringAnimationUtils;->calculateStiffFromResponse(F)F

    move-result v0

    invoke-virtual {p3, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p3

    .line 197
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v0, p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 198
    invoke-virtual {v0, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    return-object p1
.end method

.method public createSpringAnimByValueHolder(Landroidx/dynamicanimation/animation/FloatValueHolder;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 1

    .line 190
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    new-instance p1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    return-object p1
.end method

.method public getOnHandSpringAnim(Landroidx/dynamicanimation/animation/FloatValueHolder;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->mOnHandSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_0

    .line 157
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->createSpringAnimByValueHolder(Landroidx/dynamicanimation/animation/FloatValueHolder;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->mOnHandSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 158
    iget-object p1, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->mOnHandSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v0, 0x3b800000    # 0.00390625f

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 159
    iget-object p1, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->mOnHandSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Lcom/miui/home/recents/util/SpringAnimationUtils$2;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/util/SpringAnimationUtils$2;-><init>(Lcom/miui/home/recents/util/SpringAnimationUtils;)V

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 168
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->mOnHandSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p1
.end method

.method public getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 1

    .line 172
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "alpha"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "scaleY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_1

    :sswitch_2
    const-string v0, "scaleX"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "translationY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_1

    :sswitch_4
    const-string v0, "translationX"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p2, -0x1

    :goto_1
    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 182
    :pswitch_0
    invoke-virtual {p1}, Lcom/miui/home/recents/util/SpringAnimationImpl;->getScaleYSpringAnim()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    return-object p1

    .line 180
    :pswitch_1
    invoke-virtual {p1}, Lcom/miui/home/recents/util/SpringAnimationImpl;->getScaleXSpringAnim()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    return-object p1

    .line 178
    :pswitch_2
    invoke-virtual {p1}, Lcom/miui/home/recents/util/SpringAnimationImpl;->getTranslationYSpringAnim()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    return-object p1

    .line 176
    :pswitch_3
    invoke-virtual {p1}, Lcom/miui/home/recents/util/SpringAnimationImpl;->getTranslationXSpringAnim()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    return-object p1

    .line 174
    :pswitch_4
    invoke-virtual {p1}, Lcom/miui/home/recents/util/SpringAnimationImpl;->getAlphaSpringAnim()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x490b9c39 -> :sswitch_4
        -0x490b9c38 -> :sswitch_3
        -0x3621dfb2 -> :sswitch_2
        -0x3621dfb1 -> :sswitch_1
        0x589b15e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startAppHoldTaskAnim(Landroidx/dynamicanimation/animation/FloatValueHolder;Landroidx/dynamicanimation/animation/FloatValueHolder;Landroidx/dynamicanimation/animation/FloatValueHolder;Landroidx/dynamicanimation/animation/FloatValueHolder;FFFFFFLjava/lang/Runnable;)V
    .locals 7

    move-object v6, p0

    .line 99
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/util/SpringAnimationUtils;->createAppHoldTaskAnim(Landroidx/dynamicanimation/animation/FloatValueHolder;Landroidx/dynamicanimation/animation/FloatValueHolder;Landroidx/dynamicanimation/animation/FloatValueHolder;Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    move-object/from16 v0, p11

    .line 100
    iput-object v0, v6, Lcom/miui/home/recents/util/SpringAnimationUtils;->mAppHoldTaskAnimUpdateRunnable:Ljava/lang/Runnable;

    .line 101
    iget-object v1, v6, Lcom/miui/home/recents/util/SpringAnimationUtils;->mAppHoldTaskAnimX:Landroidx/dynamicanimation/animation/SpringAnimation;

    move-object v0, p0

    move-object v2, p1

    move v3, p5

    move/from16 v4, p9

    move/from16 v5, p10

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startAnimByChangingEnd(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/FloatValueHolder;FFF)V

    .line 102
    iget-object v1, v6, Lcom/miui/home/recents/util/SpringAnimationUtils;->mAppHoldTaskAnimY:Landroidx/dynamicanimation/animation/SpringAnimation;

    move-object v2, p2

    move v3, p6

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startAnimByChangingEnd(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/FloatValueHolder;FFF)V

    .line 103
    iget-object v1, v6, Lcom/miui/home/recents/util/SpringAnimationUtils;->mAppHoldTaskAnimWidth:Landroidx/dynamicanimation/animation/SpringAnimation;

    move-object v2, p3

    move v3, p7

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startAnimByChangingEnd(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/FloatValueHolder;FFF)V

    .line 104
    iget-object v1, v6, Lcom/miui/home/recents/util/SpringAnimationUtils;->mAppHoldTaskAnimRatio:Landroidx/dynamicanimation/animation/SpringAnimation;

    move-object v2, p4

    move v3, p8

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startAnimByChangingEnd(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/FloatValueHolder;FFF)V

    return-void
.end method

.method public startCancelDragExitRecentsAnim(Lcom/miui/home/recents/views/TaskStackView;)V
    .locals 4

    .line 412
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/TaskView;

    .line 413
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskViewHeader;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v0

    const v1, 0x3f7d70a4    # 0.99f

    const v2, 0x3e99999a    # 0.3f

    iget-object v3, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->HEADER_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startClosingWindowToRecentsAnim(Lcom/miui/home/recents/views/RecentsView;Lcom/android/systemui/shared/recents/model/Task;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V
    .locals 10

    .line 526
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getFirstTaskViewYWhenNoScroll()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    .line 527
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 528
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/views/TaskView;

    .line 529
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V

    .line 530
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget-object v4, p2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v3, 0x40c00000    # 6.0f

    div-float v3, v0, v3

    .line 533
    invoke-virtual {v2, v3}, Lcom/miui/home/recents/views/TaskView;->setTranslationY(F)V

    .line 534
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v5

    const v6, 0x3f5c28f6    # 0.86f

    const v2, 0x3ea3d70a    # 0.32f

    .line 535
    invoke-static {}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getAnimDurationRatio()F

    move-result v3

    mul-float v7, v3, v2

    iget-object v8, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->TASK_VIEW_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    move-object v4, p0

    move-object v9, p3

    .line 534
    invoke-virtual/range {v4 .. v9}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public startDragExitRecentsAnim(Lcom/miui/home/recents/views/TaskStackView;)V
    .locals 4

    .line 405
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/TaskView;

    .line 406
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskViewHeader;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v0

    const v1, 0x3f7d70a4    # 0.99f

    const v2, 0x3e99999a    # 0.3f

    iget-object v3, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->HEADER_HIDE:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startFsEnterRecentsZoomAnim(Lcom/miui/home/recents/views/RecentsView;)V
    .locals 5

    const/4 v0, 0x0

    .line 445
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 446
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/views/TaskView;

    .line 447
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskViewHeader;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v1

    const v2, 0x3f5c28f6    # 0.86f

    const v3, 0x3ea3d70a    # 0.32f

    iget-object v4, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->HEADER_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startFsRecentsMoveAnim(Lcom/miui/home/recents/views/RecentsView;)V
    .locals 3

    .line 541
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->RECENTS_VIEW_SCALE_DOWN:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const v1, 0x3f7d70a4    # 0.99f

    const v2, 0x3ea3d70a    # 0.32f

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    return-void
.end method

.method public startFsRecentsResetAnim(Lcom/miui/home/recents/views/RecentsView;)V
    .locals 3

    .line 546
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->RECENTS_VIEW_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const v1, 0x3f7d70a4    # 0.99f

    const v2, 0x3ea3d70a    # 0.32f

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    return-void
.end method

.method public startLaunchTaskSucceededAnim(Lcom/miui/home/recents/views/RecentsView;Lcom/android/systemui/shared/recents/model/Task;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V
    .locals 16

    move-object/from16 v0, p2

    .line 510
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/RecentsView;->getHeight()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/RecentsView;->getFirstTaskViewYWhenNoScroll()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    .line 511
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 512
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskView;

    .line 513
    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v4

    move-object/from16 v12, p0

    invoke-virtual {v12, v4}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V

    const/4 v4, 0x2

    .line 514
    invoke-static {v3, v4}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->setTaskViewLayerType(Lcom/miui/home/recents/views/TaskView;I)V

    .line 515
    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget-object v5, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 518
    :cond_0
    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v4

    const v13, 0x3f5c28f6    # 0.86f

    const v5, 0x3ea3d70a    # 0.32f

    .line 519
    invoke-static {}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getAnimDurationRatio()F

    move-result v6

    mul-float v14, v6, v5

    new-instance v15, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 520
    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskView;->getTranslationY()F

    move-result v3

    const/high16 v5, 0x40c00000    # 6.0f

    div-float v5, v1, v5

    add-float v11, v3, v5

    move-object v5, v15

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v11}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(Lcom/miui/home/recents/util/SpringAnimationUtils;FFFFF)V

    move-object/from16 v5, p0

    move-object v6, v4

    move v7, v13

    move v8, v14

    move-object v9, v15

    move-object/from16 v10, p3

    .line 518
    invoke-virtual/range {v5 .. v10}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v12, p0

    return-void
.end method

.method public startOnHandSpringAnim(Landroidx/dynamicanimation/animation/FloatValueHolder;FFFLjava/lang/Runnable;)V
    .locals 1

    .line 559
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getOnHandSpringAnim(Landroidx/dynamicanimation/animation/FloatValueHolder;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    .line 560
    iput-object p5, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->mOnHandAnimUpdateRunnable:Ljava/lang/Runnable;

    .line 561
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result p5

    if-nez p5, :cond_0

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result p1

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_1

    .line 562
    :cond_0
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    .line 563
    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    .line 564
    invoke-static {p4}, Lcom/miui/home/recents/util/SpringAnimationUtils;->calculateStiffFromResponse(F)F

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    .line 565
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    .line 566
    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 567
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result p1

    if-nez p1, :cond_1

    .line 568
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :cond_1
    return-void
.end method

.method public startRemoveTaskMenuAnim(Lcom/miui/home/recents/views/TaskStackView;Lcom/miui/home/recents/views/TaskView;Z)V
    .locals 7

    .line 307
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/views/TaskView;

    .line 308
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 309
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const v4, 0x3e99999a    # 0.3f

    const v5, 0x3f7d70a4    # 0.99f

    if-eq v1, p2, :cond_1

    .line 311
    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/TaskView;->setPivotX(F)V

    .line 312
    invoke-virtual {v1, v3}, Lcom/miui/home/recents/views/TaskView;->setPivotY(F)V

    if-eqz p3, :cond_0

    .line 314
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->TASK_VIEW_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-virtual {p0, v1, v5, v4, v2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    goto :goto_0

    .line 317
    :cond_0
    iget-object v2, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->TASK_VIEW_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-direct {p0, v1, v2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->setToState(Landroid/view/View;Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    goto :goto_0

    .line 320
    :cond_1
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/miui/home/recents/views/TaskViewHeader;->setPivotX(F)V

    .line 321
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/views/TaskViewHeader;->setPivotY(F)V

    .line 322
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setPivotX(F)V

    .line 323
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setPivotY(F)V

    if-eqz p3, :cond_2

    .line 325
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskViewHeader;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->HEADER_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-virtual {p0, v2, v5, v4, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    .line 327
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v1

    const v2, 0x3ee66666    # 0.45f

    const/high16 v3, 0x3f000000    # 0.5f

    iget-object v4, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->THUMBNAIL_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    goto/16 :goto_0

    .line 330
    :cond_2
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->HEADER_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-direct {p0, v2, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->setToState(Landroid/view/View;Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    .line 331
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->THUMBNAIL_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-direct {p0, v1, v2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->setToState(Landroid/view/View;Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public startShortcutMenuLayerFadeInAnim(Lcom/miui/home/launcher/ShortcutMenuLayer;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V
    .locals 7

    .line 436
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setPivotX(F)V

    .line 437
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setPivotY(F)V

    .line 438
    iget-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->SHORTCUT_MENU_LAYER_SCALE_DOWN:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/util/SpringAnimationUtils;->setToState(Landroid/view/View;Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    .line 439
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v2

    .line 440
    invoke-static {}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getAnimDurationRatio()F

    move-result p1

    const v0, 0x3eb33333    # 0.35f

    mul-float v4, p1, v0

    iget-object v5, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->SHORTCUT_MENU_LAYER:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const v3, 0x3f7d70a4    # 0.99f

    move-object v1, p0

    move-object v6, p2

    .line 439
    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    return-void
.end method

.method public startShortcutMenuLayerFadeOutAnim(Lcom/miui/home/launcher/ShortcutMenuLayer;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V
    .locals 7

    .line 427
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setPivotX(F)V

    .line 428
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setPivotY(F)V

    .line 429
    iget-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->SHORTCUT_MENU_LAYER:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/util/SpringAnimationUtils;->setToState(Landroid/view/View;Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    .line 430
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v2

    .line 431
    invoke-static {}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getAnimDurationRatio()F

    move-result p1

    const/high16 v0, 0x3e800000    # 0.25f

    mul-float v4, p1, v0

    iget-object v5, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->SHORTCUT_MENU_LAYER_SCALE_DOWN:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const v3, 0x3f7d70a4    # 0.99f

    move-object v1, p0

    move-object v6, p2

    .line 430
    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    return-void
.end method

.method public startShowTaskMenuAnim(Lcom/miui/home/recents/views/TaskStackView;Lcom/miui/home/recents/views/TaskView;)V
    .locals 7

    .line 285
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/views/TaskView;

    .line 286
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 287
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const v4, 0x3f7d70a4    # 0.99f

    const v5, 0x3e99999a    # 0.3f

    if-eq v1, p2, :cond_0

    .line 289
    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/TaskView;->setPivotX(F)V

    .line 290
    invoke-virtual {v1, v3}, Lcom/miui/home/recents/views/TaskView;->setPivotY(F)V

    .line 291
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->TASK_VIEW_HIDE:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-virtual {p0, v1, v4, v5, v2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/miui/home/recents/views/TaskViewHeader;->setPivotX(F)V

    .line 295
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/views/TaskViewHeader;->setPivotY(F)V

    .line 296
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskViewHeader;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->HEADER_SCALE_DOWN:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    .line 298
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setPivotX(F)V

    .line 299
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setPivotY(F)V

    .line 300
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v1

    const v2, 0x3f4ccccd    # 0.8f

    iget-object v3, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->THUMBNAIL_SCALE_UP:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-virtual {p0, v1, v2, v5, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public startTaskViewScaleDownMenuModeAnim(Lcom/miui/home/recents/views/TaskView;)V
    .locals 3

    .line 345
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setPivotX(F)V

    .line 346
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setPivotY(F)V

    .line 347
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->THUMBNAIL_SCALE_UP:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const v1, 0x3f4ccccd    # 0.8f

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    return-void
.end method

.method public startTaskViewScaleUpMenuModeAnim(Lcom/miui/home/recents/views/TaskView;)V
    .locals 3

    .line 338
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setPivotX(F)V

    .line 339
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setPivotY(F)V

    .line 340
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->THUMBNAIL_SCALE_UP_PLUS:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const v1, 0x3f4ccccd    # 0.8f

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    return-void
.end method

.method public startTaskViewSnapAnim(Lcom/miui/home/recents/views/TaskView;ZLjava/lang/Runnable;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 4

    if-eqz p1, :cond_1

    .line 395
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v0

    const v1, 0x3f666666    # 0.9f

    const v2, 0x3e99999a    # 0.3f

    iget-object v3, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->TASK_VIEW_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    .line 397
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object p1

    if-eqz p2, :cond_0

    const-string p2, "translationX"

    goto :goto_0

    :cond_0
    const-string p2, "translationY"

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    .line 398
    invoke-virtual {p0, p1, p3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->addEndListener(Landroidx/dynamicanimation/animation/SpringAnimation;Ljava/lang/Runnable;)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public startTaskViewSpringAnim(Lcom/miui/home/recents/views/TaskView;IFFFFFFFLjava/lang/Runnable;)V
    .locals 12

    move-object v7, p0

    move-object v8, p1

    .line 576
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskView;->setPivotX(F)V

    .line 577
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskView;->setPivotY(F)V

    .line 578
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v9

    .line 579
    invoke-static {}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getAnimDurationRatio()F

    move-result v0

    mul-float v10, p9, v0

    new-instance v11, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    move-object v0, v11

    move-object v1, p0

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(Lcom/miui/home/recents/util/SpringAnimationUtils;FFFFF)V

    move/from16 v0, p8

    .line 578
    invoke-virtual {p0, v9, v0, v10, v11}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    .line 582
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v0

    const-string v1, "translationY"

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    move-object/from16 v1, p10

    .line 583
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->addEndListener(Landroidx/dynamicanimation/animation/SpringAnimation;Ljava/lang/Runnable;)V

    return-void
.end method

.method public startTaskViewSwipeAnim(Lcom/miui/home/recents/views/TaskView;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 372
    iget-object p2, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->THUMBNAIL_SCALE_UP:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->THUMBNAIL_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startTaskViewThumbnailSwipeAnim(Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    return-void
.end method

.method public startTaskViewSwipeCancelAnim(Lcom/miui/home/recents/views/TaskView;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 386
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setPivotX(F)V

    .line 387
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setPivotY(F)V

    .line 388
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object p1

    const v0, 0x3f19999a    # 0.6f

    const/high16 v1, 0x3f000000    # 0.5f

    iget-object v2, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->TASK_VIEW_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    :cond_0
    return-void
.end method

.method public startTaskViewTouchDownAnim(Lcom/miui/home/recents/views/TaskView;)V
    .locals 7

    if-eqz p1, :cond_0

    .line 353
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setPivotX(F)V

    .line 354
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setPivotY(F)V

    .line 355
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v2

    const v3, 0x3f19999a    # 0.6f

    const/high16 v4, 0x3f000000    # 0.5f

    iget-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->THUMBNAIL_SCALE_DOWN:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    iget v5, v0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->scaleX:F

    const-string v6, "scaleX"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFFLjava/lang/String;)V

    .line 357
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v1

    const v2, 0x3f19999a    # 0.6f

    const/high16 v3, 0x3f000000    # 0.5f

    iget-object p1, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->THUMBNAIL_SCALE_DOWN:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    iget v4, p1, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->scaleY:F

    const-string v5, "scaleY"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFFLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startTaskViewTouchMoveOrUpAnim(Lcom/miui/home/recents/views/TaskView;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 364
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setPivotX(F)V

    .line 365
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setPivotY(F)V

    .line 366
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object p1

    const v0, 0x3f19999a    # 0.6f

    const/high16 v1, 0x3f000000    # 0.5f

    iget-object v2, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->THUMBNAIL_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    :cond_0
    return-void
.end method

.method public startToHomeAnim(Lcom/miui/home/recents/views/RecentsView;Ljava/lang/Runnable;)Z
    .locals 13

    const/4 v0, 0x0

    move v1, v0

    .line 471
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 473
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/views/TaskView;

    .line 474
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V

    .line 476
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v2

    const v3, 0x3f5c28f6    # 0.86f

    const v4, 0x3ea3d70a    # 0.32f

    new-instance v12, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 478
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40c00000    # 6.0f

    div-float v11, v5, v6

    move-object v5, v12

    move-object v6, p0

    invoke-direct/range {v5 .. v11}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(Lcom/miui/home/recents/util/SpringAnimationUtils;FFFFF)V

    .line 476
    invoke-virtual {p0, v2, v3, v4, v12}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    .line 480
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v1

    const-string v2, "translationY"

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    const v2, 0x461c4000    # 10000.0f

    .line 481
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    if-nez v0, :cond_0

    .line 483
    invoke-virtual {p0, v1, p2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->addEndListener(Landroidx/dynamicanimation/animation/SpringAnimation;Ljava/lang/Runnable;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public startToHomeAnimSlideToLeft(Lcom/miui/home/recents/views/RecentsView;Ljava/lang/Runnable;)Z
    .locals 13

    const/4 v0, 0x0

    move v1, v0

    .line 491
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 493
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/views/TaskView;

    .line 494
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V

    .line 496
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v2

    const v3, 0x3f7d70a4    # 0.99f

    const v4, 0x3ecccccd    # 0.4f

    new-instance v12, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 498
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getWidth()I

    move-result v5

    neg-int v5, v5

    mul-int/lit8 v5, v5, 0x2

    int-to-float v10, v5

    const/4 v11, 0x0

    move-object v5, v12

    move-object v6, p0

    invoke-direct/range {v5 .. v11}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(Lcom/miui/home/recents/util/SpringAnimationUtils;FFFFF)V

    .line 496
    invoke-virtual {p0, v2, v3, v4, v12}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    .line 500
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v1

    const-string v2, "translationX"

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    if-nez v0, :cond_0

    .line 502
    invoke-virtual {p0, v1, p2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->addEndListener(Landroidx/dynamicanimation/animation/SpringAnimation;Ljava/lang/Runnable;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public startToRecentsAnim(Lcom/miui/home/recents/views/RecentsView;Ljava/lang/Runnable;)V
    .locals 6

    const/4 v0, 0x0

    .line 453
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 454
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/views/TaskView;

    .line 456
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V

    .line 458
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v2

    const v3, 0x3f5c28f6    # 0.86f

    const v4, 0x3e4ccccd    # 0.2f

    iget-object v5, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->TASK_VIEW_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    .line 461
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v1

    const-string v2, "translationY"

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    const v2, 0x459c4000    # 5000.0f

    .line 462
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    if-nez v0, :cond_0

    .line 464
    invoke-virtual {p0, v1, p2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->addEndListener(Landroidx/dynamicanimation/animation/SpringAnimation;Ljava/lang/Runnable;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFFLjava/lang/String;)V
    .locals 0

    .line 204
    invoke-virtual {p0, p1, p5}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    .line 205
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p5

    .line 206
    invoke-virtual {p5, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    .line 207
    invoke-static {p3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->calculateStiffFromResponse(F)F

    move-result p3

    invoke-virtual {p2, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    .line 208
    invoke-virtual {p2, p4}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    .line 209
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 210
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result p2

    if-nez p2, :cond_0

    .line 211
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :cond_0
    return-void
.end method

.method public updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 257
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    return-void
.end method

.method public updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V
    .locals 8

    .line 217
    invoke-virtual {p1}, Lcom/miui/home/recents/util/SpringAnimationImpl;->getTargetView()Landroid/view/View;

    move-result-object v0

    const-string v1, "alpha"

    .line 218
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p4, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->alpha:F

    .line 219
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 220
    :cond_0
    iget v6, p4, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->alpha:F

    const-string v7, "alpha"

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFFLjava/lang/String;)V

    if-eqz p5, :cond_1

    const-string v1, "alpha"

    .line 222
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {p5, v1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addAnimation(Ljava/lang/Object;)V

    :cond_1
    const-string v1, "scaleX"

    .line 225
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p4, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->scaleX:F

    .line 226
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    .line 227
    :cond_2
    iget v6, p4, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->scaleX:F

    const-string v7, "scaleX"

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFFLjava/lang/String;)V

    if-eqz p5, :cond_3

    const-string v1, "scaleX"

    .line 229
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {p5, v1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addAnimation(Ljava/lang/Object;)V

    :cond_3
    const-string v1, "scaleY"

    .line 232
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, p4, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->scaleY:F

    .line 233
    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5

    .line 234
    :cond_4
    iget v6, p4, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->scaleY:F

    const-string v7, "scaleY"

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFFLjava/lang/String;)V

    if-eqz p5, :cond_5

    const-string v1, "scaleY"

    .line 236
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {p5, v1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addAnimation(Ljava/lang/Object;)V

    :cond_5
    const-string v1, "translationX"

    .line 239
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v1

    if-nez v1, :cond_6

    iget v1, p4, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->translationX:F

    .line 240
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_7

    .line 241
    :cond_6
    iget v6, p4, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->translationX:F

    const-string v7, "translationX"

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFFLjava/lang/String;)V

    if-eqz p5, :cond_7

    const-string v1, "translationX"

    .line 243
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {p5, v1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addAnimation(Ljava/lang/Object;)V

    :cond_7
    const-string v1, "translationY"

    .line 246
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v1

    if-nez v1, :cond_8

    iget v1, p4, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->translationY:F

    .line 247
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_9

    .line 248
    :cond_8
    iget v5, p4, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->translationY:F

    const-string v6, "translationY"

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFFLjava/lang/String;)V

    if-eqz p5, :cond_9

    const-string p2, "translationY"

    .line 250
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addAnimation(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method
