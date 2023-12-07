.class Landroidx/core/view/WindowInsetsControllerCompat$Impl20;
.super Landroidx/core/view/WindowInsetsControllerCompat$Impl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl20"
.end annotation


# instance fields
.field private final mView:Landroid/view/View;

.field protected final mWindow:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/view/Window;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl;-><init>()V

    iput-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    iput-object p2, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected setSystemUiFlag(I)V
    .locals 1

    iget-object p0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method protected setWindowFlag(I)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method protected unsetSystemUiFlag(I)V
    .locals 1

    iget-object p0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    not-int p1, p1

    and-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method protected unsetWindowFlag(I)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method
