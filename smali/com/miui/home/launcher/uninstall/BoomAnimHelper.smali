.class public Lcom/miui/home/launcher/uninstall/BoomAnimHelper;
.super Ljava/lang/Object;
.source "BoomAnimHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/uninstall/BoomAnimHelper$ShortcutIconDisappearValueAnim;
    }
.end annotation


# direct methods
.method public static doBoomAnim(Lcom/miui/home/launcher/Launcher;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/Launcher;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 39
    new-array v0, v0, [I

    .line 40
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v1

    .line 41
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSpringLayerWaveController()Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;

    move-result-object v2

    .line 43
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v4, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/ShortcutInfo;

    .line 45
    invoke-static {p0, v6}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper;->getShortcutIcon(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {v6}, Lcom/miui/home/launcher/ShortcutIcon;->isShown()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 50
    invoke-virtual {v6, v0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageViewCenterPoint([I)V

    .line 51
    new-instance v7, Lcom/miui/home/launcher/uninstall/BoomValueAnimator;

    .line 52
    invoke-virtual {v6}, Lcom/miui/home/launcher/ShortcutIcon;->getBoomAnimBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v7, v1, v8, v0}, Lcom/miui/home/launcher/uninstall/BoomValueAnimator;-><init>(Lcom/miui/home/launcher/DragLayer;Landroid/graphics/Bitmap;[I)V

    .line 53
    new-instance v8, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$1;

    invoke-direct {v8, v2, v6}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$1;-><init>(Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;Lcom/miui/home/launcher/ShortcutIcon;)V

    invoke-virtual {v7, v8}, Lcom/miui/home/launcher/uninstall/BoomValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 62
    new-instance v8, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$ShortcutIconDisappearValueAnim;

    invoke-direct {v8, v6, v7}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$ShortcutIconDisappearValueAnim;-><init>(Lcom/miui/home/launcher/ShortcutIcon;Landroid/animation/ValueAnimator;)V

    .line 63
    invoke-virtual {v8, v4, v5}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$ShortcutIconDisappearValueAnim;->setStartDelay(J)V

    long-to-float v4, v4

    const/high16 v5, 0x420c0000    # 35.0f

    const/high16 v6, 0x42340000    # 45.0f

    .line 64
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    double-to-float v7, v9

    invoke-static {v5, v6, v7}, Lcom/miui/home/launcher/common/Utilities;->calcProgress(FFF)F

    move-result v5

    add-float/2addr v4, v5

    float-to-long v4, v4

    .line 65
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 67
    invoke-virtual {v6, v7}, Lcom/miui/home/launcher/ShortcutIcon;->setAlpha(F)V

    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSoundPoolHelper()Lcom/miui/home/launcher/sound/SoundPoolHelper;

    move-result-object p0

    .line 72
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 74
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_6

    .line 77
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$ShortcutIconDisappearValueAnim;

    add-int/lit8 v2, p1, -0x1

    if-ne v0, v2, :cond_4

    .line 79
    invoke-virtual {v1}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$ShortcutIconDisappearValueAnim;->getBoomValueAnimator()Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v4, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$2;

    invoke-direct {v4, p2}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 86
    :cond_4
    rem-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_5

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_5
    const/high16 v2, 0x3f000000    # 0.5f

    .line 87
    :goto_2
    invoke-virtual {v1}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$ShortcutIconDisappearValueAnim;->getBoomValueAnimator()Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v5, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$3;

    invoke-direct {v5, p0, v2}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$3;-><init>(Lcom/miui/home/launcher/sound/SoundPoolHelper;F)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 93
    invoke-virtual {v1}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$ShortcutIconDisappearValueAnim;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    return-void
.end method

.method private static getShortcutIcon(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 1

    .line 30
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object p0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getUserId()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p0

    return-object p0

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p0

    return-object p0
.end method
