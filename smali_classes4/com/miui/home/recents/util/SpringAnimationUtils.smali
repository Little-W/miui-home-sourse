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

    .line 49
    new-instance v6, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f866666    # 1.05f

    const v3, 0x3f866666    # 1.05f

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    sput-object v6, Lcom/miui/home/recents/util/SpringAnimationUtils;->THUMBNAIL_SCALE_UP:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    .line 86
    new-instance v0, Lcom/miui/home/recents/util/SpringAnimationUtils;

    invoke-direct {v0}, Lcom/miui/home/recents/util/SpringAnimationUtils;-><init>()V

    sput-object v0, Lcom/miui/home/recents/util/SpringAnimationUtils;->sInstance:Lcom/miui/home/recents/util/SpringAnimationUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 13

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v6, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f8ccccd    # 1.1f

    const v3, 0x3f8ccccd    # 1.1f

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    iput-object v6, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->THUMBNAIL_SCALE_UP_PLUS:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    .line 50
    new-instance v0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->THUMBNAIL_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    .line 51
    new-instance v0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f733333    # 0.95f

    const v4, 0x3f733333    # 0.95f

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->THUMBNAIL_SCALE_DOWN:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    .line 56
    new-instance v0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const/4 v8, 0x0

    const v9, 0x3f7d70a4    # 0.99f

    const v10, 0x3f7d70a4    # 0.99f

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->HEADER_SCALE_DOWN:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    .line 57
    new-instance v0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->HEADER_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    .line 58
    new-instance v0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->HEADER_HIDE:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    .line 60
    new-instance v0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const/4 v2, 0x0

    const v3, 0x3f733333    # 0.95f

    const v4, 0x3f733333    # 0.95f

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->TASK_VIEW_HIDE:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    .line 61
    new-instance v0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->TASK_VIEW_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    .line 63
    new-instance v0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const v2, 0x3f4ccccd    # 0.8f

    const v3, 0x3f6b851f    # 0.92f

    const v4, 0x3f6b851f    # 0.92f

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->RECENTS_VIEW_SCALE_DOWN:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    .line 64
    new-instance v0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->RECENTS_VIEW_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    .line 66
    new-instance v0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    .line 67
    invoke-virtual {v1}, Lcom/miui/home/recents/OverviewState;->getShortcutMenuLayerScale()F

    move-result v3

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v1}, Lcom/miui/home/recents/OverviewState;->getShortcutMenuLayerScale()F

    move-result v4

    const v2, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->SHORTCUT_MENU_LAYER_SCALE_DOWN:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    .line 68
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

    .line 99
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    float-to-double v2, p0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    .line 100
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;
    .locals 1

    .line 92
    sget-object v0, Lcom/miui/home/recents/util/SpringAnimationUtils;->sInstance:Lcom/miui/home/recents/util/SpringAnimationUtils;

    return-object v0
.end method

