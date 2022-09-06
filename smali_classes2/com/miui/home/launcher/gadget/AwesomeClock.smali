.class public Lcom/miui/home/launcher/gadget/AwesomeClock;
.super Lcom/miui/home/launcher/gadget/AdvancedGadget;
.source "AwesomeClock.java"

# interfaces
.implements Lcom/miui/home/launcher/gadget/Clock$ClockStyle;
.implements Lcom/miui/home/launcher/gadget/ColorUpdatable;


# instance fields
.field private mAwesomeView:Landroid/view/View;

.field private mComponentCode:Ljava/lang/String;

.field private mElementContext:Ljava/lang/Object;

.field private mMamlConfig:Ljava/lang/String;

.field private mMamlPath:Ljava/lang/String;

.field private mRoot:Ljava/lang/Object;

.field private mUpdateInterval:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/AdvancedGadget;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 44
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/gadget/AwesomeClock;->setWillNotDraw(Z)V

    return-void
.end method

.method private updateCellInfo()V
    .locals 4

    .line 242
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/AwesomeClock;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 243
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 244
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    .line 246
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/AwesomeClock;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 247
    iget-wide v2, v1, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    .line 248
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    const-string v3, "screenIndex"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/miui/launcher/utils/MamlUtils;->putVariableString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    const-string v2, "cellX"

    iget v3, v1, Lcom/miui/home/launcher/gadget/GadgetInfo;->cellX:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/miui/launcher/utils/MamlUtils;->putVariableString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    const-string v2, "cellY"

    iget v1, v1, Lcom/miui/home/launcher/gadget/GadgetInfo;->cellY:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/miui/launcher/utils/MamlUtils;->putVariableString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/gadget/AwesomeClock;->cleanUpView(Ljava/lang/Object;Landroid/view/View;)V

    const/4 v0, 0x0

    .line 257
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/AwesomeClock;->setClockButtonListener(Lcom/miui/launcher/views/MamlButtonActionListener;)Z

    return-void
.end method

.method public getUpdateInterval()I
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 121
    iget v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mUpdateInterval:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x3e8

    :goto_1
    return v0
.end method

