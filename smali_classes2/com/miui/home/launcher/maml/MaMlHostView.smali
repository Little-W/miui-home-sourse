.class public Lcom/miui/home/launcher/maml/MaMlHostView;
.super Lcom/miui/maml/component/MamlView;
.source "MaMlHostView.java"

# interfaces
.implements Lcom/miui/home/launcher/gadget/ColorUpdatable;
.implements Lcom/miui/home/launcher/interfaces/AutoAlignable;
.implements Lcom/miui/maml/component/MamlView$OnExternCommandListener;


# instance fields
.field private final mCornerRadiusEnforcementOutline:Landroid/view/ViewOutlineProvider;

.field private mEnforcedCornerRadius:F

.field private final mEnforcedRectangle:Landroid/graphics/Rect;

.field private mWidgetId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/maml/MaMlHostView;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/component/MamlView;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 36
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mEnforcedRectangle:Landroid/graphics/Rect;

    .line 122
    new-instance p2, Lcom/miui/home/launcher/maml/MaMlHostView$1;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/maml/MaMlHostView$1;-><init>(Lcom/miui/home/launcher/maml/MaMlHostView;)V

    iput-object p2, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mCornerRadiusEnforcementOutline:Landroid/view/ViewOutlineProvider;

    .line 46
    invoke-static {p1}, Lcom/miui/home/launcher/widget/RoundedCornerEnforcement;->computeEnforcedRadius(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mEnforcedCornerRadius:F

    .line 47
    invoke-virtual {p0, p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->setOnExternCommandListener(Lcom/miui/maml/component/MamlView$OnExternCommandListener;)V

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

.method private computeRoundedCornerRadius(Lcom/miui/home/launcher/ItemInfo;)F
    .locals 5

    .line 149
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/widget/RoundedCornerEnforcement;->computeEnforcedRadius(Landroid/content/Context;)F

    move-result v0

    .line 150
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getCornerType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const v4, 0x5c0e14b6

    if-eq v2, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "capsule_rect"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_4

    .line 152
    :cond_2
    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    const/4 v2, 0x1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-ne v1, v2, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    if-eqz v2, :cond_5

    .line 154
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-le v0, p1, :cond_4

    iget-object p1, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mEnforcedRectangle:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mEnforcedRectangle:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    :goto_3
    div-int/2addr p1, v4

    int-to-float p1, p1

    move v0, p1

    :cond_5
    :goto_4
    return v0
.end method

.method private enforceRoundedCorners()V
    .locals 1

    .line 135
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->disableCutRoundCorner()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 136
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->setClipToOutline(Z)V

    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mEnforcedRectangle:Landroid/graphics/Rect;

    invoke-static {p0, p0, v0}, Lcom/miui/home/launcher/widget/RoundedCornerEnforcement;->computeRoundedRectangle(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 143
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->computeRoundedCornerRadius(Lcom/miui/home/launcher/ItemInfo;)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mEnforcedCornerRadius:F

    .line 144
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mCornerRadiusEnforcementOutline:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x1

    .line 145
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->setClipToOutline(Z)V

    return-void
.end method

.method private getCornerType()Ljava/lang/String;
    .locals 2

    .line 164
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getCornerCutType()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "rounded_rect"

    :cond_0
    return-object v0
.end method

.method private invalidateConfig()V
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    .line 108
    iget-object v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    iget-object v0, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configPath:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/miui/maml/widget/edit/WidgetEditSave;->restoreFromConfigPath(Lcom/miui/maml/component/MamlView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCornerRadius()F
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->disableCutRoundCorner()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mEnforcedCornerRadius:F

    :goto_0
    return v0
.end method

.method public getItemInfo()Lcom/miui/home/launcher/ItemInfo;
    .locals 2

    .line 114
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 115
    instance-of v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz v1, :cond_0

    .line 118
    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    return-object v0

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong type of ItemInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWidgetId()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mWidgetId:I

    return v0
.end method

.method public notifyColorChanged()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->updateLauncherComponentColorByWallpaper(Lcom/miui/home/launcher/gadget/ColorUpdatable;)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 52
    invoke-super {p0}, Lcom/miui/maml/component/MamlView;->onAttachedToWindow()V

    .line 53
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->invalidateConfig()V

    return-void
.end method

.method public onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 0

    const-string p2, "clickMaMlTrack"

    .line 174
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 176
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    .line 175
    invoke-static {p1, p2, p3}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackClickMaMl(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "exposeMaMlTrack"

    .line 177
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 179
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    .line 178
    invoke-static {p1, p2, p3}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackExposeMaMl(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 103
    invoke-super {p0}, Lcom/miui/maml/component/MamlView;->onDestroy()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 58
    invoke-super/range {p0 .. p5}, Lcom/miui/maml/component/MamlView;->onLayout(ZIIII)V

    .line 59
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->enforceRoundedCorners()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 97
    invoke-super {p0}, Lcom/miui/maml/component/MamlView;->onPause()V

    const-string v0, "pause"

    .line 98
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->sendCommand(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 89
    invoke-super {p0}, Lcom/miui/maml/component/MamlView;->onResume()V

    const-string v0, "MaMlHostView"

    const-string v1, "onResume"

    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->invalidateConfig()V

    const-string v0, "resume"

    .line 92
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->sendCommand(Ljava/lang/String;)V

    return-void
.end method

.method public setWidgetId(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mWidgetId:I

    return-void
.end method

.method public updateColor(I)V
    .locals 3

    const-string v0, "MaMlHostView"

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateColor :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_1

    const-string v0, "applied_light_wallpaper"

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 73
    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/maml/MaMlHostView;->putVariableNumber(Ljava/lang/String;D)V

    .line 75
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->requestUpdate()V

    :cond_1
    return-void
.end method
