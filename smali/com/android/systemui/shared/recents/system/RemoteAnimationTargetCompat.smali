.class public Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
.super Ljava/lang/Object;


# static fields
.field public static final ACTIVITY_TYPE_ASSISTANT:I = 0x4

.field public static final ACTIVITY_TYPE_HOME:I = 0x2

.field public static final ACTIVITY_TYPE_RECENTS:I = 0x3

.field public static final ACTIVITY_TYPE_STANDARD:I = 0x1

.field public static final ACTIVITY_TYPE_UNDEFINED:I = 0x0

.field public static final MODE_CLOSING:I = 0x1

.field public static final MODE_OPENING:I


# instance fields
.field public final activityType:I

.field public final clipRect:Landroid/graphics/Rect;

.field public final contentInsets:Landroid/graphics/Rect;

.field public final isNotInRecents:Z

.field public final isTranslucent:Z

.field public final leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

.field public final mode:I

.field public packageName:Ljava/lang/String;

.field public position:Landroid/graphics/Point;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final prefixOrderIndex:I

.field public final sourceContainerBounds:Landroid/graphics/Rect;

.field public final startBounds:Landroid/graphics/Rect;

.field public target:Landroid/view/RemoteAnimationTarget;

.field public final taskId:I

.field public windowType:I


# direct methods
.method public constructor <init>(Landroid/view/RemoteAnimationTarget;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->windowType:I

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->target:Landroid/view/RemoteAnimationTarget;

    iget v0, p1, Landroid/view/RemoteAnimationTarget;->taskId:I

    iput v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    iget v0, p1, Landroid/view/RemoteAnimationTarget;->mode:I

    iput v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    new-instance v0, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget-object v1, p1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;-><init>(Landroid/view/SurfaceControl;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget-boolean v0, p1, Landroid/view/RemoteAnimationTarget;->isTranslucent:Z

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->isTranslucent:Z

    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->clipRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->clipRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->initPosition(Landroid/view/RemoteAnimationTarget;)V

    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->sourceContainerBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    iget v0, p1, Landroid/view/RemoteAnimationTarget;->prefixOrderIndex:I

    iput v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->prefixOrderIndex:I

    iget-boolean v0, p1, Landroid/view/RemoteAnimationTarget;->isNotInRecents:Z

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->isNotInRecents:Z

    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->contentInsets:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->contentInsets:Landroid/graphics/Rect;

    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-static {v0}, Lmiui/content/res/WindowConfigurationExpose;->box(Ljava/lang/Object;)Lmiui/content/res/WindowConfigurationExpose;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/content/res/WindowConfigurationExpose;->getActivityType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->activityType:I

    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->startBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->startBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->initPackageName(Landroid/view/RemoteAnimationTarget;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->initWindowType(Landroid/view/RemoteAnimationTarget;)V

    return-void
.end method

.method private initPackageName(Landroid/view/RemoteAnimationTarget;)V
    .locals 2

    :try_start_0
    const-class v0, Landroid/view/RemoteAnimationTarget;

    const-string v1, "packageName"

    invoke-static {v0, v1}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private initPosition(Landroid/view/RemoteAnimationTarget;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p1, Landroid/view/RemoteAnimationTarget;->startBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object p1, p1, Landroid/view/RemoteAnimationTarget;->startBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/view/RemoteAnimationTarget;->position:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    :goto_0
    return-void
.end method

.method private initWindowType(Landroid/view/RemoteAnimationTarget;)V
    .locals 2

    :try_start_0
    const-class v0, Landroid/view/RemoteAnimationTarget;

    const-string/jumbo v1, "windowType"

    invoke-static {v0, v1}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->windowType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic lambda$wrapNonApps$0(ZLandroid/window/TransitionInfo$Change;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/android/wm/shell/util/TransitionUtil;->isWallpaper(Landroid/window/TransitionInfo$Change;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/wm/shell/util/TransitionUtil;->isNonApp(Landroid/window/TransitionInfo$Change;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method static synthetic lambda$wrapNonAppsForCompat$1(ZLandroid/window/TransitionInfo$Change;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/android/wm/shell/util/TransitionUtil;->isWallpaper(Landroid/window/TransitionInfo$Change;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/wm/shell/util/TransitionUtil;->isNonApp(Landroid/window/TransitionInfo$Change;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method protected static wrap(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Ljava/util/function/Predicate;)[Landroid/view/RemoteAnimationTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Landroid/window/TransitionInfo$Change;",
            ">;)[",
            "Landroid/view/RemoteAnimationTarget;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Ljava/util/function/Predicate;Z)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0
.end method

.method protected static wrap(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Ljava/util/function/Predicate;Z)[Landroid/view/RemoteAnimationTarget;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Landroid/window/TransitionInfo$Change;",
            ">;Z)[",
            "Landroid/view/RemoteAnimationTarget;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/android/hideapi/TransitionInfoExpose;->box(Landroid/window/TransitionInfo;)Lcom/android/hideapi/TransitionInfoExpose;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;

    invoke-static {v3}, Lcom/android/wm/shell/util/TransitionUtil;->isOrderOnly(Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lcom/android/wm/shell/util/TransitionUtil;->isHome(Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->unbox()Landroid/window/TransitionInfo$Change;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->unbox()Landroid/window/TransitionInfo$Change;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int v6, v3, v2

    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    move v10, p4

    invoke-static/range {v5 .. v10}, Lcom/android/wm/shell/util/TransitionUtil;->newTarget(Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Z)Landroid/view/RemoteAnimationTarget;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/RemoteAnimationTarget;

    return-object p0
.end method

.method public static wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 4

    array-length v0, p0

    new-array v0, v0, [Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;-><init>(Landroid/view/RemoteAnimationTarget;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static wrapApps(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Landroid/view/RemoteAnimationTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;)[",
            "Landroid/view/RemoteAnimationTarget;"
        }
    .end annotation

    new-instance v0, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;

    invoke-direct {v0}, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Ljava/util/function/Predicate;)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0
.end method

.method public static wrapAppsForCompat(Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Z)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;Z)[",
            "Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;->getWrapped()Landroid/window/TransitionInfo;

    move-result-object p0

    new-instance v0, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;

    invoke-direct {v0}, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;-><init>()V

    invoke-static {p0, p1, p2, v0, p3}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Ljava/util/function/Predicate;Z)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p0

    return-object p0
.end method

.method public static wrapNonApps(Landroid/window/TransitionInfo;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Landroid/view/RemoteAnimationTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo;",
            "Z",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;)[",
            "Landroid/view/RemoteAnimationTarget;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/shared/recents/system/-$$Lambda$RemoteAnimationTargetCompat$k7yPmDSxYW5NqovKrc4HOc0LXME;

    invoke-direct {v0, p1}, Lcom/android/systemui/shared/recents/system/-$$Lambda$RemoteAnimationTargetCompat$k7yPmDSxYW5NqovKrc4HOc0LXME;-><init>(Z)V

    invoke-static {p0, p2, p3, v0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Ljava/util/function/Predicate;)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0
.end method

.method public static wrapNonAppsForCompat(Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;",
            "Z",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;)[",
            "Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;->getWrapped()Landroid/window/TransitionInfo;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/shared/recents/system/-$$Lambda$RemoteAnimationTargetCompat$vpRb5xQvFjsvZcIAUGtzfml6LdE;

    invoke-direct {v0, p1}, Lcom/android/systemui/shared/recents/system/-$$Lambda$RemoteAnimationTargetCompat$vpRb5xQvFjsvZcIAUGtzfml6LdE;-><init>(Z)V

    invoke-static {p0, p2, p3, v0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Ljava/util/function/Predicate;)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public isHomeActivityType()Z
    .locals 1

    iget p0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->activityType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public release()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->release()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteAnimationTargetCompat{taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isTranslucent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->isTranslucent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", clipRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sourceContainerBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", prefixOrderIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->prefixOrderIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isNotInRecents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->isNotInRecents:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", contentInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", activityType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->activityType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", startBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->startBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", windowType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->windowType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unwrap()Landroid/view/RemoteAnimationTarget;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->target:Landroid/view/RemoteAnimationTarget;

    return-object p0
.end method
