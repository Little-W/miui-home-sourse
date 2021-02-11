.class public Lcom/miui/home/recents/settings/NavigationBarTypeView;
.super Landroid/widget/LinearLayout;
.source "NavigationBarTypeView.java"


# instance fields
.field private mFolme:Lmiui/animation/IFolme;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 4

    .line 23
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const/4 v0, 0x0

    move v1, v0

    .line 24
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypeView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 25
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypeView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 26
    new-array v2, v2, [Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypeView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v2}, Lmiui/animation/Folme;->useAt([Landroid/view/View;)Lmiui/animation/IFolme;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/recents/settings/NavigationBarTypeView;->mFolme:Lmiui/animation/IFolme;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypeView;->mFolme:Lmiui/animation/IFolme;

    invoke-interface {v0}, Lmiui/animation/IFolme;->touch()Lmiui/animation/ITouchStyle;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiui/animation/ITouchStyle;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 40
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setSelected(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 32
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypeView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 33
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypeView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