.method private setToState(Landroid/view/View;Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V
    .locals 0

    .line 364
    iget p0, p2, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->alpha:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 365
    iget p0, p2, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->scaleX:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    .line 366
    iget p0, p2, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->scaleY:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    .line 367
    iget p0, p2, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->translationX:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    .line 368
    iget p0, p2, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->translationY:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private startTaskViewThumbnailSwipeAnim(Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 319
    new-instance v0, Lcom/miui/home/recents/util/-$$Lambda$SpringAnimationUtils$0tIbn8s-32HCPUlja2U4j5Z3Ebk;

    invoke-direct {v0, p0, p2}, Lcom/miui/home/recents/util/-$$Lambda$SpringAnimationUtils$0tIbn8s-32HCPUlja2U4j5Z3Ebk;-><init>(Lcom/miui/home/recents/util/SpringAnimationUtils;Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskView;->setThumbnailViewProperty(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addEndListener(Landroidx/dynamicanimation/animation/SpringAnimation;Ljava/lang/Runnable;)V
    .locals 1

    .line 197
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    new-instance v0, Lcom/miui/home/recents/util/SpringAnimationUtils$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/home/recents/util/SpringAnimationUtils$1;-><init>(Lcom/miui/home/recents/util/SpringAnimationUtils;Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/SpringAnimation;)V

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 208
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method public cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V
    .locals 1

    .line 189
    invoke-virtual {p1}, Lcom/miui/home/recents/util/SpringAnimationImpl;->getAllSpringAnim()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 190
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public createDefaultSpringAnim(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 122
    new-instance p0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p0, p3}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const p3, 0x3f5c28f6    # 0.86f

    .line 123
    invoke-virtual {p0, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p0

    const p3, 0x3ea3d70a    # 0.32f

    .line 124
    invoke-static {p3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->calculateStiffFromResponse(F)F

    move-result p3

    invoke-virtual {p0, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p0

    .line 125
    new-instance p3, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p3, p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 126
    invoke-virtual {p3, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    return-object p0
.end method

.method public getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 4

    .line 104
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p0, "alpha"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_1
    const-string p0, "scaleY"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_1

    :sswitch_2
    const-string p0, "scaleX"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :sswitch_3
    const-string p0, "translationY"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_1

    :sswitch_4
    const-string p0, "translationX"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_5

    if-eq p0, v3, :cond_4

    if-eq p0, v2, :cond_3

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 114
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/recents/util/SpringAnimationImpl;->getScaleYSpringAnim()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    return-object p0

    .line 112
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/recents/util/SpringAnimationImpl;->getScaleXSpringAnim()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    return-object p0

    .line 110
    :cond_3
    invoke-virtual {p1}, Lcom/miui/home/recents/util/SpringAnimationImpl;->getTranslationYSpringAnim()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    return-object p0

    .line 108
    :cond_4
    invoke-virtual {p1}, Lcom/miui/home/recents/util/SpringAnimationImpl;->getTranslationXSpringAnim()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    return-object p0

    .line 106
    :cond_5
    invoke-virtual {p1}, Lcom/miui/home/recents/util/SpringAnimationImpl;->getAlphaSpringAnim()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x490b9c39 -> :sswitch_4
        -0x490b9c38 -> :sswitch_3
        -0x3621dfb2 -> :sswitch_2
        -0x3621dfb1 -> :sswitch_1
        0x589b15e -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic lambda$startLaunchTaskSucceededAnim$8$SpringAnimationUtils(Lcom/miui/home/recents/views/TaskViewThumbnail;)V
    .locals 0

    .line 496
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V

    return-void
.end method

.method public synthetic lambda$startRemoveTaskMenuAnim$1$SpringAnimationUtils(ZLcom/miui/home/recents/views/TaskViewThumbnail;)V
    .locals 2

    .line 263
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->setCenterPivotToView(Landroid/view/View;)V

    if-eqz p1, :cond_0

    .line 265
    invoke-virtual {p2}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object p1

    const p2, 0x3f4ccccd    # 0.8f

    const v0, 0x3e99999a    # 0.3f

    iget-object v1, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->THUMBNAIL_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    goto :goto_0

    .line 268
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->THUMBNAIL_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-direct {p0, p2, p1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->setToState(Landroid/view/View;Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$startShowTaskMenuAnim$0$SpringAnimationUtils(Lcom/miui/home/recents/views/TaskViewThumbnail;)V
    .locals 3

    .line 225
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->setCenterPivotToView(Landroid/view/View;)V

    .line 226
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object p1

    sget-object v0, Lcom/miui/home/recents/util/SpringAnimationUtils;->THUMBNAIL_SCALE_UP:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const v1, 0x3f4ccccd    # 0.8f

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    return-void
.end method

.method public synthetic lambda$startTaskViewScaleDownMenuModeAnim$3$SpringAnimationUtils(Lcom/miui/home/recents/views/TaskViewThumbnail;)V
    .locals 3

    .line 285
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->setCenterPivotToView(Landroid/view/View;)V

    .line 286
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object p1

    sget-object v0, Lcom/miui/home/recents/util/SpringAnimationUtils;->THUMBNAIL_SCALE_UP:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const v1, 0x3f4ccccd    # 0.8f

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    return-void
.end method

.method public synthetic lambda$startTaskViewScaleUpMenuModeAnim$2$SpringAnimationUtils(Lcom/miui/home/recents/views/TaskViewThumbnail;)V
    .locals 3

    .line 277
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->setCenterPivotToView(Landroid/view/View;)V

    .line 278
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->THUMBNAIL_SCALE_UP_PLUS:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const v1, 0x3f4ccccd    # 0.8f

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    return-void
.end method

.method public synthetic lambda$startTaskViewSwipeCancelAnim$7$SpringAnimationUtils(Lcom/miui/home/recents/views/TaskViewThumbnail;)V
    .locals 3

    .line 331
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->setCenterPivotToView(Landroid/view/View;)V

    .line 332
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->TASK_VIEW_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const v1, 0x3f19999a    # 0.6f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    return-void
.end method

.method public synthetic lambda$startTaskViewThumbnailSwipeAnim$6$SpringAnimationUtils(Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;Lcom/miui/home/recents/views/TaskViewThumbnail;)V
    .locals 2

    .line 320
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->setCenterPivotToView(Landroid/view/View;)V

    .line 321
    invoke-virtual {p2}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object p2

    const v0, 0x3f19999a    # 0.6f

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    return-void
.end method

.method public synthetic lambda$startTaskViewTouchDownAnim$4$SpringAnimationUtils(Lcom/miui/home/recents/views/TaskViewThumbnail;)V
    .locals 12

    .line 294
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->setCenterPivotToView(Landroid/view/View;)V

    .line 295
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->THUMBNAIL_SCALE_DOWN:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    iget v4, v0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->scaleX:F

    const v2, 0x3f19999a    # 0.6f

    const/high16 v3, 0x3f000000    # 0.5f

    const-string v5, "scaleX"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFFLjava/lang/String;)V

    .line 297
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v7

    iget-object p1, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->THUMBNAIL_SCALE_DOWN:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    iget v10, p1, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->scaleY:F

    const v8, 0x3f19999a    # 0.6f

    const/high16 v9, 0x3f000000    # 0.5f

    const-string v11, "scaleY"

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFFLjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$startTaskViewTouchMoveOrUpAnim$5$SpringAnimationUtils(Lcom/miui/home/recents/views/TaskViewThumbnail;)V
    .locals 3

    .line 306
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->setCenterPivotToView(Landroid/view/View;)V

    .line 307
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->THUMBNAIL_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const v1, 0x3f19999a    # 0.6f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    return-void
.end method

.method setCenterPivotToView(Landroid/view/View;)V
    .locals 3

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p0, p1, v0, v2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->setPivotToView(Landroid/view/View;FF)V

    return-void
.end method

.method setPivotToView(Landroid/view/View;FF)V
    .locals 0

    .line 234
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    .line 235
    invoke-virtual {p1, p3}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method

.method public startCancelDragExitRecentsAnim(Lcom/miui/home/recents/views/TaskStackView;)V
    .locals 4

    .line 357
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

    .line 358
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskViewHeader;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v0

    const v1, 0x3f7d70a4    # 0.99f

    const v2, 0x3e3851ec    # 0.18f

    iget-object v3, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->HEADER_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startClosingWindowToRecentsAnim(Lcom/miui/home/recents/views/RecentsView;Lcom/android/systemui/shared/recents/model/Task;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V
    .locals 10

    .line 510
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getFirstTaskViewYWhenNoScroll()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    .line 511
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 512
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/views/TaskView;

    .line 513
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V

    .line 514
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

    .line 515
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v3, 0x40c00000    # 6.0f

    div-float v3, v0, v3

    .line 518
    invoke-virtual {v2, v3}, Lcom/miui/home/recents/views/TaskView;->setTranslationY(F)V

    .line 519
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v5

    const v6, 0x3f5c28f6    # 0.86f

    const v2, 0x3ea3d70a    # 0.32f

    .line 520
    invoke-static {}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getAnimDurationRatio()F

    move-result v3

    mul-float v7, v3, v2

    iget-object v8, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->TASK_VIEW_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    move-object v4, p0

    move-object v9, p3

    .line 519
    invoke-virtual/range {v4 .. v9}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public startDragExitRecentsAnim(Lcom/miui/home/recents/views/TaskStackView;)V
    .locals 4

    .line 350
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

    .line 351
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskViewHeader;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v0

    const v1, 0x3f7d70a4    # 0.99f

    const v2, 0x3e3851ec    # 0.18f

    iget-object v3, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->HEADER_HIDE:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startFsEnterRecentsZoomAnim(Lcom/miui/home/recents/views/RecentsView;)V
    .locals 5

    const/4 v0, 0x0

    .line 396
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 397
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/views/TaskView;

    .line 398
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getRunningTaskIndex()I

    move-result v2

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 402
    :cond_0
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->HEADER_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-direct {p0, v1, v2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->setToState(Landroid/view/View;Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    goto :goto_2

    .line 399
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

    .line 526
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

    .line 531
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

    .line 491
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/RecentsView;->getHeight()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/RecentsView;->getFirstTaskViewYWhenNoScroll()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v8, v0

    const/4 v0, 0x0

    move v9, v0

    .line 492
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_1

    .line 493
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/TaskView;

    .line 494
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V

    .line 495
    new-instance v1, Lcom/miui/home/recents/util/-$$Lambda$SpringAnimationUtils$5H7yQtRGjPenu71GZeR_IFTO1zI;

    invoke-direct {v1, v6}, Lcom/miui/home/recents/util/-$$Lambda$SpringAnimationUtils$5H7yQtRGjPenu71GZeR_IFTO1zI;-><init>(Lcom/miui/home/recents/util/SpringAnimationUtils;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskView;->setThumbnailViewProperty(Ljava/util/function/Consumer;)V

    const/4 v1, 0x2

    .line 498
    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->setTaskViewLayerType(Lcom/miui/home/recents/views/TaskView;I)V

    .line 499
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

    .line 502
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v1

    const v2, 0x3f5c28f6    # 0.86f

    const v3, 0x3ea3d70a    # 0.32f

    .line 503
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

    .line 504
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getTranslationY()F

    move-result v0

    const/high16 v5, 0x40c00000    # 6.0f

    div-float v5, v8, v5

    add-float v15, v0, v5

    move-object v10, v4

    invoke-direct/range {v10 .. v15}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    move-object/from16 v0, p0

    move-object/from16 v5, p3

    .line 502
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public startRemoveTaskMenuAnim(Lcom/miui/home/recents/views/TaskStackView;Lcom/miui/home/recents/views/TaskView;Z)V
    .locals 7

    .line 243
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

    .line 244
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 245
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const v4, 0x3ea00000    # 0.3125f

    const v5, 0x3f7d70a4    # 0.99f

    if-eq v1, p2, :cond_1

    .line 247
    invoke-virtual {p0, v1, v2, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->setPivotToView(Landroid/view/View;FF)V

    if-eqz p3, :cond_0

    .line 249
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->TASK_VIEW_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-virtual {p0, v1, v5, v4, v2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    goto :goto_0

    .line 252
    :cond_0
    iget-object v2, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->TASK_VIEW_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-direct {p0, v1, v2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->setToState(Landroid/view/View;Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    goto :goto_0

    .line 255
    :cond_1
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v6

    invoke-virtual {p0, v6, v2, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->setPivotToView(Landroid/view/View;FF)V

    if-eqz p3, :cond_2

    .line 257
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskViewHeader;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->HEADER_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-virtual {p0, v2, v5, v4, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    goto :goto_1

    .line 260
    :cond_2
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->HEADER_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-direct {p0, v2, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->setToState(Landroid/view/View;Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    .line 262
    :goto_1
    new-instance v2, Lcom/miui/home/recents/util/-$$Lambda$SpringAnimationUtils$pjzBro-0HwxgdrSmNw_BmuLFnFU;

    invoke-direct {v2, p0, p3}, Lcom/miui/home/recents/util/-$$Lambda$SpringAnimationUtils$pjzBro-0HwxgdrSmNw_BmuLFnFU;-><init>(Lcom/miui/home/recents/util/SpringAnimationUtils;Z)V

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/TaskView;->setThumbnailViewProperty(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public startShortcutMenuLayerFadeInAnim(Lcom/miui/home/launcher/ShortcutMenuLayer;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V
    .locals 7

    .line 388
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->setCenterPivotToView(Landroid/view/View;)V

    .line 389
    iget-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->SHORTCUT_MENU_LAYER_SCALE_DOWN:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/util/SpringAnimationUtils;->setToState(Landroid/view/View;Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    .line 390
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v2

    .line 391
    invoke-static {}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getAnimDurationRatio()F

    move-result p1

    const v0, 0x3eb33333    # 0.35f

    mul-float v4, p1, v0

    iget-object v5, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->SHORTCUT_MENU_LAYER:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v1, p0

    move-object v6, p2

    .line 390
    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    return-void
.end method

.method public startShortcutMenuLayerFadeOutAnim(Lcom/miui/home/launcher/ShortcutMenuLayer;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V
    .locals 8

    .line 372
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->setCenterPivotToView(Landroid/view/View;)V

    .line 373
    iget-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->SHORTCUT_MENU_LAYER:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/util/SpringAnimationUtils;->setToState(Landroid/view/View;Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    .line 374
    const v1, 0x3eb33333    # 0.35f

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    .line 377
    invoke-static {}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getAnimDurationRatio()F

    move-result p1

    mul-float v5, p1, v1

    iget-object v6, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->SHORTCUT_MENU_LAYER_SCALE_DOWN:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    .line 378
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getEndDetector()Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    move-result-object v7

    move-object v2, p0

    .line 376
    invoke-virtual/range {v2 .. v7}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    .line 379
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->startEndDetector()V

    return-void

    .line 382
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 383
    invoke-static {}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getAnimDurationRatio()F

    move-result v0

    mul-float v3, v0, v1

    iget-object v4, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->SHORTCUT_MENU_LAYER_SCALE_DOWN:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 382
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    return-void
.end method

.method public startShowTaskMenuAnim(Lcom/miui/home/recents/views/TaskStackView;Lcom/miui/home/recents/views/TaskView;)V
    .locals 13

    const v12, 0x0

    const v8, 0x0

    .line 213
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

    .line 214
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 215
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const v4, 0x3f300000    # 0.6875f

    const v5, 0x3f7d70a4    # 0.99f

    if-eq v1, p2, :cond_1

    .line 217
    invoke-virtual {p0, v1, v2, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->setPivotToView(Landroid/view/View;FF)V

    .line 218
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v1

    if-nez v12, :cond_0

    new-instance v6, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const v7, 0x3f800000    # 1.0f

    move v8, v7

    move v9, v7

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

    move v8, v7

    move v9, v7

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

    .line 221
    :cond_1
    const v12, 0x1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v6

    invoke-virtual {p0, v6, v2, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->setPivotToView(Landroid/view/View;FF)V

    .line 222
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskViewHeader;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->HEADER_SCALE_DOWN:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-virtual {p0, v2, v5, v4, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    .line 224
    new-instance v2, Lcom/miui/home/recents/util/-$$Lambda$SpringAnimationUtils$SkgoR2zmwplOoTU6p72Sofi28x4;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/util/-$$Lambda$SpringAnimationUtils$SkgoR2zmwplOoTU6p72Sofi28x4;-><init>(Lcom/miui/home/recents/util/SpringAnimationUtils;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/TaskView;->setThumbnailViewProperty(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public startTaskViewScaleDownMenuModeAnim(Lcom/miui/home/recents/views/TaskView;)V
    .locals 1

    .line 284
    new-instance v0, Lcom/miui/home/recents/util/-$$Lambda$SpringAnimationUtils$pVkClNRLiJWLQAhCS7HHD9vo1G4;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/util/-$$Lambda$SpringAnimationUtils$pVkClNRLiJWLQAhCS7HHD9vo1G4;-><init>(Lcom/miui/home/recents/util/SpringAnimationUtils;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskView;->setThumbnailViewProperty(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startTaskViewScaleUpMenuModeAnim(Lcom/miui/home/recents/views/TaskView;)V
    .locals 1

    .line 276
    new-instance v0, Lcom/miui/home/recents/util/-$$Lambda$SpringAnimationUtils$VFLcNnE0J1ofPSY_3TCuz22uDmc;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/util/-$$Lambda$SpringAnimationUtils$VFLcNnE0J1ofPSY_3TCuz22uDmc;-><init>(Lcom/miui/home/recents/util/SpringAnimationUtils;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskView;->setThumbnailViewProperty(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startTaskViewSnapAnim(Lcom/miui/home/recents/views/TaskView;ZLjava/lang/Runnable;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 4

    if-eqz p1, :cond_1

    .line 340
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v0

    const v1, 0x3f666666    # 0.9f

    const v2, 0x3e99999a    # 0.3f

    iget-object v3, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->TASK_VIEW_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    .line 342
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

    .line 343
    invoke-virtual {p0, p1, p3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->addEndListener(Landroidx/dynamicanimation/animation/SpringAnimation;Ljava/lang/Runnable;)V

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public startTaskViewSpringAnim(Lcom/miui/home/recents/views/TaskView;IFFFFFFFLjava/lang/Runnable;)V
    .locals 10

    move-object v0, p0

    .line 538
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->setCenterPivotToView(Landroid/view/View;)V

    .line 539
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v1

    .line 540
    invoke-static {}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getAnimDurationRatio()F

    move-result v2

    mul-float v2, v2, p9

    new-instance v9, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    move-object v3, v9

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v3 .. v8}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    move/from16 v3, p8

    .line 539
    invoke-virtual {p0, v1, v3, v2, v9}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    .line 543
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v1

    const-string v2, "translationY"

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    move-object/from16 v2, p10

    .line 544
    invoke-virtual {p0, v1, v2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->addEndListener(Landroidx/dynamicanimation/animation/SpringAnimation;Ljava/lang/Runnable;)V

    return-void
.end method

.method public startTaskViewSwipeAnim(Lcom/miui/home/recents/views/TaskView;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 314
    sget-object p2, Lcom/miui/home/recents/util/SpringAnimationUtils;->THUMBNAIL_SCALE_UP:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->THUMBNAIL_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startTaskViewThumbnailSwipeAnim(Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    return-void
.end method

.method public startTaskViewSwipeCancelAnim(Lcom/miui/home/recents/views/TaskView;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 330
    new-instance v0, Lcom/miui/home/recents/util/-$$Lambda$SpringAnimationUtils$CyKYMhhe83UnMq_0-aSHFRtvKS0;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/util/-$$Lambda$SpringAnimationUtils$CyKYMhhe83UnMq_0-aSHFRtvKS0;-><init>(Lcom/miui/home/recents/util/SpringAnimationUtils;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskView;->setThumbnailViewProperty(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public startTaskViewThumbnailSpringAnim(Lcom/miui/home/recents/views/TaskView;FFFFLjava/lang/Runnable;Landroid/graphics/RectF;)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p4

    if-eqz p1, :cond_4

    if-nez p7, :cond_0

    goto/16 :goto_2

    .line 551
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v3

    .line 552
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getSecondThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v4

    .line 553
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/RectF;->width()F

    move-result v5

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    const/4 v6, 0x0

    cmpg-float v7, v5, v6

    if-gtz v7, :cond_1

    goto/16 :goto_2

    .line 558
    :cond_1
    invoke-virtual {v3, v6}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setPivotX(F)V

    .line 559
    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getRealWidth()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    invoke-virtual {v3, v7}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setPivotY(F)V

    .line 561
    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getRealWidth()F

    move-result v7

    cmpl-float v7, v7, v6

    const-string v9, "  scaleX="

    const-string v10, "SpringAnimationUtils"

    if-eqz v7, :cond_2

    cmpl-float v7, v1, v6

    if-eqz v7, :cond_2

    .line 562
    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getRealWidth()F

    move-result v7

    mul-float/2addr v7, v1

    div-float v7, v5, v7

    move v14, v7

    goto :goto_0

    .line 564
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "startTaskViewThumbnailSpringAnim error,firstThumbnail.getRealWidth()="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getRealWidth()F

    move-result v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v14, 0x3f800000    # 1.0f

    .line 567
    :goto_0
    iget-object v3, v3, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    invoke-static {}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getAnimDurationRatio()F

    move-result v7

    mul-float v7, v7, p5

    new-instance v15, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v12, v15

    move-object v11, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    invoke-direct/range {v12 .. v17}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    invoke-virtual {v0, v3, v2, v7, v11}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    .line 570
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v4, v3}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setPivotX(F)V

    .line 571
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v8

    invoke-virtual {v4, v3}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setPivotY(F)V

    .line 573
    invoke-virtual {v4}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getRealWidth()F

    move-result v3

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_3

    cmpl-float v3, v1, v6

    if-eqz v3, :cond_3

    .line 574
    invoke-virtual {v4}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getRealWidth()F

    move-result v3

    mul-float/2addr v3, v1

    div-float v11, v5, v3

    move v13, v11

    goto :goto_1

    .line 576
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startTaskViewThumbnailSpringAnim error,secondThumbnailView.getRealWidth()="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getRealWidth()F

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v13, 0x3f800000    # 1.0f

    .line 579
    :goto_1
    iget-object v1, v4, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    invoke-static {}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getAnimDurationRatio()F

    move-result v3

    mul-float v3, v3, p5

    new-instance v4, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v4

    invoke-direct/range {v11 .. v16}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public startTaskViewTouchDownAnim(Lcom/miui/home/recents/views/TaskView;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 293
    new-instance v0, Lcom/miui/home/recents/util/-$$Lambda$SpringAnimationUtils$NRkzRtOx0gTkTzTXYbb9vmEJ8cY;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/util/-$$Lambda$SpringAnimationUtils$NRkzRtOx0gTkTzTXYbb9vmEJ8cY;-><init>(Lcom/miui/home/recents/util/SpringAnimationUtils;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskView;->setThumbnailViewProperty(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public startTaskViewTouchMoveOrUpAnim(Lcom/miui/home/recents/views/TaskView;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 305
    new-instance v0, Lcom/miui/home/recents/util/-$$Lambda$SpringAnimationUtils$i8u_l9-jAoI9VzBzQYr9gZtbWbE;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/util/-$$Lambda$SpringAnimationUtils$i8u_l9-jAoI9VzBzQYr9gZtbWbE;-><init>(Lcom/miui/home/recents/util/SpringAnimationUtils;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskView;->setThumbnailViewProperty(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public startToHomeAnim(Lcom/miui/home/recents/views/RecentsView;Ljava/lang/Runnable;)Z
    .locals 13

    const/4 v0, 0x0

    move v1, v0

    .line 434
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 435
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/views/TaskView;

    .line 436
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V

    .line 438
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v3

    const v4, 0x3f5c28f6    # 0.86f

    if-eqz v3, :cond_1

    .line 439
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/BaseRecentsImpl;->isTaskStackViewLayoutStyleVertical()Z

    move-result v3

    if-nez v3, :cond_1

    .line 441
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getRight()I

    move-result v3

    if-ltz v3, :cond_2

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getWidth()I

    move-result v5

    if-le v3, v5, :cond_0

    goto :goto_2

    .line 444
    :cond_0
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v3

    const v5, 0x3ea3d70a    # 0.32f

    new-instance v12, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 446
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getWidth()I

    move-result v6

    neg-int v6, v6

    int-to-float v10, v6

    const/4 v11, 0x0

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    .line 444
    invoke-virtual {p0, v3, v4, v5, v12}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    goto :goto_1

    .line 448
    :cond_1
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v3

    const v5, 0x3e19999a    # 0.15f

    new-instance v12, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 450
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v11, 0x40c00000    # 6.0f

    div-float v11, v6, v11

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    .line 448
    invoke-virtual {p0, v3, v4, v5, v12}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    .line 453
    :goto_1
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v2

    const-string v3, "translationY"

    invoke-virtual {p0, v2, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v2

    const v3, 0x461c4000    # 10000.0f

    .line 454
    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    if-nez v0, :cond_2

    .line 457
    invoke-virtual {p0, v2, p2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->addEndListener(Landroidx/dynamicanimation/animation/SpringAnimation;Ljava/lang/Runnable;)V

    const-string v1, "SpringAnimationUtils"

    const-string v2, "startToHomeAnim: has add anim end listener"

    .line 458
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

    .line 467
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 468
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskView;

    .line 469
    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V

    .line 471
    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskView;->getRight()I

    move-result v4

    if-ltz v4, :cond_1

    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskView;->getLeft()I

    move-result v4

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_0

    goto :goto_1

    .line 475
    :cond_0
    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v2

    const v4, 0x3f7d70a4    # 0.99f

    const v5, 0x3ecccccd    # 0.4f

    new-instance v12, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 477
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getWidth()I

    move-result v6

    neg-int v6, v6

    mul-int/lit8 v6, v6, 0x2

    int-to-float v10, v6

    const/4 v11, 0x0

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;-><init>(FFFFF)V

    .line 475
    invoke-virtual {p0, v2, v4, v5, v12}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    .line 479
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

    .line 483
    invoke-virtual {p0, v2, p2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->addEndListener(Landroidx/dynamicanimation/animation/SpringAnimation;Ljava/lang/Runnable;)V

    const-string p0, "SpringAnimationUtils"

    const-string p1, "startToHomeAnimSlideToLeft: has add anim end listener"

    .line 484
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public startToRecentsAnim(Lcom/miui/home/recents/views/RecentsView;Ljava/lang/Runnable;)V
    .locals 6

    const/4 v0, 0x0

    .line 408
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 409
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/views/TaskView;

    .line 411
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V

    .line 414
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 415
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/BaseRecentsImpl;->isTaskStackViewLayoutStyleVertical()Z

    move-result v2

    if-nez v2, :cond_0

    .line 416
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/TaskView;->setTranslationX(F)V

    .line 417
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v2

    const-string v3, "translationX"

    invoke-virtual {p0, v2, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v2

    goto :goto_1

    .line 419
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40c00000    # 6.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/TaskView;->setTranslationY(F)V

    .line 420
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v2

    const-string v3, "translationY"

    invoke-virtual {p0, v2, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v2

    :goto_1
    const/4 v3, 0x0

    .line 422
    invoke-virtual {v1, v3}, Lcom/miui/home/recents/views/TaskView;->setAlpha(F)V

    .line 423
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v1

    const v3, 0x3f5c28f6    # 0.86f

    const v4, 0x3e3851ec    # 0.18f

    iget-object v5, p0, Lcom/miui/home/recents/util/SpringAnimationUtils;->TASK_VIEW_NORMAL:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V

    const v1, 0x459c4000    # 5000.0f

    .line 425
    invoke-virtual {v2, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    if-nez v0, :cond_1

    .line 427
    invoke-virtual {p0, v2, p2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->addEndListener(Landroidx/dynamicanimation/animation/SpringAnimation;Ljava/lang/Runnable;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFFLjava/lang/String;)V
    .locals 0

    .line 132
    invoke-virtual {p0, p1, p5}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    .line 133
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    .line 134
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    .line 135
    invoke-static {p3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->calculateStiffFromResponse(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    .line 136
    invoke-virtual {p1, p4}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    .line 137
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 138
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    .line 139
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

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

    .line 185
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    return-void
.end method

.method public updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFLcom/miui/home/recents/util/SpringAnimationUtils$ViewState;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V
    .locals 9

    .line 145
    invoke-virtual {p1}, Lcom/miui/home/recents/util/SpringAnimationImpl;->getTargetView()Landroid/view/View;

    move-result-object v0

    const-string v1, "alpha"

    .line 146
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p4, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->alpha:F

    .line 147
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 148
    :cond_0
    iget v7, p4, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->alpha:F

    const-string v8, "alpha"

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFFLjava/lang/String;)V

    if-eqz p5, :cond_1

    .line 150
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {p5, v1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addAnimation(Ljava/lang/Object;)V

    :cond_1
    const-string v1, "scaleX"

    .line 153
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p4, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->scaleX:F

    .line 154
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    .line 155
    :cond_2
    iget v7, p4, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->scaleX:F

    const-string v8, "scaleX"

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFFLjava/lang/String;)V

    if-eqz p5, :cond_3

    .line 157
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {p5, v1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addAnimation(Ljava/lang/Object;)V

    :cond_3
    const-string v1, "scaleY"

    .line 160
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p4, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->scaleY:F

    .line 161
    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5

    .line 162
    :cond_4
    iget v7, p4, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->scaleY:F

    const-string v8, "scaleY"

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFFLjava/lang/String;)V

    if-eqz p5, :cond_5

    .line 164
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {p5, v1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addAnimation(Ljava/lang/Object;)V

    :cond_5
    const-string v1, "translationX"

    .line 167
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v2

    if-nez v2, :cond_6

    iget v2, p4, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->translationX:F

    .line 168
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_7

    .line 169
    :cond_6
    iget v7, p4, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->translationX:F

    const-string v8, "translationX"

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFFLjava/lang/String;)V

    if-eqz p5, :cond_7

    .line 171
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {p5, v1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addAnimation(Ljava/lang/Object;)V

    :cond_7
    const-string v1, "translationY"

    .line 174
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v2

    if-nez v2, :cond_8

    iget v2, p4, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->translationY:F

    .line 175
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_9

    .line 176
    :cond_8
    iget v6, p4, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->translationY:F

    const-string v7, "translationY"

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/miui/home/recents/util/SpringAnimationUtils;->updateSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;FFFLjava/lang/String;)V

    if-eqz p5, :cond_9

    .line 178
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    invoke-virtual {p5, p0}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addAnimation(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method
