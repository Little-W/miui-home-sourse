.class Landroidx/core/view/WindowInsetsControllerCompat$Impl23;
.super Landroidx/core/view/WindowInsetsControllerCompat$Impl20;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl23"
.end annotation


# direct methods
.method constructor <init>(Landroid/view/Window;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;-><init>(Landroid/view/Window;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public setAppearanceLightStatusBars(Z)V
    .locals 1

    const/16 v0, 0x2000

    if-eqz p1, :cond_0

    const/high16 p1, 0x4000000

    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;->unsetWindowFlag(I)V

    const/high16 p1, -0x80000000

    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;->setWindowFlag(I)V

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;->setSystemUiFlag(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;->unsetSystemUiFlag(I)V

    :goto_0
    return-void
.end method
