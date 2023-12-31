.class public Lcom/miui/home/launcher/maml/MaMlHostView;
.super Lcom/miui/maml/component/MamlView;
.source "MaMlHostView.java"

# interfaces
.implements Lcom/miui/home/launcher/gadget/ColorUpdatable;
.implements Lcom/miui/home/launcher/interfaces/AutoAlignable;
.implements Lcom/miui/maml/component/MamlView$OnExternCommandListener;


# instance fields
.field private isResumed:Z

.field private final mCornerRadiusEnforcementOutline:Landroid/view/ViewOutlineProvider;

.field private mEnforcedCornerRadius:F

.field private final mEnforcedRectangle:Landroid/graphics/Rect;

.field private mWidgetId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/maml/MaMlHostView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/maml/MaMlHostView;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/component/MamlView;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 44
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mEnforcedRectangle:Landroid/graphics/Rect;

    .line 161
    new-instance p2, Lcom/miui/home/launcher/maml/MaMlHostView$1;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/maml/MaMlHostView$1;-><init>(Lcom/miui/home/launcher/maml/MaMlHostView;)V

    iput-object p2, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mCornerRadiusEnforcementOutline:Landroid/view/ViewOutlineProvider;

    .line 58
    invoke-static {p1}, Lcom/miui/home/launcher/widget/RoundedCornerEnforcement;->computeEnforcedRadius(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mEnforcedCornerRadius:F

    .line 59
    invoke-virtual {p0, p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->setOnExternCommandListener(Lcom/miui/maml/component/MamlView$OnExternCommandListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/maml/MaMlHostView;)Landroid/graphics/Rect;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mEnforcedRectangle:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/maml/MaMlHostView;)F
    .locals 0

    .line 34
    iget p0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mEnforcedCornerRadius:F

    return p0
.end method

.method private computeRoundedCornerRadius(Lcom/miui/home/launcher/ItemInfo;)F
    .locals 5

    .line 189
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/widget/RoundedCornerEnforcement;->computeEnforcedRadius(Landroid/content/Context;)F

    move-result v0

    .line 190
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

    .line 192
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

    .line 194
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mEnforcedRectangle:Landroid/graphics/Rect;

    if-le v0, p1, :cond_4

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    :goto_3
    div-int/2addr p0, v4

    int-to-float p0, p0

    move v0, p0

    :cond_5
    :goto_4
    return v0
.end method

.method private enforceRoundedCorners()V
    .locals 1

    .line 174
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->disableCutRoundCorner()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 175
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->setClipToOutline(Z)V

    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mEnforcedRectangle:Landroid/graphics/Rect;

    invoke-static {p0, p0, v0}, Lcom/miui/home/launcher/widget/RoundedCornerEnforcement;->computeRoundedRectangle(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 182
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->computeRoundedCornerRadius(Lcom/miui/home/launcher/ItemInfo;)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mEnforcedCornerRadius:F

    .line 183
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mCornerRadiusEnforcementOutline:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 184
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->invalidateOutline()V

    const/4 v0, 0x1

    .line 185
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->setClipToOutline(Z)V

    return-void
.end method

.method private getCornerType()Ljava/lang/String;
    .locals 1

    .line 204
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getCornerCutType()Ljava/lang/String;

    move-result-object p0

    .line 205
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "rounded_rect"

    :cond_0
    return-object p0
.end method

.method private invalidateConfig()V
    .locals 2

    .line 146
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    .line 147
    iget-object v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    iget-object v0, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configPath:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/miui/maml/widget/edit/WidgetEditSave;->restoreFromConfigPath(Lcom/miui/maml/component/MamlView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public applyPath(Ljava/lang/String;)Z
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 139
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/maml/MaMlHostView;->setPathThenVisible(Ljava/lang/String;)V

    .line 140
    iget-object p1, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    xor-int/lit8 v0, p1, 0x1

    .line 141
    iput-boolean v0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->isResumed:Z

    return p1
.end method

.method public getCornerRadius()F
    .locals 1

    .line 209
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->disableCutRoundCorner()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mEnforcedCornerRadius:F

    :goto_0
    return p0
.end method

.method public getItemInfo()Lcom/miui/home/launcher/ItemInfo;
    .locals 1

    .line 153
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getTag()Ljava/lang/Object;

    move-result-object p0

    .line 154
    instance-of v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz v0, :cond_0

    .line 157
    check-cast p0, Lcom/miui/home/launcher/ItemInfo;

    return-object p0

    .line 155
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "wrong type of ItemInfo"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method getMaMlRoot()Ljava/lang/Object;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    return-object p0
.end method

.method public getWidgetId()I
    .locals 0

    .line 96
    iget p0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mWidgetId:I

    return p0
.end method

.method isResumed()Z
    .locals 0

    .line 109
    iget-boolean p0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->isResumed:Z

    return p0
.end method

.method public notifyColorChanged()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 77
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->updateLauncherComponentColorByWallpaper(Lcom/miui/home/launcher/gadget/ColorUpdatable;)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 64
    invoke-super {p0}, Lcom/miui/maml/component/MamlView;->onAttachedToWindow()V

    .line 65
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->invalidateConfig()V

    return-void
.end method

.method public onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 0

    const-string p2, "clickMaMlTrack"

    .line 214
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 216
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    .line 215
    invoke-static {p1, p0, p3}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackClickMaMl(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "exposeMaMlTrack"

    .line 217
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 218
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 219
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    .line 218
    invoke-static {p1, p0, p3}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackExposeMaMl(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p2, "clickMaMlAdTrack"

    .line 220
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 221
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 222
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    .line 221
    invoke-static {p1, p0, p3}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackClickAdvertMaMl(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p2, "exposeMaMlAdTrack"

    .line 223
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 224
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 225
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    .line 224
    invoke-static {p1, p0, p3}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackExposeAdvertMaMl(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 134
    invoke-super {p0}, Lcom/miui/maml/component/MamlView;->onDestroy()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 70
    invoke-super/range {p0 .. p5}, Lcom/miui/maml/component/MamlView;->onLayout(ZIIII)V

    .line 71
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->enforceRoundedCorners()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 125
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->isResumed:Z

    if-eqz v0, :cond_0

    .line 126
    invoke-super {p0}, Lcom/miui/maml/component/MamlView;->onPause()V

    const-string v0, "pause"

    .line 127
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->sendCommand(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->isResumed:Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 114
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->isResumed:Z

    if-nez v0, :cond_0

    .line 115
    invoke-super {p0}, Lcom/miui/maml/component/MamlView;->onResume()V

    const-string v0, "MaMlHostView"

    const-string v1, "onResume"

    .line 116
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->invalidateConfig()V

    const-string v0, "resume"

    .line 118
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->sendCommand(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->isResumed:Z

    :cond_0
    return-void
.end method

.method public setWidgetId(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mWidgetId:I

    return-void
.end method

.method public updateColor(I)V
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateColor :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MaMlHostView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlHostView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-string p1, "applied_light_wallpaper"

    .line 85
    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/maml/MaMlHostView;->putVariableNumber(Ljava/lang/String;D)V

    .line 87
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->requestUpdate()V

    :cond_1
    return-void
.end method
