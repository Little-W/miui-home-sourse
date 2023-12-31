.class public Lcom/miui/home/launcher/uninstall/BoomAnimHelper;
.super Ljava/lang/Object;
.source "BoomAnimHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/uninstall/BoomAnimHelper$DisappearValueAnim;
    }
.end annotation


# direct methods
.method public static doBoomAnim(Lcom/miui/home/launcher/Launcher;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 16
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

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v6

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Launcher;->getSoundPoolHelper()Lcom/miui/home/launcher/sound/SoundPoolHelper;

    move-result-object v7

    .line 103
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    move v0, v9

    .line 104
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ge v0, v1, :cond_3

    move-object/from16 v1, p1

    .line 105
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    move-object/from16 v3, p0

    invoke-static {v3, v2}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper;->getShortcutIcon(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 107
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutIcon;->getBoomAnimBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    new-array v5, v10, [I

    .line 111
    invoke-virtual {v2, v5}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageViewCenterPoint([I)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v2, v12, v9

    aput-object v4, v12, v11

    aput-object v5, v12, v10

    .line 116
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 118
    invoke-virtual {v2, v4}, Lcom/miui/home/launcher/ShortcutIcon;->setAlpha(F)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    invoke-interface/range {p2 .. p2}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_4
    const-wide/16 v0, 0x0

    move-wide v13, v0

    move v12, v9

    .line 125
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v12, v0, :cond_7

    .line 126
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 127
    aget-object v1, v0, v9

    move-object v15, v1

    check-cast v15, Lcom/miui/home/launcher/ShortcutIcon;

    .line 128
    aget-object v1, v0, v11

    move-object v2, v1

    check-cast v2, Landroid/graphics/Bitmap;

    .line 129
    aget-object v0, v0, v10

    move-object v3, v0

    check-cast v3, [I

    .line 130
    new-instance v5, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;

    .line 132
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object v0, v5

    move-object v1, v6

    move-object/from16 p0, v5

    move v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;-><init>(Lcom/miui/home/launcher/DragLayer;Landroid/graphics/Bitmap;[III)V

    .line 133
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v11

    if-ne v12, v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->getToTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    move-object v4, v0

    .line 134
    rem-int/lit8 v0, v12, 0x2

    if-nez v0, :cond_6

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_6
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_4
    move v3, v0

    .line 135
    new-instance v5, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$2;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v7

    move-object v9, v5

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$2;-><init>(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;Lcom/miui/home/launcher/sound/SoundPoolHelper;FLjava/lang/Object;Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->setListener(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$BaseBoomTransitionListener;)V

    .line 163
    new-instance v1, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$DisappearValueAnim;

    invoke-direct {v1, v15, v0}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$DisappearValueAnim;-><init>(Landroid/view/View;Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;)V

    .line 164
    invoke-virtual {v1, v13, v14}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$DisappearValueAnim;->setStartDelay(J)V

    const-wide/16 v2, 0x3c

    add-long/2addr v13, v2

    .line 166
    invoke-virtual {v1}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$DisappearValueAnim;->start()V

    add-int/lit8 v12, v12, 0x1

    const/4 v9, 0x0

    goto :goto_2

    :cond_7
    return-void
.end method

.method private static getShortcutIcon(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 1

    .line 35
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object p0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getUserId()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p0

    return-object p0

    .line 38
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p0

    return-object p0
.end method

.method public static iconBoomAnim(Lcom/miui/home/launcher/Launcher;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 2
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

    .line 171
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$3;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/List;Ljava/lang/Runnable;)V

    const-wide/16 p0, 0xc8

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static widgetDoBoomAnim(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;Ljava/lang/Runnable;[I)V
    .locals 7

    .line 43
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v1

    .line 48
    instance-of v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz v0, :cond_0

    .line 49
    check-cast p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    iget-object p1, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->hostView:Lcom/miui/home/launcher/maml/MaMlWidgetView;

    goto :goto_0

    .line 50
    :cond_0
    instance-of v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz v0, :cond_1

    .line 51
    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    iget-object p1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Lcom/miui/home/launcher/LauncherWidgetView;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    .line 55
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->captureSnapshot(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    if-nez p3, :cond_3

    const/4 p3, 0x2

    new-array v0, p3, [I

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 64
    aget v3, v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/2addr v4, p3

    add-int/2addr v3, v4

    aput v3, v0, v6

    const/4 v3, 0x1

    .line 65
    aget v4, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/2addr v5, p3

    add-int/2addr v4, v5

    aput v4, v0, v3

    move-object v3, v0

    goto :goto_1

    :cond_3
    move-object v3, p3

    .line 67
    :goto_1
    new-instance p3, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;-><init>(Lcom/miui/home/launcher/DragLayer;Landroid/graphics/Bitmap;[III)V

    .line 71
    invoke-virtual {p1, v6}, Landroid/view/View;->setClickable(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSoundPoolHelper()Lcom/miui/home/launcher/sound/SoundPoolHelper;

    move-result-object p0

    .line 73
    new-instance v0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$1;

    invoke-direct {v0, p3, p0, p2}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$1;-><init>(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;Lcom/miui/home/launcher/sound/SoundPoolHelper;Ljava/lang/Runnable;)V

    invoke-virtual {p3, v0}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->setListener(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$BaseBoomTransitionListener;)V

    .line 93
    new-instance p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$DisappearValueAnim;

    invoke-direct {p0, p1, p3}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$DisappearValueAnim;-><init>(Landroid/view/View;Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;)V

    const-wide/16 p1, 0x0

    .line 94
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$DisappearValueAnim;->setStartDelay(J)V

    .line 95
    invoke-virtual {p0}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$DisappearValueAnim;->start()V

    return-void

    .line 56
    :cond_4
    :goto_2
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method
