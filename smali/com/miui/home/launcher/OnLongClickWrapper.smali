.class public Lcom/miui/home/launcher/OnLongClickWrapper;
.super Lcom/miui/launcher/views/LauncherFrameLayout;
.source "OnLongClickWrapper.java"

# interfaces
.implements Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;


# instance fields
.field private mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/miui/launcher/views/LauncherFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 22
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherFrameLayout;->setClickable(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/miui/launcher/views/LauncherFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 16
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherFrameLayout;->setClickable(Z)V

    .line 17
    new-instance p1, Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-direct {p1, p0, p0}, Lcom/miui/home/launcher/OnLongClickAgent;-><init>(Landroid/view/ViewGroup;Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;)V

    iput-object p1, p0, Lcom/miui/home/launcher/OnLongClickWrapper;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2

    .line 83
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, p1, v0}, Lcom/miui/launcher/views/LauncherFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public cancelLongPress()V
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/miui/home/launcher/OnLongClickWrapper;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    if-eqz p0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/miui/home/launcher/OnLongClickAgent;->cancelCustomziedLongPress()V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/miui/home/launcher/OnLongClickWrapper;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/OnLongClickAgent;->onDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 30
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherFrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getVersionTag()Ljava/lang/Object;
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/miui/home/launcher/OnLongClickWrapper;->getWindowAttachCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public isClickable()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/miui/home/launcher/OnLongClickWrapper;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/OnLongClickAgent;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/miui/launcher/views/LauncherFrameLayout;->isClickable()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 35
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherFrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 36
    invoke-virtual {p0}, Lcom/miui/home/launcher/OnLongClickWrapper;->preventPressState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/OnLongClickWrapper;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/OnLongClickWrapper;->setPressed(Z)V

    .line 47
    invoke-super {p0}, Lcom/miui/launcher/views/LauncherFrameLayout;->cancelLongPress()V

    :cond_0
    return p1
.end method

.method public preventPressState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/miui/home/launcher/OnLongClickWrapper;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    if-eqz p0, :cond_0

    .line 60
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/OnLongClickAgent;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    return-void
.end method
