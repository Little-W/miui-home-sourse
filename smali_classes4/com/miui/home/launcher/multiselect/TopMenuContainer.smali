.class public abstract Lcom/miui/home/launcher/multiselect/TopMenuContainer;
.super Landroid/widget/LinearLayout;
.source "TopMenuContainer.java"

# interfaces
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;


# static fields
.field private static final GONE_COLOR:Lcom/miui/home/launcher/multiselect/TopMenuColor;

.field private static final GONE_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

.field private static final NORMAL_COLOR:Lcom/miui/home/launcher/multiselect/TopMenuColor;

.field private static final NORMAL_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

.field private static final PRESSED_COLOR:Lcom/miui/home/launcher/multiselect/TopMenuColor;

.field private static final PRESSED_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;


# instance fields
.field protected TAG:Ljava/lang/String;

.field private mArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field private mImageResourceDarkWallpaper:I

.field private mImageResourceLightWallpaper:I

.field private mImageView:Landroid/widget/ImageView;

.field private mTopMenuContainerAnim:Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;

.field protected mTopMenuContainerTopMenuState:Lcom/miui/home/launcher/multiselect/TopMenuState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lcom/miui/home/launcher/multiselect/TopMenuColor;

    const v1, 0x7f0605d3

    const v2, 0x7f0605d2

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/multiselect/TopMenuColor;-><init>(II)V

    sput-object v0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->GONE_COLOR:Lcom/miui/home/launcher/multiselect/TopMenuColor;

    .line 28
    new-instance v0, Lcom/miui/home/launcher/multiselect/TopMenuColor;

    const v1, 0x7f0605d5

    const v2, 0x7f0605d4

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/multiselect/TopMenuColor;-><init>(II)V

    sput-object v0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->NORMAL_COLOR:Lcom/miui/home/launcher/multiselect/TopMenuColor;

    .line 29
    new-instance v0, Lcom/miui/home/launcher/multiselect/TopMenuColor;

    const v1, 0x7f0605d7

    const v2, 0x7f0605d6

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/multiselect/TopMenuColor;-><init>(II)V

    sput-object v0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->PRESSED_COLOR:Lcom/miui/home/launcher/multiselect/TopMenuColor;

    .line 31
    new-instance v0, Lcom/miui/home/launcher/multiselect/TopMenuState;

    sget-object v1, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->GONE_COLOR:Lcom/miui/home/launcher/multiselect/TopMenuColor;

    const-string v2, "gone"

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/multiselect/TopMenuState;-><init>(Lcom/miui/home/launcher/multiselect/TopMenuColor;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->GONE_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    .line 32
    new-instance v0, Lcom/miui/home/launcher/multiselect/TopMenuState;

    sget-object v1, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->NORMAL_COLOR:Lcom/miui/home/launcher/multiselect/TopMenuColor;

    const-string v2, "normal"

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/multiselect/TopMenuState;-><init>(Lcom/miui/home/launcher/multiselect/TopMenuColor;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->NORMAL_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    .line 33
    new-instance v0, Lcom/miui/home/launcher/multiselect/TopMenuState;

    sget-object v1, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->PRESSED_COLOR:Lcom/miui/home/launcher/multiselect/TopMenuColor;

    const-string v2, "pressed"

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/multiselect/TopMenuState;-><init>(Lcom/miui/home/launcher/multiselect/TopMenuColor;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->PRESSED_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "Launcher.TopMenuButton"

    .line 23
    iput-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->TAG:Ljava/lang/String;

    .line 25
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Launcher."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->TAG:Ljava/lang/String;

    .line 46
    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 47
    new-instance p1, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;-><init>(Lcom/miui/home/launcher/multiselect/TopMenuContainer;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;-><init>(Lcom/miui/home/launcher/multiselect/TopMenuContainer;)V

    :goto_0
    iput-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerAnim:Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;

    .line 48
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->reset()V

    return-void
.end method

.method private getAllTopMenuStates()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/multiselect/TopMenuState;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/miui/home/launcher/multiselect/TopMenuState;

    .line 189
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getGoneState()Lcom/miui/home/launcher/multiselect/TopMenuState;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getNormalState()Lcom/miui/home/launcher/multiselect/TopMenuState;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getPressedState()Lcom/miui/home/launcher/multiselect/TopMenuState;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$onWallpaperColorChanged$0(Lcom/miui/home/launcher/multiselect/TopMenuState;)V
    .locals 0

    .line 196
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuState;->onWallpaperColorChanged()V

    return-void
.end method

.method private reset()V
    .locals 1

    const/16 v0, 0x8

    .line 91
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->setVisibility(I)V

    .line 92
    sget-object v0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->GONE_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->setTopMenuContainerTopMenuState(Lcom/miui/home/launcher/multiselect/TopMenuState;)V

    return-void
.end method

.method private setTopMenuContainerTopMenuState(Lcom/miui/home/launcher/multiselect/TopMenuState;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerTopMenuState:Lcom/miui/home/launcher/multiselect/TopMenuState;

    return-void
.end method

.method private updateImageViewResource()V
    .locals 1

    .line 77
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mImageView:Landroid/widget/ImageView;

    iget p0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mImageResourceLightWallpaper:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mImageView:Landroid/widget/ImageView;

    iget p0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mImageResourceDarkWallpaper:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected changeStateWhenPressed(Landroid/view/MotionEvent;)V
    .locals 3

    .line 170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->isPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->changeToNormalState(Z)V

    .line 182
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerAnim:Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->onTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 173
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->isNormalState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->changeToPressedState(Z)V

    .line 175
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerAnim:Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->onTouchEvent(Landroid/view/MotionEvent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public changeToGoneState(Z)V
    .locals 1

    .line 128
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getGoneState()Lcom/miui/home/launcher/multiselect/TopMenuState;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->updateContainer(Lcom/miui/home/launcher/multiselect/TopMenuState;Z)V

    return-void
.end method

.method public changeToNormalState(Z)V
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getNormalState()Lcom/miui/home/launcher/multiselect/TopMenuState;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->updateContainer(Lcom/miui/home/launcher/multiselect/TopMenuState;Z)V

    return-void
.end method

.method public changeToPressedState(Z)V
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getPressedState()Lcom/miui/home/launcher/multiselect/TopMenuState;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->updateContainer(Lcom/miui/home/launcher/multiselect/TopMenuState;Z)V

    return-void
.end method

.method protected getGoneState()Lcom/miui/home/launcher/multiselect/TopMenuState;
    .locals 0

    .line 136
    sget-object p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->GONE_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    return-object p0
.end method

.method protected getNormalState()Lcom/miui/home/launcher/multiselect/TopMenuState;
    .locals 0

    .line 132
    sget-object p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->NORMAL_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    return-object p0
.end method

.method protected getPressedState()Lcom/miui/home/launcher/multiselect/TopMenuState;
    .locals 0

    .line 158
    sget-object p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->PRESSED_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    return-object p0
.end method

.method protected isGoneState()Z
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerTopMenuState:Lcom/miui/home/launcher/multiselect/TopMenuState;

    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getGoneState()Lcom/miui/home/launcher/multiselect/TopMenuState;

    move-result-object p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isNormalState()Z
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerTopMenuState:Lcom/miui/home/launcher/multiselect/TopMenuState;

    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getNormalState()Lcom/miui/home/launcher/multiselect/TopMenuState;

    move-result-object p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isPressedState()Z
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerTopMenuState:Lcom/miui/home/launcher/multiselect/TopMenuState;

    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getPressedState()Lcom/miui/home/launcher/multiselect/TopMenuState;

    move-result-object p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isState(Lcom/miui/home/launcher/multiselect/TopMenuState;)Z
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerTopMenuState:Lcom/miui/home/launcher/multiselect/TopMenuState;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 72
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0399

    .line 73
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mImageView:Landroid/widget/ImageView;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 65
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 66
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->setPivotX(F)V

    .line 67
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, p2

    sub-float/2addr p1, p3

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->setPivotY(F)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 153
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->changeStateWhenPressed(Landroid/view/MotionEvent;)V

    .line 154
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onWallpaperColorChanged()V
    .locals 3

    .line 194
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getAllTopMenuStates()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/multiselect/-$$Lambda$TopMenuContainer$T1wO_RwXNWMwEmFwUWU5aY58Ewo;->INSTANCE:Lcom/miui/home/launcher/multiselect/-$$Lambda$TopMenuContainer$T1wO_RwXNWMwEmFwUWU5aY58Ewo;

    .line 195
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 198
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerTopMenuState:Lcom/miui/home/launcher/multiselect/TopMenuState;

    .line 199
    sget-object v1, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->GONE_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->updateContainer(Lcom/miui/home/launcher/multiselect/TopMenuState;Z)V

    .line 200
    invoke-virtual {p0, v0, v2}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->updateContainer(Lcom/miui/home/launcher/multiselect/TopMenuState;Z)V

    .line 201
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->updateImageViewResource()V

    return-void
.end method

.method protected setImageResource(II)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mImageResourceDarkWallpaper:I

    .line 86
    iput p2, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mImageResourceLightWallpaper:I

    .line 87
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->updateImageViewResource()V

    return-void
.end method

.method protected updateContainer(Lcom/miui/home/launcher/multiselect/TopMenuState;Z)V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerTopMenuState:Lcom/miui/home/launcher/multiselect/TopMenuState;

    if-eq v0, p1, :cond_3

    if-eqz p1, :cond_3

    .line 98
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->setTopMenuContainerTopMenuState(Lcom/miui/home/launcher/multiselect/TopMenuState;)V

    .line 99
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->isGoneState()Z

    move-result p1

    if-nez p1, :cond_1

    .line 101
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerAnim:Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;

    instance-of p1, p1, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 102
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->setVisibility(I)V

    .line 106
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update top menu container state ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/TopMenuState;->getStateName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerTopMenuState:Lcom/miui/home/launcher/multiselect/TopMenuState;

    invoke-virtual {v2}, Lcom/miui/home/launcher/multiselect/TopMenuState;->getStateName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    .line 108
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerAnim:Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;

    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerTopMenuState:Lcom/miui/home/launcher/multiselect/TopMenuState;

    invoke-virtual {p1, v0, p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->changeStateWithAnim(Lcom/miui/home/launcher/multiselect/TopMenuState;Lcom/miui/home/launcher/multiselect/TopMenuState;)V

    goto :goto_0

    .line 110
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerAnim:Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;

    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerTopMenuState:Lcom/miui/home/launcher/multiselect/TopMenuState;

    invoke-virtual {p1, v0, p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->changeStateWithoutAnim(Lcom/miui/home/launcher/multiselect/TopMenuState;Lcom/miui/home/launcher/multiselect/TopMenuState;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateImageAndTextColor(FIIII)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 55
    iget-object p3, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p3, p1, p4, p5}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 56
    invoke-virtual {p0, p2, p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->updateImageAndTextColor(II)V

    return-void
.end method

.method public updateImageAndTextColor(II)V
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mImageView:Landroid/widget/ImageView;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
