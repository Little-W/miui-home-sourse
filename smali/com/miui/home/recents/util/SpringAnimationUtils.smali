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
.field public static final THUMBNAIL_SCALE_UP:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

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

.field private final THUMBNAIL_SCALE_UP_PLUS:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 46
    new-instance v6, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f866666    # 1.05f

    const v3, 0x3f866666    # 1.05f

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    sput-object v6, Lcom/miui/home/recents/util/SpringAnimationUtils;->THUMBNAIL_SCALE_UP:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    .line 83
    new-instance v0, Lcom/miui/home/recents/util/SpringAnimationUtils;

    invoke-direct {v0}, Lcom/miui/home/recents/util/SpringAnimationUtils;-><init>()V

    sput-object v0, Lcom/miui/home/recents/util/SpringAnimationUtils;->sInstance:Lcom/miui/home/recents/util/SpringAnimationUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 13

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v6, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f8ccccd    # 1.1f

    const v3, 0x3f8ccccd    # 1.1f

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    iput-object v6, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->THUMBNAIL_SCALE_UP_PLUS:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    .line 47
    new-instance v0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->THUMBNAIL_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    .line 48
    new-instance v0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f733333    # 0.95f

    const v4, 0x3f733333    # 0.95f

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->THUMBNAIL_SCALE_DOWN:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    .line 53
    new-instance v0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const/4 v8, 0x0

    const v9, 0x3f7d70a4    # 0.99f

    const v10, 0x3f7d70a4    # 0.99f

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->HEADER_SCALE_DOWN:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    .line 54
    new-instance v0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->HEADER_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    .line 55
    new-instance v0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->HEADER_HIDE:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    .line 57
    new-instance v0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const/4 v2, 0x0

    const v3, 0x3f733333    # 0.95f

    const v4, 0x3f733333    # 0.95f

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->TASK_VIEW_HIDE:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    .line 58
    new-instance v0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->TASK_VIEW_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    .line 60
    new-instance v0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const v2, 0x3f4ccccd    # 0.8f

    const v3, 0x3f6b851f    # 0.92f

    const v4, 0x3f6b851f    # 0.92f

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->RECENTS_VIEW_SCALE_DOWN:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    .line 61
    new-instance v0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->RECENTS_VIEW_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    .line 63
    new-instance v0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    .line 64
    invoke-virtual {v1}, Lcom/miui/home/recents/OverviewState;->getShortcutMenuLayerScale()F

    move-result v3

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v1}, Lcom/miui/home/recents/OverviewState;->getShortcutMenuLayerScale()F

    move-result v4

    const/4 v2, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->SHORTCUT_MENU_LAYER_SCALE_DOWN:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    .line 65
    new-instance v0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->SHORTCUT_MENU_LAYER:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    return-void
.end method

.method public static calculateStiffFromResponse(F)F
    .locals 4

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const p0, 0x3ea3d70a    # 0.32f

    :cond_0
    const v0, 0x3c23d70a    # 0.01f

    .line 96
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    float-to-double v2, p0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    .line 97
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;
    .locals 1

    .line 89
    sget-object v0, Lcom/miui/home/recents/util/SpringAnimationUtils;->sInstance:Lcom/miui/home/recents/util/SpringAnimationUtils;

    return-object v0
.end method

