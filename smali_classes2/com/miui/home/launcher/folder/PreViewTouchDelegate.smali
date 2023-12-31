.class public final Lcom/miui/home/launcher/folder/PreViewTouchDelegate;
.super Ljava/lang/Object;
.source "PreViewTouchDelegate.kt"


# instance fields
.field private mDownState:Lmiuix/animation/controller/AnimState;

.field private mIsAnimDown:Z

.field private mStateStyle:Lmiuix/animation/IStateStyle;

.field private mUpState:Lmiuix/animation/controller/AnimState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final initFolme(Landroid/view/View;)V
    .locals 4

    .line 28
    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 29
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/folder/PreViewTouchDelegate;->mStateStyle:Lmiuix/animation/IStateStyle;

    .line 30
    new-instance p1, Lmiuix/animation/controller/AnimState;

    const-string v0, "myDown"

    invoke-direct {p1, v0}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 32
    sget-object v0, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    const v2, 0x3e3851ec    # 0.18f

    .line 33
    invoke-virtual {p0, v2, v1, v1, v1}, Lcom/miui/home/launcher/folder/PreViewTouchDelegate;->getTintColor(FIII)I

    move-result v2

    int-to-double v2, v2

    .line 31
    invoke-virtual {p1, v0, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/folder/PreViewTouchDelegate;->mDownState:Lmiuix/animation/controller/AnimState;

    .line 35
    new-instance p1, Lmiuix/animation/controller/AnimState;

    const-string v0, "myUp"

    invoke-direct {p1, v0}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 36
    sget-object v0, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, v1, v1}, Lcom/miui/home/launcher/folder/PreViewTouchDelegate;->getTintColor(FIII)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p1, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/folder/PreViewTouchDelegate;->mUpState:Lmiuix/animation/controller/AnimState;

    :cond_0
    return-void
.end method


# virtual methods
.method public final getTintColor(FIII)I
    .locals 0

    const/high16 p0, 0x437f0000    # 255.0f

    mul-float/2addr p1, p0

    float-to-int p1, p1

    int-to-float p2, p2

    mul-float/2addr p2, p0

    float-to-int p2, p2

    int-to-float p3, p3

    mul-float/2addr p3, p0

    float-to-int p3, p3

    int-to-float p4, p4

    mul-float/2addr p4, p0

    float-to-int p0, p4

    .line 41
    invoke-static {p1, p2, p3, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public final initTouchAnim(Landroid/view/View;)V
    .locals 1

    const-string v0, "targetView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/folder/PreViewTouchDelegate;->initFolme(Landroid/view/View;)V

    return-void
.end method

.method public final onTouchDown()V
    .locals 6

    .line 61
    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/folder/PreViewTouchDelegate;->mStateStyle:Lmiuix/animation/IStateStyle;

    if-eqz v0, :cond_1

    const-string v0, "PreviewIconView"

    const-string v1, "folmeDown"

    .line 62
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/miui/home/launcher/folder/PreViewTouchDelegate;->mStateStyle:Lmiuix/animation/IStateStyle;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/folder/PreViewTouchDelegate;->mDownState:Lmiuix/animation/controller/AnimState;

    new-array v3, v1, [Lmiuix/animation/base/AnimConfig;

    const/4 v4, 0x0

    new-instance v5, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    aput-object v5, v3, v4

    invoke-interface {v0, v2, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 64
    :cond_0
    iput-boolean v1, p0, Lcom/miui/home/launcher/folder/PreViewTouchDelegate;->mIsAnimDown:Z

    :cond_1
    return-void
.end method

.method public final onTouchUp()V
    .locals 5

    .line 50
    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/home/launcher/folder/PreViewTouchDelegate;->mIsAnimDown:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/folder/PreViewTouchDelegate;->mStateStyle:Lmiuix/animation/IStateStyle;

    if-eqz v0, :cond_2

    const-string v0, "PreviewIconView"

    const-string v1, "folmeUp"

    .line 53
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/miui/home/launcher/folder/PreViewTouchDelegate;->mStateStyle:Lmiuix/animation/IStateStyle;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmiuix/animation/IStateStyle;->cancel()V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/folder/PreViewTouchDelegate;->mStateStyle:Lmiuix/animation/IStateStyle;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/folder/PreViewTouchDelegate;->mUpState:Lmiuix/animation/controller/AnimState;

    const/4 v3, 0x1

    new-array v3, v3, [Lmiuix/animation/base/AnimConfig;

    new-instance v4, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    aput-object v4, v3, v1

    invoke-interface {v0, v2, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 56
    :cond_1
    iput-boolean v1, p0, Lcom/miui/home/launcher/folder/PreViewTouchDelegate;->mIsAnimDown:Z

    :cond_2
    return-void
.end method
