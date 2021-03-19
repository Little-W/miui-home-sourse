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
    .locals 17
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

    .line 43
    new-array v0, v0, [I

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v7

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Launcher;->getSpringLayerWaveController()Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;

    move-result-object v8

    .line 47
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x0

    move-wide v12, v1

    const/4 v11, 0x0

    .line 48
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_3

    move-object/from16 v14, p1

    .line 49
    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    move-object/from16 v15, p0

    invoke-static {v15, v1}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper;->getShortcutIcon(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v6

    if-nez v6, :cond_0

    move-object/from16 v16, v0

    goto :goto_2

    .line 53
    :cond_0
    invoke-virtual {v6}, Lcom/miui/home/launcher/ShortcutIcon;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    invoke-virtual {v6, v0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageViewCenterPoint([I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    new-instance v5, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;

    .line 56
    invoke-virtual {v6}, Lcom/miui/home/launcher/ShortcutIcon;->getBoomAnimBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 57
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v16

    move-object v1, v5

    move-object v2, v7

    move-object v4, v0

    move-object v10, v5

    move/from16 v5, v16

    move-object/from16 v16, v0

    move-object v0, v6

    move v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;-><init>(Lcom/miui/home/launcher/DragLayer;Landroid/graphics/Bitmap;[III)V

    .line 58
    new-instance v1, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$1;

    invoke-direct {v1, v8, v0}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$1;-><init>(Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;Lcom/miui/home/launcher/ShortcutIcon;)V

    invoke-virtual {v10, v1}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->addListener(Lmiuix/animation/listener/TransitionListener;)V

    .line 69
    new-instance v1, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$ShortcutIconDisappearValueAnim;

    invoke-direct {v1, v0, v10}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$ShortcutIconDisappearValueAnim;-><init>(Lcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;)V

    .line 70
    invoke-virtual {v1, v12, v13}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$ShortcutIconDisappearValueAnim;->setStartDelay(J)V

    const-wide/16 v2, 0x3c

    add-long/2addr v12, v2

    .line 72
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    move-object/from16 v16, v0

    move-object v0, v6

    goto :goto_1

    :cond_2
    move-object/from16 v16, v0

    move-object v0, v6

    :goto_1
    const/4 v1, 0x0

    .line 74
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setAlpha(F)V

    :goto_2
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v16

    goto :goto_0

    :cond_3
    move-object/from16 v15, p0

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Launcher;->getSoundPoolHelper()Lcom/miui/home/launcher/sound/SoundPoolHelper;

    move-result-object v0

    .line 79
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 81
    invoke-interface/range {p2 .. p2}, Ljava/lang/Runnable;->run()V

    goto :goto_6

    :cond_4
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_7

    .line 84
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$ShortcutIconDisappearValueAnim;

    add-int/lit8 v4, v1, -0x1

    if-ne v2, v4, :cond_5

    .line 86
    invoke-virtual {v3}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$ShortcutIconDisappearValueAnim;->getBoomValueAnimator()Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;

    move-result-object v4

    new-instance v5, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$2;

    move-object/from16 v6, p2

    invoke-direct {v5, v6}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->addListener(Lmiuix/animation/listener/TransitionListener;)V

    goto :goto_4

    :cond_5
    move-object/from16 v6, p2

    .line 98
    :goto_4
    rem-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_6

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_6
    const/high16 v4, 0x3f000000    # 0.5f

    .line 99
    :goto_5
    invoke-virtual {v3}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$ShortcutIconDisappearValueAnim;->getBoomValueAnimator()Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;

    move-result-object v5

    new-instance v7, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$3;

    invoke-direct {v7, v0, v4}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$3;-><init>(Lcom/miui/home/launcher/sound/SoundPoolHelper;F)V

    invoke-virtual {v5, v7}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->addListener(Lmiuix/animation/listener/TransitionListener;)V

    .line 105
    invoke-virtual {v3}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$ShortcutIconDisappearValueAnim;->start()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    :goto_6
    return-void
.end method

.method private static getShortcutIcon(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 1

    .line 34
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object p0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getUserId()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p0

    return-object p0

    .line 37
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p0

    return-object p0
.end method