.method private setToState(Landroid/view/View;Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V
    .locals 1

    .line 344
    iget v0, p2, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->alpha:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 345
    iget v0, p2, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->scaleX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 346
    iget v0, p2, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->scaleY:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 347
    iget v0, p2, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->translationX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 348
    iget p2, p2, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->translationY:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private startTaskViewThumbnailSwipeAnim(Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 302
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

    .line 303
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setPivotY(F)V

    .line 304
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

    .line 194
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    new-instance v0, Lcom/miui/home/recents/util/SpringAnimationUtils$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/home/recents/util/SpringAnimationUtils$1;-><init>(Lcom/miui/home/recents/util/SpringAnimationUtils;Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/SpringAnimation;)V

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 205
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method public cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V
    .locals 2

    .line 186
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

    .line 187
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public createDefaultSpringAnim(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 1

    .line 119
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0, p3}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const p3, 0x3f5c28f6    # 0.86f

    .line 120
    invoke-virtual {v0, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p3

    const v0, 0x3ea3d70a    # 0.32f

    .line 121
    invoke-static {v0}, Lcom/miui/home/recents/util/SpringAnimationUtils;->calculateStiffFromResponse(F)F

    move-result v0

    invoke-virtual {p3, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p3

    .line 122
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v0, p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 123
    invoke-virtual {v0, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    return-object p1
.end method

.method public getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 1

    .line 101
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

    .line 111
    :pswitch_0
    invoke-virtual {p1}, Lcom/miui/home/recents/util/SpringAnimationImpl;->getScaleYSpringAnim()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    return-object p1

    .line 109
    :pswitch_1
    invoke-virtual {p1}, Lcom/miui/home/recents/util/SpringAnimationImpl;->getScaleXSpringAnim()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    return-object p1

    .line 107
    :pswitch_2
    invoke-virtual {p1}, Lcom/miui/home/recents/util/SpringAnimationImpl;->getTranslationYSpringAnim()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    return-object p1

    .line 105
    :pswitch_3
    invoke-virtual {p1}, Lcom/miui/home/recents/util/SpringAnimationImpl;->getTranslationXSpringAnim()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    return-object p1

    .line 103
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

.method public startCancelDragExitRecentsAnim(Lcom/miui/home/recents/views/TaskStackView;)V
    .locals 4

    .line 337
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

    .line 338
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

    .line 482
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getFirstTaskViewYWhenNoScroll()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    .line 483
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 484
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/views/TaskView;

    .line 485
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V

    .line 486
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

    .line 487
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v3, 0x40c00000    # 6.0f

    div-float v3, v0, v3

    .line 490
    invoke-virtual {v2, v3}, Lcom/miui/home/recents/views/TaskView;->setTranslationY(F)V

    .line 491
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v5

    const v6, 0x3f5c28f6    # 0.86f

    const v2, 0x3ea3d70a    # 0.32f

    .line 492
    invoke-static {}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getAnimDurationRatio()F

    move-result v3

    mul-float v7, v3, v2

    iget-object v8, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->TASK_VIEW_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    move-object v4, p0

    move-object v9, p3

    .line 491
    invoke-virtual/range {v4 .. v9}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public startDragExitRecentsAnim(Lcom/miui/home/recents/views/TaskStackView;)V
    .locals 4

    .line 330
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

    .line 331
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

    .line 370
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 371
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/views/TaskView;

    .line 372
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getRunningTaskIndex()I

    move-result v2

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 376
    :cond_0
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->HEADER_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-direct {p0, v1, v2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->setToState(Landroid/view/View;Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    goto :goto_2

    .line 373
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskViewHeader;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v1

    const v2, 0x3f5c28f6    # 0.86f

    const v3, 0x3ea3d70a    # 0.32f

    iget-object v4, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->HEADER_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public startFsRecentsMoveAnim(Lcom/miui/home/recents/views/RecentsView;)V
    .locals 3

    .line 498
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

    .line 503
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

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    .line 465
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/RecentsView;->getHeight()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/RecentsView;->getFirstTaskViewYWhenNoScroll()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v8, v0

    const/4 v0, 0x0

    move v9, v0

    .line 466
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_1

    .line 467
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/TaskView;

    .line 468
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V

    .line 469
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V

    const/4 v1, 0x2

    .line 470
    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->setTaskViewLayerType(Lcom/miui/home/recents/views/TaskView;I)V

    .line 471
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget-object v2, v7, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 474
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v1

    const v2, 0x3f5c28f6    # 0.86f

    const v3, 0x3ea3d70a    # 0.32f

    .line 475
    invoke-static {}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getAnimDurationRatio()F

    move-result v4

    mul-float/2addr v3, v4

    new-instance v4, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    .line 476
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getTranslationY()F

    move-result v0

    const/high16 v5, 0x40c00000    # 6.0f

    div-float v5, v8, v5

    add-float v15, v0, v5

    move-object v10, v4

    invoke-direct/range {v10 .. v15}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    move-object/from16 v0, p0

    move-object/from16 v5, p3

    .line 474
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public startRemoveTaskMenuAnim(Lcom/miui/home/recents/views/TaskStackView;Lcom/miui/home/recents/views/TaskView;Z)V
    .locals 12

    .line 232
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

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getScaleX()F

    move-result v2

    goto :goto_1

    const v2, 0x3f800000    # 1.0f

    :goto_1
    new-instance v4, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    move v6, v2

    const v5, 0x3f800000    # 1.0f

    move v7, v6

    const v8, 0x0

    const v9, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    move-object v11, v4
    
    .line 233
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 234
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const v4, 0x3e3851ec    # 0.18f

    const v5, 0x3f7d70a4    # 0.99f

    if-eq v1, p2, :cond_1

    .line 236
    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/TaskView;->setPivotX(F)V

    .line 237
    invoke-virtual {v1, v3}, Lcom/miui/home/recents/views/TaskView;->setPivotY(F)V

    if-eqz p3, :cond_0

    .line 239
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->TASK_VIEW_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-virtual {p0, v1, v5, v4, v11}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    goto :goto_0

    .line 242
    :cond_0
    iget-object v2, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->TASK_VIEW_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-direct {p0, v1, v11}, Lcom/miui/home/recents/util/SpringAnimationUtils;->setToState(Landroid/view/View;Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    goto :goto_0

    .line 245
    :cond_1
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/miui/home/recents/views/TaskViewHeader;->setPivotX(F)V

    .line 246
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/views/TaskViewHeader;->setPivotY(F)V

    .line 247
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

    .line 248
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

    .line 250
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskViewHeader;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->HEADER_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-virtual {p0, v2, v5, v4, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    .line 252
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v1

    const v2, 0x3f4ccccd    # 0.8f

    const v3, 0x3e99999a    # 0.3f

    iget-object v4, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->THUMBNAIL_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    goto/16 :goto_0

    .line 255
    :cond_2
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->HEADER_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-direct {p0, v2, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->setToState(Landroid/view/View;Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    .line 256
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

    .line 361
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setPivotX(F)V

    .line 362
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setPivotY(F)V

    .line 363
    iget-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->SHORTCUT_MENU_LAYER_SCALE_DOWN:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/util/SpringAnimationUtils;->setToState(Landroid/view/View;Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    .line 364
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v2

    .line 365
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

    .line 364
    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    return-void
.end method

.method public startShortcutMenuLayerFadeOutAnim(Lcom/miui/home/launcher/ShortcutMenuLayer;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V
    .locals 7

    .line 352
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setPivotX(F)V

    .line 353
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setPivotY(F)V

    .line 354
    iget-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->SHORTCUT_MENU_LAYER:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/util/SpringAnimationUtils;->setToState(Landroid/view/View;Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    .line 355
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v2

    .line 356
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

    .line 355
    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    return-void
.end method

.method public startShowTaskMenuAnim(Lcom/miui/home/recents/views/TaskStackView;Lcom/miui/home/recents/views/TaskView;)V
    .locals 13

    .line 210
    const v12, 0x0

    const v8, 0x0
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/views/TaskView;

    .line 211
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 212
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const v4, 0x3ed00000    # 0.40625f

    const v5, 0x3f7d70a4    # 0.99f

    if-eq v1, p2, :cond_1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getScaleX()F

    move-result v8

    .line 214
    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/TaskView;->setPivotX(F)V

    .line 215
    invoke-virtual {v1, v3}, Lcom/miui/home/recents/views/TaskView;->setPivotY(F)V

    .line 216
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v1

    if-nez v12, :cond_0

    new-instance v6, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const v7, 0x3f800000    # 1.0f

    move v9, v8

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v10

    int-to-float v10, v10

    const v11, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    move-object v2, v6

    goto :goto_1

    :cond_0
    new-instance v6, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const v7, 0x3f800000    # 1.0f

    move v9, v8

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v10

    int-to-float v10, v10

    neg-float v10, v10

    const v11, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    move-object v2, v6

    :goto_1
    invoke-virtual {p0, v1, v5, v4, v2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    goto :goto_0

    .line 219
    :cond_1
    const v12, 0x1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/miui/home/recents/views/TaskViewHeader;->setPivotX(F)V

    .line 220
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/views/TaskViewHeader;->setPivotY(F)V

    .line 221
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskViewHeader;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->HEADER_SCALE_DOWN:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-virtual {p0, v2, v5, v4, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    .line 223
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

    .line 224
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setPivotY(F)V

    .line 225
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v1

    const v2, 0x3f4ccccd    # 0.8f

    const v3, 0x3e99999a    # 0.3f

    sget-object v4, Lcom/miui/home/recents/util/SpringAnimationUtils;->THUMBNAIL_SCALE_UP:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public startTaskViewScaleDownMenuModeAnim(Lcom/miui/home/recents/views/TaskView;)V
    .locals 3

    .line 270
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

    .line 271
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setPivotY(F)V

    .line 272
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object p1

    sget-object v0, Lcom/miui/home/recents/util/SpringAnimationUtils;->THUMBNAIL_SCALE_UP:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const v1, 0x3f4ccccd    # 0.8f

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    return-void
.end method

.method public startTaskViewScaleUpMenuModeAnim(Lcom/miui/home/recents/views/TaskView;)V
    .locals 3

    .line 263
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

    .line 264
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setPivotY(F)V

    .line 265
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
    .locals 10

    if-eqz p1, :cond_1

    .line 320
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v0

    const v1, 0x3f666666    # 0.9f

    const v2, 0x3e99999a    # 0.3f

    iget-object v3, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->TASK_VIEW_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    new-instance v4, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getScaleX()F

    move-result v6

    const v5, 0x3f800000    # 1.0f

    move v7, v6

    const v8, 0x0

    const v9, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    .line 322
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

    .line 323
    invoke-virtual {p0, p1, p3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->addEndListener(Landroidx/dynamicanimation/animation/SpringAnimation;Ljava/lang/Runnable;)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public startTaskViewSpringAnim(Lcom/miui/home/recents/views/TaskView;IFFFFFFFLjava/lang/Runnable;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    .line 510
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Lcom/miui/home/recents/views/TaskView;->setPivotX(F)V

    .line 511
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Lcom/miui/home/recents/views/TaskView;->setPivotY(F)V

    .line 512
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v2

    .line 513
    invoke-static {}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getAnimDurationRatio()F

    move-result v3

    mul-float v3, v3, p9

    new-instance v10, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    move-object v4, v10

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v4 .. v9}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    move/from16 v4, p8

    .line 512
    invoke-virtual {p0, v2, v4, v3, v10}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    .line 516
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v1

    const-string v2, "translationY"

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    move-object/from16 v2, p10

    .line 517
    invoke-virtual {p0, v1, v2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->addEndListener(Landroidx/dynamicanimation/animation/SpringAnimation;Ljava/lang/Runnable;)V

    return-void
.end method

.method public startTaskViewSwipeAnim(Lcom/miui/home/recents/views/TaskView;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 297
    sget-object p2, Lcom/miui/home/recents/util/SpringAnimationUtils;->THUMBNAIL_SCALE_UP:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

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

    .line 311
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

    .line 312
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setPivotY(F)V

    .line 313
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

    .line 278
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

    .line 279
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setPivotY(F)V

    .line 280
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

    .line 282
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

    .line 289
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

    .line 290
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setPivotY(F)V

    .line 291
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

    .line 408
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 409
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/views/TaskView;

    .line 410
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V

    .line 412
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v3

    const v4, 0x3ea3d70a    # 0.32f

    const v5, 0x3f5c28f6    # 0.86f

    if-eqz v3, :cond_1

    .line 413
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/BaseRecentsImpl;->isTaskStackViewLayoutStyleVertical()Z

    move-result v3

    if-nez v3, :cond_1

    .line 415
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getRight()I

    move-result v3

    if-ltz v3, :cond_2

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getWidth()I

    move-result v6

    if-le v3, v6, :cond_0

    goto :goto_2

    .line 418
    :cond_0
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v3

    new-instance v12, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 420
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getWidth()I

    move-result v6

    neg-int v6, v6

    int-to-float v10, v6

    const/4 v11, 0x0

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    .line 418
    invoke-virtual {p0, v3, v5, v4, v12}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    goto :goto_1

    .line 422
    :cond_1
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v3

    new-instance v12, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 424
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v11, 0x40c00000    # 6.0f

    div-float v11, v6, v11

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    .line 422
    invoke-virtual {p0, v3, v5, v4, v12}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    .line 427
    :goto_1
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v2

    const-string v3, "translationY"

    invoke-virtual {p0, v2, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v2

    const v3, 0x461c4000    # 10000.0f

    .line 428
    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    if-nez v0, :cond_2

    .line 431
    invoke-virtual {p0, v2, p2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->addEndListener(Landroidx/dynamicanimation/animation/SpringAnimation;Ljava/lang/Runnable;)V

    const-string v1, "SpringAnimationUtils"

    const-string v2, "startToHomeAnim: has add anim end listener"

    .line 432
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    return v1
.end method

.method public startToHomeAnimSlideToLeft(Lcom/miui/home/recents/views/RecentsView;Ljava/lang/Runnable;)Z
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    move v1, v0

    .line 441
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 442
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskView;

    .line 443
    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V

    .line 445
    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskView;->getRight()I

    move-result v4

    if-ltz v4, :cond_1

    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskView;->getLeft()I

    move-result v4

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_0

    goto :goto_1

    .line 449
    :cond_0
    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v2

    const v4, 0x3f7d70a4    # 0.99f

    const v5, 0x3ecccccd    # 0.4f

    new-instance v12, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 451
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getWidth()I

    move-result v6

    neg-int v6, v6

    mul-int/lit8 v6, v6, 0x2

    int-to-float v10, v6

    const/4 v11, 0x0

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    .line 449
    invoke-virtual {p0, v2, v4, v5, v12}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    .line 453
    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v2

    const-string v3, "translationX"

    invoke-virtual {p0, v2, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 457
    invoke-virtual {p0, v2, p2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->addEndListener(Landroidx/dynamicanimation/animation/SpringAnimation;Ljava/lang/Runnable;)V

    const-string p1, "SpringAnimationUtils"

    const-string p2, "startToHomeAnimSlideToLeft: has add anim end listener"

    .line 458
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public startToRecentsAnim(Lcom/miui/home/recents/views/RecentsView;Ljava/lang/Runnable;)V
    .locals 13

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/miui/home/recents/views/TaskStackView;->getTaskStackViewLayoutStyle()Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    move-result-object v10

    invoke-virtual {v10}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->getTaskStackLayoutAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v10

    const/4 v0, 0x0

    .line 382
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 383
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/views/TaskView;

    .line 385
    invoke-virtual {v12, v1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewIndex(Lcom/miui/home/recents/views/TaskView;)I

    move-result v8

    if-eqz v10, :cond_0

    new-instance v3, Lcom/miui/home/recents/views/TaskViewTransform;

    invoke-direct {v3}, Lcom/miui/home/recents/views/TaskViewTransform;-><init>()V

    invoke-virtual {v12}, Lcom/miui/home/recents/views/TaskStackView;->getCurrentScroll()F

    move-result v2

    invoke-virtual {v10, v8, v2, v3}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewTransform(IFLcom/miui/home/recents/views/TaskViewTransform;)V

    iget v2, v3, Lcom/miui/home/recents/views/TaskViewTransform;->scale:F

    goto :goto_1

    :cond_0
    const v2, 0x3f800000    # 1.0f

    :goto_1
    new-instance v4, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    move v6, v2

    const v5, 0x3f800000    # 1.0f

    move v7, v6

    const v8, 0x0

    const v9, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    move-object v11, v4
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V

    .line 388
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 389
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/BaseRecentsImpl;->isTaskStackViewLayoutStyleVertical()Z

    move-result v2

    if-nez v2, :cond_1

    .line 390
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/TaskView;->setTranslationX(F)V

    .line 391
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v2

    const-string v3, "translationX"

    invoke-virtual {p0, v2, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v2

    goto :goto_2

    .line 393
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40c00000    # 6.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/TaskView;->setTranslationY(F)V

    .line 394
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v2

    const-string v3, "translationY"

    invoke-virtual {p0, v2, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v2

    :goto_2
    const/4 v3, 0x0

    .line 396
    invoke-virtual {v1, v3}, Lcom/miui/home/recents/views/TaskView;->setAlpha(F)V

    .line 397
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v1

    const v3, 0x3f5c28f6    # 0.86f

    const v4, 0x3e3851ec    # 0.18f

    iget-object v5, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->TASK_VIEW_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-virtual {p0, v1, v3, v4, v11}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    const v1, 0x459c4000    # 5000.0f

    .line 399
    invoke-virtual {v2, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    if-nez v0, :cond_2

    .line 401
    invoke-virtual {p0, v2, p2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->addEndListener(Landroidx/dynamicanimation/animation/SpringAnimation;Ljava/lang/Runnable;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFFLjava/lang/String;)V
    .locals 0

    .line 129
    invoke-virtual {p0, p1, p5}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    .line 130
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p5

    .line 131
    invoke-virtual {p5, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    .line 132
    invoke-static {p3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->calculateStiffFromResponse(F)F

    move-result p3

    invoke-virtual {p2, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    .line 133
    invoke-virtual {p2, p4}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    .line 134
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 135
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result p2

    if-nez p2, :cond_0

    .line 136
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

    .line 182
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    return-void
.end method

.method public updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V
    .locals 8

    .line 142
    invoke-virtual {p1}, Lcom/miui/home/recents/util/SpringAnimationImpl;->getTargetView()Landroid/view/View;

    move-result-object v0

    const-string v1, "alpha"

    .line 143
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p4, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->alpha:F

    .line 144
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 145
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

    .line 147
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {p5, v1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addAnimation(Ljava/lang/Object;)V

    :cond_1
    const-string v1, "scaleX"

    .line 150
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p4, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->scaleX:F

    .line 151
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    .line 152
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

    .line 154
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {p5, v1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addAnimation(Ljava/lang/Object;)V

    :cond_3
    const-string v1, "scaleY"

    .line 157
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, p4, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->scaleY:F

    .line 158
    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5

    .line 159
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

    .line 161
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {p5, v1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addAnimation(Ljava/lang/Object;)V

    :cond_5
    const-string v1, "translationX"

    .line 164
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v1

    if-nez v1, :cond_6

    iget v1, p4, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->translationX:F

    .line 165
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_7

    .line 166
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

    .line 168
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {p5, v1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addAnimation(Ljava/lang/Object;)V

    :cond_7
    const-string v1, "translationY"

    .line 171
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v1

    if-nez v1, :cond_8

    iget v1, p4, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->translationY:F

    .line 172
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_9

    .line 173
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

    .line 175
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addAnimation(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method
