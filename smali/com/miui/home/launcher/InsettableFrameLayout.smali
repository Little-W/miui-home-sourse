.class public Lcom/miui/home/launcher/InsettableFrameLayout;
.super Lcom/miui/launcher/views/LauncherFrameLayout;
.source "InsettableFrameLayout.java"

# interfaces
.implements Lcom/miui/home/launcher/Insettable;


# instance fields
.field private mInsets:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/miui/launcher/views/LauncherFrameLayout;-><init>(Landroid/content/Context;)V

    .line 12
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/InsettableFrameLayout;->mInsets:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/miui/launcher/views/LauncherFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/InsettableFrameLayout;->mInsets:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/launcher/views/LauncherFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/InsettableFrameLayout;->mInsets:Landroid/graphics/Rect;

    return-void
.end method

.method public static dispatchInsets(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V
    .locals 4

    .line 37
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 39
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 40
    instance-of v3, v2, Lcom/miui/home/launcher/Insettable;

    if-eqz v3, :cond_0

    .line 41
    check-cast v2, Lcom/miui/home/launcher/Insettable;

    invoke-interface {v2, p1}, Lcom/miui/home/launcher/Insettable;->setInsets(Landroid/graphics/Rect;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getInsets()Landroid/graphics/Rect;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/miui/home/launcher/InsettableFrameLayout;->mInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 1

    .line 32
    invoke-static {p0, p1}, Lcom/miui/home/launcher/InsettableFrameLayout;->dispatchInsets(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    .line 33
    iget-object v0, p0, Lcom/miui/home/launcher/InsettableFrameLayout;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method
