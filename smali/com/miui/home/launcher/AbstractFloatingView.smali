.class public abstract Lcom/miui/home/launcher/AbstractFloatingView;
.super Landroid/widget/LinearLayout;
.source "AbstractFloatingView.java"

# interfaces
.implements Lcom/miui/home/launcher/util/TouchController;


# instance fields
.field protected mIsOpen:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static changeDarkMode(Lcom/miui/home/launcher/BaseDraggingActivity;)V
    .locals 1

    .line 229
    invoke-static {p0}, Lcom/miui/home/launcher/AbstractFloatingView;->getTopOpenView(Lcom/miui/home/launcher/BaseDraggingActivity;)Lcom/miui/home/launcher/AbstractFloatingView;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$FYUotplnVTbB4wRlEas9IZ4qwV4;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$FYUotplnVTbB4wRlEas9IZ4qwV4;

    invoke-static {p0, v0}, Lcom/miui/home/launcher/AbstractFloatingView;->changeSelf(Lcom/miui/home/launcher/AbstractFloatingView;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static changeScreenSize(Lcom/miui/home/launcher/BaseDraggingActivity;)V
    .locals 1

    .line 235
    invoke-static {p0}, Lcom/miui/home/launcher/AbstractFloatingView;->getTopOpenView(Lcom/miui/home/launcher/BaseDraggingActivity;)Lcom/miui/home/launcher/AbstractFloatingView;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$k1pMNlmPXZGC8bVFaJBZ98K4pc8;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$k1pMNlmPXZGC8bVFaJBZ98K4pc8;

    invoke-static {p0, v0}, Lcom/miui/home/launcher/AbstractFloatingView;->changeSelf(Lcom/miui/home/launcher/AbstractFloatingView;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static changeSelf(Lcom/miui/home/launcher/AbstractFloatingView;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/miui/home/launcher/AbstractFloatingView;",
            ">(TT;",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 240
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static closeOpenViews(Lcom/miui/home/launcher/BaseDraggingActivity;ZI)V
    .locals 3

    .line 193
    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseDraggingActivity;->getDragLayer()Lcom/miui/home/launcher/view/BaseDragLayer;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/BaseDragLayer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 201
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/view/BaseDragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 202
    instance-of v2, v1, Lcom/miui/home/launcher/AbstractFloatingView;

    if-eqz v2, :cond_1

    .line 203
    check-cast v1, Lcom/miui/home/launcher/AbstractFloatingView;

    .line 204
    invoke-virtual {v1, p2}, Lcom/miui/home/launcher/AbstractFloatingView;->isOfType(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/AbstractFloatingView;->close(Z)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected static getOpenView(Lcom/miui/home/launcher/BaseDraggingActivity;I)Lcom/miui/home/launcher/AbstractFloatingView;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/miui/home/launcher/AbstractFloatingView;",
            ">(",
            "Lcom/miui/home/launcher/BaseDraggingActivity;",
            "I)TT;"
        }
    .end annotation

    .line 168
    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseDraggingActivity;->getDragLayer()Lcom/miui/home/launcher/view/BaseDragLayer;

    move-result-object p0

    .line 171
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/BaseDragLayer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 172
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/view/BaseDragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 173
    instance-of v2, v1, Lcom/miui/home/launcher/AbstractFloatingView;

    if-eqz v2, :cond_0

    .line 174
    check-cast v1, Lcom/miui/home/launcher/AbstractFloatingView;

    .line 175
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/AbstractFloatingView;->isOfType(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/miui/home/launcher/AbstractFloatingView;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTopOpenView(Lcom/miui/home/launcher/BaseDraggingActivity;)Lcom/miui/home/launcher/AbstractFloatingView;
    .locals 1

    const/16 v0, 0x1fff

    .line 220
    invoke-static {p0, v0}, Lcom/miui/home/launcher/AbstractFloatingView;->getTopOpenViewWithType(Lcom/miui/home/launcher/BaseDraggingActivity;I)Lcom/miui/home/launcher/AbstractFloatingView;

    move-result-object p0

    return-object p0
.end method

.method public static getTopOpenViewWithType(Lcom/miui/home/launcher/BaseDraggingActivity;I)Lcom/miui/home/launcher/AbstractFloatingView;
    .locals 0

    .line 225
    invoke-static {p0, p1}, Lcom/miui/home/launcher/AbstractFloatingView;->getOpenView(Lcom/miui/home/launcher/BaseDraggingActivity;I)Lcom/miui/home/launcher/AbstractFloatingView;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected announceAccessibilityChanges()V
    .locals 3

    .line 148
    invoke-virtual {p0}, Lcom/miui/home/launcher/AbstractFloatingView;->getAccessibilityTarget()Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 149
    invoke-virtual {p0}, Lcom/miui/home/launcher/AbstractFloatingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/compat/AccessibilityManagerCompat;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x20

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/miui/home/launcher/compat/AccessibilityManagerCompat;->sendCustomAccessibilityEvent(Landroid/view/View;ILjava/lang/String;)V

    .line 155
    iget-boolean v0, p0, Lcom/miui/home/launcher/AbstractFloatingView;->mIsOpen:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 156
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/AbstractFloatingView;->sendAccessibilityEvent(I)V

    .line 158
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/AbstractFloatingView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/BaseDraggingActivity;->fromContext(Landroid/content/Context;)Lcom/miui/home/launcher/BaseDraggingActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseDraggingActivity;->getDragLayer()Lcom/miui/home/launcher/view/BaseDragLayer;

    move-result-object p0

    const/16 v0, 0x800

    .line 159
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/view/BaseDragLayer;->sendAccessibilityEvent(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final close(Z)V
    .locals 1

    .line 121
    invoke-virtual {p0}, Lcom/miui/home/launcher/AbstractFloatingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isPowerSaverPreventingAnimation(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    and-int/2addr p1, v0

    .line 122
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/AbstractFloatingView;->handleClose(Z)V

    const/4 p1, 0x0

    .line 123
    iput-boolean p1, p0, Lcom/miui/home/launcher/AbstractFloatingView;->mIsOpen:Z

    return-void
.end method

.method protected getAccessibilityTarget()Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method protected abstract handleClose(Z)V
.end method

.method protected abstract isOfType(I)Z
.end method

.method public final isOpen()Z
    .locals 0

    .line 129
    iget-boolean p0, p0, Lcom/miui/home/launcher/AbstractFloatingView;->mIsOpen:Z

    return p0
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x1

    .line 138
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/AbstractFloatingView;->close(Z)V

    return v0
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onDarkModeChange()V
    .locals 0

    return-void
.end method

.method public onScreenSizeChange()V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