.method public initConfig(Ljava/lang/String;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/launcher/utils/MamlUtils;->createScreenContext(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mElementContext:Ljava/lang/Object;

    return-void
.end method

.method public notifyColorChanged()V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mElementContext:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 228
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->updateLauncherComponentColorByWallpaper(Lcom/miui/home/launcher/gadget/ColorUpdatable;)V

    .line 229
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/AwesomeClock;->updateCellInfo()V

    :cond_0
    return-void
.end method

.method public onAdded()V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mElementContext:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 147
    :cond_0
    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->getManifestRoot(Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "clock"

    .line 148
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    :try_start_0
    const-string v1, "update_interval"

    .line 153
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mUpdateInterval:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const v1, 0xea60

    .line 155
    iput v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mUpdateInterval:I

    .line 158
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/AwesomeClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "width"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 159
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/AwesomeClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "height"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 162
    :catch_1
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mElementContext:Ljava/lang/Object;

    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->createScreenElementRoot(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    const/high16 v1, 0x447a0000    # 1000.0f

    iget v2, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mUpdateInterval:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MamlUtils;->setDefaultFramerate(Ljava/lang/Object;F)V

    .line 164
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mMamlConfig:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MamlUtils;->setConfig(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MamlUtils;->setScaleByDensity(Ljava/lang/Object;Z)V

    .line 166
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->load(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MamlUtils;->createMiAdvancedView(Landroid/content/Context;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Landroid/view/View;

    .line 171
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MamlUtils;->setFocusable(Landroid/view/View;Z)V

    .line 172
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 175
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/gadget/AwesomeClock;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mComponentCode:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mMamlPath:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 179
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    const-string v2, "__config_code"

    invoke-static {v1, v2, v0}, Lcom/miui/launcher/utils/MamlUtils;->putVariableString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    const-string v1, "__config_path"

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mMamlPath:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/launcher/utils/MamlUtils;->putVariableString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    const-string v1, "__rom_region"

    const-string v2, "ro.miui.region"

    invoke-static {v2}, Lcom/miui/launcher/utils/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/launcher/utils/MamlUtils;->putVariableString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/AwesomeClock;->notifyColorChanged()V

    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public onEditDisable()V
    .locals 5

    .line 213
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mElementContext:Ljava/lang/Object;

    const-string v2, "is_editing_mode"

    const-wide/16 v3, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/launcher/utils/MamlUtils;->updateVariable(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;D)V

    return-void
.end method

.method public onEditNormal()V
    .locals 5

    .line 218
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mElementContext:Ljava/lang/Object;

    const-string v2, "is_editing_mode"

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/launcher/utils/MamlUtils;->updateVariable(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;D)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 50
    monitor-enter v0

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    const-string v2, "pause"

    invoke-static {v1, v2}, Lcom/miui/launcher/utils/MamlUtils;->onCommand(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 54
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Landroid/view/View;

    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->onPause(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 60
    monitor-enter v0

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    const-string v2, "resume"

    invoke-static {v1, v2}, Lcom/miui/launcher/utils/MamlUtils;->onCommand(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->loadConfig(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 62
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 65
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Landroid/view/View;

    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->onResume(Ljava/lang/Object;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    .line 84
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/gadget/AdvancedGadget;->onSizeChanged(IIII)V

    .line 86
    iget-object p3, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    const-string p4, "pivotX"

    invoke-static {p3, p4}, Lcom/miui/launcher/utils/MamlUtils;->getRawAttr(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 87
    iget-object p4, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    const-string v0, "pivotY"

    invoke-static {p4, v0}, Lcom/miui/launcher/utils/MamlUtils;->getRawAttr(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x0

    .line 91
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    move p3, v0

    .line 92
    :goto_0
    :try_start_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_1
    move p4, v0

    goto :goto_2

    :catch_0
    move-exception p4

    move-object v3, p4

    move p4, p3

    move-object p3, v3

    goto :goto_1

    :catch_1
    move-exception p3

    move p4, v0

    .line 94
    :goto_1
    invoke-virtual {p3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move p3, p4

    move p4, v0

    .line 96
    :goto_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/AwesomeClock;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    cmpl-float v2, p3, v0

    if-eqz v2, :cond_2

    int-to-float p1, p1

    mul-float/2addr p1, p3

    .line 98
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/gadget/AwesomeClock;->setPivotX(F)V

    .line 99
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p3

    invoke-virtual {v1, p1}, Landroid/view/View;->setPivotX(F)V

    :cond_2
    cmpl-float p1, p4, v0

    if-eqz p1, :cond_3

    int-to-float p1, p2

    mul-float/2addr p1, p4

    .line 102
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/gadget/AwesomeClock;->setPivotY(F)V

    .line 103
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p4

    invoke-virtual {v1, p1}, Landroid/view/View;->setPivotY(F)V

    :cond_3
    return-void
.end method

.method public onStart()V
    .locals 1

    const/4 v0, 0x0

    .line 203
    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->setRenderThreadPause(Z)V

    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x1

    .line 208
    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->setRenderThreadPause(Z)V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/AwesomeClock;->notifyColorChanged()V

    return-void
.end method

.method public setClockButtonListener(Lcom/miui/launcher/views/MamlButtonActionListener;)Z
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v1, "clock_button"

    .line 190
    invoke-static {v0, v1, p1}, Lcom/miui/launcher/utils/MamlUtils;->addListenerOnElement(Ljava/lang/Object;Ljava/lang/String;Lcom/miui/launcher/views/MamlButtonActionListener;)Z

    move-result p1

    return p1
.end method

.method public setConfigParas(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mComponentCode:Ljava/lang/String;

    .line 114
    iput-object p2, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mMamlPath:Ljava/lang/String;

    return-void
.end method

.method public setMamlConfigPath(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mMamlConfig:Ljava/lang/String;

    return-void
.end method

.method public updateAppearance(Ljava/util/Calendar;)V
    .locals 0

    .line 134
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mElementContext:Ljava/lang/Object;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    if-nez p1, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    invoke-static {p1}, Lcom/miui/launcher/utils/MamlUtils;->requestUpdate(Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public updateColor(I)V
    .locals 5

    .line 235
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mElementContext:Ljava/lang/Object;

    if-eqz v1, :cond_1

    const-string v2, "applied_light_wallpaper"

    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 236
    :goto_0
    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/launcher/utils/MamlUtils;->updateVariable(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;D)V

    :cond_1
    return-void
.end method

.method public updateConfig(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
