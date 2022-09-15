.class public Lcom/miui/home/launcher/upsidescene/FreeButton;
.super Landroid/view/View;
.source "FreeButton.java"

# interfaces
.implements Lcom/miui/home/launcher/upsidescene/FreeButtonState$StateUpdateListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFreeButtonState:Lcom/miui/home/launcher/upsidescene/FreeButtonState;

.field private mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

.field private mSprite:Lcom/miui/home/launcher/upsidescene/data/Sprite;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/upsidescene/data/Sprite;Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/upsidescene/FreeButton;->init(Landroid/content/Context;Lcom/miui/home/launcher/upsidescene/data/Sprite;Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    return-void
.end method

.method private getDrawableAnyway(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FreeButton;->mSprite:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getAppearance()Lcom/miui/home/launcher/upsidescene/data/Appearance;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/upsidescene/data/Appearance$FreeButtonAppearance;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FreeButton;->mSprite:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getAppearance()Lcom/miui/home/launcher/upsidescene/data/Appearance;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/data/Appearance$FreeButtonAppearance;

    .line 61
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Appearance$FreeButtonAppearance;->getFreeButtonInfo()Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/FreeButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->getDrawable(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_2

    .line 64
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Appearance$FreeButtonAppearance;->getFreeButtonInfo()Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FreeButton;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2, v0}, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->getDrawable(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 66
    new-instance p2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 67
    sget-object v0, Landroid/view/View;->PRESSED_STATE_SET:[I

    invoke-virtual {p2, v0, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 68
    sget-object p1, Landroid/view/View;->EMPTY_STATE_SET:[I

    invoke-virtual {p2, p1, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    move-object v1, p2

    goto :goto_0

    :cond_1
    const-string p2, "normal"

    .line 73
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "normal"

    const-string p2, "normal_pressed"

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/upsidescene/FreeButton;->getDrawableAnyway(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method private startAnimationIfNeed()I
    .locals 4

    .line 100
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/FreeButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/FreeButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 103
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    .line 104
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return v1

    :cond_1
    return v1
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/miui/home/launcher/upsidescene/data/Sprite;Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 6

    .line 42
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/FreeButton;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/miui/home/launcher/upsidescene/FreeButton;->mSprite:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    .line 44
    iput-object p3, p0, Lcom/miui/home/launcher/upsidescene/FreeButton;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    const/4 p1, 0x1

    .line 45
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/upsidescene/FreeButton;->setClickable(Z)V

    .line 46
    new-instance p1, Lcom/miui/home/launcher/upsidescene/FreeButtonState;

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/FreeButton;->mContext:Landroid/content/Context;

    move-object v0, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/upsidescene/FreeButtonState;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/upsidescene/data/Sprite;Landroid/view/View;Lcom/miui/home/launcher/upsidescene/SceneScreen;Lcom/miui/home/launcher/upsidescene/FreeButtonState$StateUpdateListener;)V

    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/FreeButton;->mFreeButtonState:Lcom/miui/home/launcher/upsidescene/FreeButtonState;

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 114
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 115
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/FreeButton;->startAnimationIfNeed()I

    return-void
.end method

.method public onStateUpdated(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FreeButton;->mSprite:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Function;->getType()I

    move-result v0

    .line 83
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/FreeButton;->mSprite:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getAppearance()Lcom/miui/home/launcher/upsidescene/data/Appearance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/data/Appearance;->getType()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/FreeButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080237

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 87
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/upsidescene/FreeButton;->getDrawableAnyway(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 90
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/upsidescene/FreeButton;->getDrawableAnyway(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    const/4 p1, 0x0

    return p1

    .line 95
    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/upsidescene/FreeButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 96
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/FreeButton;->startAnimationIfNeed()I

    move-result p1

    return p1
.end method

.method public performClick()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FreeButton;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FreeButton;->mFreeButtonState:Lcom/miui/home/launcher/upsidescene/FreeButtonState;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->trigger()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
