.class public Lcom/miui/home/launcher/maml/MaMlHostView;
.super Lcom/miui/maml/component/MamlView;
.source "MaMlHostView.java"

# interfaces
.implements Lcom/miui/home/launcher/gadget/ColorUpdatable;
.implements Lcom/miui/home/launcher/interfaces/AutoAlignable;


# instance fields
.field private final mCornerRadiusEnforcementOutline:Landroid/view/ViewOutlineProvider;

.field private final mEnforcedCornerRadius:F

.field private final mEnforcedRectangle:Landroid/graphics/Rect;

.field private mWidgetId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/maml/MaMlHostView;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/component/MamlView;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 32
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mEnforcedRectangle:Landroid/graphics/Rect;

    .line 117
    new-instance p2, Lcom/miui/home/launcher/maml/MaMlHostView$1;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/maml/MaMlHostView$1;-><init>(Lcom/miui/home/launcher/maml/MaMlHostView;)V

    iput-object p2, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mCornerRadiusEnforcementOutline:Landroid/view/ViewOutlineProvider;

    .line 42
    invoke-static {p1}, Lcom/miui/home/launcher/widget/RoundedCornerEnforcement;->computeEnforcedRadius(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mEnforcedCornerRadius:F

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/maml/MaMlHostView;)Landroid/graphics/Rect;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mEnforcedRectangle:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/maml/MaMlHostView;)F
    .locals 0

    .line 28
    iget p0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mEnforcedCornerRadius:F

    return p0
.end method

.method private enforceRoundedCorners()V
    .locals 1

    .line 130
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->disableCutRoundCorner()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 131
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->setClipToOutline(Z)V

    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mEnforcedRectangle:Landroid/graphics/Rect;

    invoke-static {p0, p0, v0}, Lcom/miui/home/launcher/widget/RoundedCornerEnforcement;->computeRoundedRectangle(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 138
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mCornerRadiusEnforcementOutline:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x1

    .line 139
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->setClipToOutline(Z)V

    return-void
.end method

.method private invalidateConfig()V
    .locals 2

    .line 102
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    .line 103
    iget-object v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    iget-object v0, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configPath:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/miui/maml/widget/edit/WidgetEditSave;->restoreFromConfigPath(Lcom/miui/maml/component/MamlView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemInfo()Lcom/miui/home/launcher/ItemInfo;
    .locals 2

    .line 109
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 110
    instance-of v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz v1, :cond_0

    .line 113
    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    return-object v0

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "wrong type of ItemInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWidgetId()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mWidgetId:I

    return v0
.end method

.method public notifyColorChanged()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 60
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->updateLauncherComponentColorByWallpaper(Lcom/miui/home/launcher/gadget/ColorUpdatable;)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 47
    invoke-super {p0}, Lcom/miui/maml/component/MamlView;->onAttachedToWindow()V

    .line 48
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->invalidateConfig()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 98
    invoke-super {p0}, Lcom/miui/maml/component/MamlView;->onDestroy()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 53
    invoke-super/range {p0 .. p5}, Lcom/miui/maml/component/MamlView;->onLayout(ZIIII)V

    .line 54
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->enforceRoundedCorners()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 92
    invoke-super {p0}, Lcom/miui/maml/component/MamlView;->onPause()V

    const-string v0, "pause"

    .line 93
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->sendCommand(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 84
    invoke-super {p0}, Lcom/miui/maml/component/MamlView;->onResume()V

    const-string v0, "MaMlHostView"

    const-string v1, "onResume"

    .line 85
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->invalidateConfig()V

    const-string v0, "resume"

    .line 87
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->sendCommand(Ljava/lang/String;)V

    return-void
.end method

.method public setWidgetId(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mWidgetId:I

    return-void
.end method

.method public updateColor(I)V
    .locals 3

    const-string v0, "MaMlHostView"

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateColor :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_1

    const-string v0, "applied_light_wallpaper"

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 68
    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/maml/MaMlHostView;->putVariableNumber(Ljava/lang/String;D)V

    .line 70
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->requestUpdate()V

    :cond_1
    return-void
.end method
