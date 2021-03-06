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

    .line 44
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/AdvancedGadget;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 45
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/gadget/AwesomeClock;->setWillNotDraw(Z)V

    return-void
.end method

.method private updateCellInfo()V
    .locals 4

    .line 233
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/AwesomeClock;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 234
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    .line 237
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/AwesomeClock;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 238
    iget-wide v2, v1, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    .line 239
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    const-string v3, "screenIndex"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/miui/launcher/utils/MamlUtils;->putVariableString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    const-string v2, "cellX"

    iget v3, v1, Lcom/miui/home/launcher/gadget/GadgetInfo;->cellX:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/miui/launcher/utils/MamlUtils;->putVariableString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
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

    .line 247
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/gadget/AwesomeClock;->cleanUpView(Ljava/lang/Object;Landroid/view/View;)V

    const/4 v0, 0x0

    .line 248
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/AwesomeClock;->setClockButtonListener(Lcom/miui/launcher/views/MamlButtonActionListener;)Z

    return-void
.end method

.method public getUpdateInterval()I
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 122
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

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/launcher/utils/MamlUtils;->createScreenContext(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mElementContext:Ljava/lang/Object;

    return-void
.end method

.method public onAdded()V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mElementContext:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 148
    :cond_0
    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->getManifestRoot(Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "clock"

    .line 149
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    :try_start_0
    const-string v1, "update_interval"

    .line 154
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

    .line 156
    iput v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mUpdateInterval:I

    .line 159
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

    .line 160
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

    .line 163
    :catch_1
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mElementContext:Ljava/lang/Object;

    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->createScreenElementRoot(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    const/high16 v1, 0x447a0000    # 1000.0f

    iget v2, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mUpdateInterval:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MamlUtils;->setDefaultFramerate(Ljava/lang/Object;F)V

    .line 165
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mMamlConfig:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MamlUtils;->setConfig(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MamlUtils;->setScaleByDensity(Ljava/lang/Object;Z)V

    .line 167
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->load(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MamlUtils;->createMiAdvancedView(Landroid/content/Context;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Landroid/view/View;

    .line 172
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MamlUtils;->setFocusable(Landroid/view/View;Z)V

    .line 173
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 176
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/gadget/AwesomeClock;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mComponentCode:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mMamlPath:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 180
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    const-string v2, "__config_code"

    invoke-static {v1, v2, v0}, Lcom/miui/launcher/utils/MamlUtils;->putVariableString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    const-string v1, "__config_path"

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mMamlPath:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/launcher/utils/MamlUtils;->putVariableString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    const-string v1, "__rom_region"

    const-string v2, "ro.miui.region"

    invoke-static {v2}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/launcher/utils/MamlUtils;->putVariableString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/AwesomeClock;->updateColor()V

    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public onEditDisable()V
    .locals 5

    .line 214
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mElementContext:Ljava/lang/Object;

    const-string v2, "is_editing_mode"

    const-wide/16 v3, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/launcher/utils/MamlUtils;->updateVariable(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;D)V

    return-void
.end method

.method public onEditNormal()V
    .locals 5

    .line 219
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mElementContext:Ljava/lang/Object;

    const-string v2, "is_editing_mode"

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/launcher/utils/MamlUtils;->updateVariable(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;D)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 51
    monitor-enter v0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    const-string v2, "pause"

    invoke-static {v1, v2}, Lcom/miui/launcher/utils/MamlUtils;->onCommand(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 55
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Landroid/view/View;

    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->onPause(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 61
    monitor-enter v0

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    const-string v2, "resume"

    invoke-static {v1, v2}, Lcom/miui/launcher/utils/MamlUtils;->onCommand(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->loadConfig(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 63
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 66
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Landroid/view/View;

    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->onResume(Ljava/lang/Object;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/gadget/AdvancedGadget;->onSizeChanged(IIII)V

    .line 87
    iget-object p3, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    const-string p4, "pivotX"

    invoke-static {p3, p4}, Lcom/miui/launcher/utils/MamlUtils;->getRawAttr(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 88
    iget-object p4, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    const-string v0, "pivotY"

    invoke-static {p4, v0}, Lcom/miui/launcher/utils/MamlUtils;->getRawAttr(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x0

    .line 92
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

    .line 93
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

    .line 95
    :goto_1
    invoke-virtual {p3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move p3, p4

    move p4, v0

    .line 97
    :goto_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/AwesomeClock;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    cmpl-float v2, p3, v0

    if-eqz v2, :cond_2

    int-to-float p1, p1

    mul-float/2addr p1, p3

    .line 99
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/gadget/AwesomeClock;->setPivotX(F)V

    .line 100
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

    .line 103
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/gadget/AwesomeClock;->setPivotY(F)V

    .line 104
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

    .line 204
    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->setRenderThreadPause(Z)V

    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x1

    .line 209
    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->setRenderThreadPause(Z)V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 71
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/AwesomeClock;->updateColor()V

    return-void
.end method

.method public setClockButtonListener(Lcom/miui/launcher/views/MamlButtonActionListener;)Z
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v1, "clock_button"

    .line 191
    invoke-static {v0, v1, p1}, Lcom/miui/launcher/utils/MamlUtils;->addListenerOnElement(Ljava/lang/Object;Ljava/lang/String;Lcom/miui/launcher/views/MamlButtonActionListener;)Z

    move-result p1

    return p1
.end method

.method public setConfigParas(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mComponentCode:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mMamlPath:Ljava/lang/String;

    return-void
.end method

.method public setMamlConfigPath(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mMamlConfig:Ljava/lang/String;

    return-void
.end method

.method public setOnExternCommandListener(Lcom/miui/launcher/views/MamlOnExternCommandListener;)Z
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 198
    :cond_0
    invoke-static {v0, p1}, Lcom/miui/launcher/utils/MamlUtils;->setOnExternCommandListener(Ljava/lang/Object;Lcom/miui/launcher/views/MamlOnExternCommandListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method public updateAppearance(Ljava/util/Calendar;)V
    .locals 0

    .line 135
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mElementContext:Ljava/lang/Object;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    if-nez p1, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    invoke-static {p1}, Lcom/miui/launcher/utils/MamlUtils;->requestUpdate(Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public updateColor()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mElementContext:Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/WallpaperUtils;->updateGadgetColorByWallpaper(Lcom/miui/home/launcher/gadget/Gadget;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 229
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/AwesomeClock;->updateCellInfo()V

    return-void
.end method

.method public updateConfig(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
