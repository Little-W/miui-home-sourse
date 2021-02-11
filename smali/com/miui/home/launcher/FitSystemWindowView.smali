.class public Lcom/miui/home/launcher/FitSystemWindowView;
.super Lcom/miui/home/launcher/InsettableFrameLayout;
.source "FitSystemWindowView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/InsettableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public setInsets(Landroid/graphics/Rect;)V
    .locals 1

    .line 15
    invoke-super {p0, p1}, Lcom/miui/home/launcher/InsettableFrameLayout;->setInsets(Landroid/graphics/Rect;)V

    .line 16
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/miui/home/launcher/FitSystemWindowView;->setPadding(IIII)V

    return-void
.end method
