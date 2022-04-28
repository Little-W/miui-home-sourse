.class public Lcom/miui/home/recents/util/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
.field public static final DRAWABLE_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DRAWABLE_RECT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECT_EVALUATOR:Landroid/animation/RectEvaluator;

.field private static sTaskViewRadius:F

.field private static sTaskViewScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 60
    new-instance v0, Lcom/miui/home/recents/util/Utilities$1;

    const-string v1, "drawableAlpha"

    invoke-direct {v0, v1}, Lcom/miui/home/recents/util/Utilities$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/recents/util/Utilities;->DRAWABLE_ALPHA:Landroid/util/Property;

    .line 73
    new-instance v0, Lcom/miui/home/recents/util/Utilities$2;

    const-class v1, Landroid/graphics/Rect;

    const-string v2, "drawableBounds"

    invoke-direct {v0, v1, v2}, Lcom/miui/home/recents/util/Utilities$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/recents/util/Utilities;->DRAWABLE_RECT:Landroid/util/Property;

    .line 86
    new-instance v0, Landroid/animation/RectEvaluator;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v1}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    sput-object v0, Lcom/miui/home/recents/util/Utilities;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    const/high16 v0, -0x40800000    # -1.0f

    .line 323
    sput v0, Lcom/miui/home/recents/util/Utilities;->sTaskViewScale:F

    .line 337
    sput v0, Lcom/miui/home/recents/util/Utilities;->sTaskViewRadius:F

    return-void
.end method

