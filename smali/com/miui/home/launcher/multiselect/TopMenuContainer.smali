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

.field private mImageView:Landroid/widget/ImageView;

.field private mTopMenuContainerAnim:Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;

.field protected mTopMenuContainerTopMenuState:Lcom/miui/home/launcher/multiselect/TopMenuState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lcom/miui/home/launcher/multiselect/TopMenuColor;

    const v1, 0x7f0603cb

    const v2, 0x7f0603ca

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/multiselect/TopMenuColor;-><init>(II)V

    sput-object v0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->GONE_COLOR:Lcom/miui/home/launcher/multiselect/TopMenuColor;

    .line 28
    new-instance v0, Lcom/miui/home/launcher/multiselect/TopMenuColor;

    const v1, 0x7f0603cd

    const v2, 0x7f0603cc

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/multiselect/TopMenuColor;-><init>(II)V

    sput-object v0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->NORMAL_COLOR:Lcom/miui/home/launcher/multiselect/TopMenuColor;

    .line 29
    new-instance v0, Lcom/miui/home/launcher/multiselect/TopMenuColor;

    const v1, 0x7f0603cf

    const v2, 0x7f0603ce

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

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "Launcher.TopMenuButton"

    .line 23
    iput-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->TAG:Ljava/lang/String;

    .line 25
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 43
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

    .line 44
    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 45
    new-instance p1, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;-><init>(Lcom/miui/home/launcher/multiselect/TopMenuContainer;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;-><init>(Lcom/miui/home/launcher/multiselect/TopMenuContainer;)V

    :goto_0
    iput-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerAnim:Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;

    .line 46
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

    .line 177
    new-array v0, v0, [Lcom/miui/home/launcher/multiselect/TopMenuState;

    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getGoneState()Lcom/miui/home/launcher/multiselect/TopMenuState;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getNormalState()Lcom/miui/home/launcher/multiselect/TopMenuState;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getPressedState()Lcom/miui/home/launcher/multiselect/TopMenuState;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onWallpaperColorChanged$0(Lcom/miui/home/launcher/multiselect/TopMenuState;)V
    .locals 0

    .line 184
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuState;->onWallpaperColorChanged()V

    return-void
.end method

.method private reset()V
    .locals 1

    const/16 v0, 0x8

    .line 79
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->setVisibility(I)V

    .line 80
    sget-object v0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->GONE_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->setTopMenuContainerTopMenuState(Lcom/miui/home/launcher/multiselect/TopMenuState;)V

    return-void
.end method

.method private setTopMenuContainerTopMenuState(Lcom/miui/home/launcher/multiselect/TopMenuState;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerTopMenuState:Lcom/miui/home/launcher/multiselect/TopMenuState;

    return-void
.end method


# virtual methods
.method protected changeStateWhenPressed(Landroid/view/MotionEvent;)V
    .locals 3

    .line 158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 161
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->isNormalState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->changeToPressedState(Z)V

    .line 163
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerAnim:Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->onTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 168
    :cond_0
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->isPressedState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->changeToNormalState(Z)V

    .line 170
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerAnim:Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->onTouchEvent(Landroid/view/MotionEvent;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public changeToGoneState(Z)V
    .locals 1

    .line 116
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getGoneState()Lcom/miui/home/launcher/multiselect/TopMenuState;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->updateContainer(Lcom/miui/home/launcher/multiselect/TopMenuState;Z)V

    return-void
.end method

.method public changeToNormalState(Z)V
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getNormalState()Lcom/miui/home/launcher/multiselect/TopMenuState;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->updateContainer(Lcom/miui/home/launcher/multiselect/TopMenuState;Z)V

    return-void
.end method

.method public changeToPressedState(Z)V
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getPressedState()Lcom/miui/home/launcher/multiselect/TopMenuState;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->updateContainer(Lcom/miui/home/launcher/multiselect/TopMenuState;Z)V

    return-void
.end method

.method protected getGoneState()Lcom/miui/home/launcher/multiselect/TopMenuState;
    .locals 1

    .line 124
    sget-object v0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->GONE_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    return-object v0
.end method

.method protected getNormalState()Lcom/miui/home/launcher/multiselect/TopMenuState;
    .locals 1

    .line 120
    sget-object v0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->NORMAL_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    return-object v0
.end method

.method protected getPressedState()Lcom/miui/home/launcher/multiselect/TopMenuState;
    .locals 1

    .line 146
    sget-object v0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->PRESSED_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    return-object v0
.end method

.method protected isGoneState()Z
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerTopMenuState:Lcom/miui/home/launcher/multiselect/TopMenuState;

    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getGoneState()Lcom/miui/home/launcher/multiselect/TopMenuState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isNormalState()Z
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerTopMenuState:Lcom/miui/home/launcher/multiselect/TopMenuState;

    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getNormalState()Lcom/miui/home/launcher/multiselect/TopMenuState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isPressedState()Z
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerTopMenuState:Lcom/miui/home/launcher/multiselect/TopMenuState;

    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getPressedState()Lcom/miui/home/launcher/multiselect/TopMenuState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isState(Lcom/miui/home/launcher/multiselect/TopMenuState;)Z
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerTopMenuState:Lcom/miui/home/launcher/multiselect/TopMenuState;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 70
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a02ad

    .line 71
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mImageView:Landroid/widget/ImageView;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 63
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 64
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->setPivotX(F)V

    .line 65
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

    .line 141
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->changeStateWhenPressed(Landroid/view/MotionEvent;)V

    .line 142
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onWallpaperColorChanged()V
    .locals 3

    .line 182
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getAllTopMenuStates()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/multiselect/-$$Lambda$TopMenuContainer$T1wO_RwXNWMwEmFwUWU5aY58Ewo;->INSTANCE:Lcom/miui/home/launcher/multiselect/-$$Lambda$TopMenuContainer$T1wO_RwXNWMwEmFwUWU5aY58Ewo;

    .line 183
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 186
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerTopMenuState:Lcom/miui/home/launcher/multiselect/TopMenuState;

    .line 187
    sget-object v1, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->GONE_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->updateContainer(Lcom/miui/home/launcher/multiselect/TopMenuState;Z)V

    .line 188
    invoke-virtual {p0, v0, v2}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->updateContainer(Lcom/miui/home/launcher/multiselect/TopMenuState;Z)V

    return-void
.end method

.method protected setImageResource(I)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method protected updateContainer(Lcom/miui/home/launcher/multiselect/TopMenuState;Z)V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerTopMenuState:Lcom/miui/home/launcher/multiselect/TopMenuState;

    if-eq v0, p1, :cond_3

    if-eqz p1, :cond_3

    .line 86
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->setTopMenuContainerTopMenuState(Lcom/miui/home/launcher/multiselect/TopMenuState;)V

    .line 87
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->isGoneState()Z

    move-result p1

    if-nez p1, :cond_1

    .line 89
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerAnim:Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;

    instance-of p1, p1, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 90
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->setVisibility(I)V

    .line 94
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

    .line 96
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerAnim:Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;

    iget-object p2, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerTopMenuState:Lcom/miui/home/launcher/multiselect/TopMenuState;

    invoke-virtual {p1, v0, p2}, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->changeStateWithAnim(Lcom/miui/home/launcher/multiselect/TopMenuState;Lcom/miui/home/launcher/multiselect/TopMenuState;)V

    goto :goto_0

    .line 98
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerAnim:Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;

    iget-object p2, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mTopMenuContainerTopMenuState:Lcom/miui/home/launcher/multiselect/TopMenuState;

    invoke-virtual {p1, v0, p2}, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->changeStateWithoutAnim(Lcom/miui/home/launcher/multiselect/TopMenuState;Lcom/miui/home/launcher/multiselect/TopMenuState;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateImageAndTextColor(FIIII)V
    .locals 1

    .line 52
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

    .line 53
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

    .line 54
    invoke-virtual {p0, p2, p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->updateImageAndTextColor(II)V

    return-void
.end method

.method public updateImageAndTextColor(II)V
    .locals 1

    .line 58
    iget-object p2, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->mImageView:Landroid/widget/ImageView;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p1, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