.method public static cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 175
    invoke-virtual {p0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-static {p0}, Lcom/miui/home/recents/util/Utilities;->removeAnimationListenersRecursive(Landroid/animation/Animator;)V

    .line 177
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public static clamp(FFF)F
    .locals 0

    .line 92
    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static clamp(III)I
    .locals 0

    .line 99
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;
    .locals 0

    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public static getMiddleRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 5

    .line 371
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 372
    iget v2, p0, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    div-float/2addr v2, v1

    .line 373
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v1

    .line 374
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    add-float/2addr p0, p1

    div-float/2addr p0, v1

    .line 375
    new-instance p1, Landroid/graphics/RectF;

    add-float/2addr v3, v0

    add-float/2addr p0, v2

    invoke-direct {p1, v0, v2, v3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p1
.end method

.method public static getTaskViewCornerRadius(Landroid/content/Context;)F
    .locals 3

    const/high16 v0, -0x40800000    # -1.0f

    if-nez p0, :cond_1

    .line 341
    sget p0, Lcom/miui/home/recents/util/Utilities;->sTaskViewRadius:F

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    const/high16 p0, 0x41a00000    # 20.0f

    :cond_0
    return p0

    .line 343
    :cond_1
    sget v1, Lcom/miui/home/recents/util/Utilities;->sTaskViewRadius:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_2

    .line 344
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 346
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 348
    invoke-static {p0}, Lcom/miui/home/recents/util/Utilities;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v2

    invoke-static {p0}, Lcom/miui/home/recents/util/Utilities;->getTaskViewScale(Landroid/content/Context;)F

    move-result p0

    mul-float/2addr v2, p0

    .line 349
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    sput p0, Lcom/miui/home/recents/util/Utilities;->sTaskViewRadius:F

    .line 351
    :cond_2
    sget p0, Lcom/miui/home/recents/util/Utilities;->sTaskViewRadius:F

    return p0
.end method

.method public static getTaskViewScale(Landroid/content/Context;)F
    .locals 3

    const/high16 v0, -0x40800000    # -1.0f

    if-nez p0, :cond_1

    .line 327
    sget p0, Lcom/miui/home/recents/util/Utilities;->sTaskViewScale:F

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    const p0, 0x3ecccccd    # 0.4f

    :cond_0
    return p0

    .line 329
    :cond_1
    sget v1, Lcom/miui/home/recents/util/Utilities;->sTaskViewScale:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    if-eqz v0, :cond_3

    .line 330
    :cond_2
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 331
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0703b3

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 332
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    sput p0, Lcom/miui/home/recents/util/Utilities;->sTaskViewScale:F

    .line 334
    :cond_3
    sget p0, Lcom/miui/home/recents/util/Utilities;->sTaskViewScale:F

    return p0
.end method

.method public static getWindowCornerRadius(Landroid/content/Context;)F
    .locals 7

    const/high16 v0, 0x42a80000    # 84.0f

    if-nez p0, :cond_0

    return v0

    .line 307
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "rounded_corner_radius_top"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    .line 309
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 311
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "rounded_corner_radius_bottom"

    const-string v5, "dimen"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_2

    .line 313
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    goto :goto_1

    :cond_2
    move p0, v2

    :goto_1
    cmpl-float v3, v1, p0

    if-lez v3, :cond_3

    goto :goto_2

    :cond_3
    move p0, v1

    :goto_2
    cmpg-float v1, p0, v2

    if-gtz v1, :cond_4

    move p0, v0

    :cond_4
    return p0
.end method

.method public static isAddRecentsRecommend()Z
    .locals 1

    .line 294
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    return v0
.end method

.method public static isAddToLauncher(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 379
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 382
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 383
    instance-of v1, p0, Lcom/miui/home/launcher/Launcher;

    if-nez v1, :cond_1

    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    check-cast p0, Landroid/content/ContextWrapper;

    .line 384
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    instance-of p0, p0, Lcom/miui/home/launcher/Launcher;

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v0
.end method

.method public static isDescendentAccessibilityFocused(Landroid/view/View;)Z
    .locals 5

    .line 216
    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 220
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 221
    check-cast p0, Landroid/view/ViewGroup;

    .line 222
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    .line 224
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/home/recents/util/Utilities;->isDescendentAccessibilityFocused(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static isForceFSGNavBar(Landroid/content/Context;)Z
    .locals 1

    .line 367
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "force_fsg_nav_bar"

    invoke-static {p0, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isHideGestureLine(Landroid/content/Context;)Z
    .locals 2

    .line 362
    invoke-static {p0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isUseGestureVersion3(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "hide_gesture_line"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isOneHandedModeSupported()Z
    .locals 2

    .line 389
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "ro.support_one_handed_mode"

    .line 390
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 284
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 286
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public static isUseRemberWindows()Z
    .locals 1

    .line 398
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    return v0
.end method

.method public static matchTaskListSize(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/home/recents/views/TaskViewTransform;",
            ">;)V"
        }
    .end annotation

    .line 199
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 200
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 204
    new-instance v1, Lcom/miui/home/recents/views/TaskViewTransform;

    invoke-direct {v1}, Lcom/miui/home/recents/views/TaskViewTransform;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-le v0, p0, :cond_1

    .line 208
    invoke-interface {p1, p0, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public static removeAnimationListenersRecursive(Landroid/animation/Animator;)V
    .locals 3

    .line 185
    instance-of v0, p0, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 186
    move-object v0, p0

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 188
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-static {v2}, Lcom/miui/home/recents/util/Utilities;->removeAnimationListenersRecursive(Landroid/animation/Animator;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {p0}, Landroid/animation/Animator;->removeAllListeners()V

    return-void
.end method

.method public static scaleRectAboutCenter(Landroid/graphics/Rect;F)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 147
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    neg-int v2, v0

    neg-int v3, v1

    .line 148
    invoke-virtual {p0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 149
    iget v2, p0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 150
    iget v2, p0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 151
    iget v2, p0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 152
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int p1, v2

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    .line 153
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    :cond_0
    return-void
.end method

.method public static scaleRectAboutCenter(Landroid/graphics/RectF;F)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 134
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    neg-float v2, v0

    neg-float v3, v1

    .line 135
    invoke-virtual {p0, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 136
    iget v2, p0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v2, p1

    iput v2, p0, Landroid/graphics/RectF;->left:F

    .line 137
    iget v2, p0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v2, p1

    iput v2, p0, Landroid/graphics/RectF;->top:F

    .line 138
    iget v2, p0, Landroid/graphics/RectF;->right:F

    mul-float/2addr v2, p1

    iput v2, p0, Landroid/graphics/RectF;->right:F

    .line 139
    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v2, p1

    iput v2, p0, Landroid/graphics/RectF;->bottom:F

    .line 140
    invoke-virtual {p0, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    :cond_0
    return-void
.end method

.method public static setFitInsetsTypes(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 8

    .line 355
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_0

    return-void

    .line 358
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "setFitInsetsTypes"

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v1, v6, v3

    new-array v7, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v3

    move-object v3, p0

    invoke-static/range {v2 .. v7}, Lcom/miui/launcher/utils/ReflectUtils;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method
