.class Lcom/mi/globallauncher/view/ToolbarTapTarget$StandardToolbarProxy;
.super Ljava/lang/Object;
.source "ToolbarTapTarget.java"

# interfaces
.implements Lcom/mi/globallauncher/view/ToolbarTapTarget$ToolbarProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/globallauncher/view/ToolbarTapTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StandardToolbarProxy"
.end annotation


# instance fields
.field private final toolbar:Landroid/widget/Toolbar;


# direct methods
.method constructor <init>(Landroid/widget/Toolbar;)V
    .locals 0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p1, p0, Lcom/mi/globallauncher/view/ToolbarTapTarget$StandardToolbarProxy;->toolbar:Landroid/widget/Toolbar;

    return-void
.end method


# virtual methods
.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    .line 238
    iget-object p0, p0, Lcom/mi/globallauncher/view/ToolbarTapTarget$StandardToolbarProxy;->toolbar:Landroid/widget/Toolbar;

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/Toolbar;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/mi/globallauncher/view/ToolbarTapTarget$StandardToolbarProxy;->toolbar:Landroid/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getChildCount()I
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/mi/globallauncher/view/ToolbarTapTarget$StandardToolbarProxy;->toolbar:Landroid/widget/Toolbar;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/mi/globallauncher/view/ToolbarTapTarget$StandardToolbarProxy;->toolbar:Landroid/widget/Toolbar;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/mi/globallauncher/view/ToolbarTapTarget$StandardToolbarProxy;->toolbar:Landroid/widget/Toolbar;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 249
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 250
    iget-object p0, p0, Lcom/mi/globallauncher/view/ToolbarTapTarget$StandardToolbarProxy;->toolbar:Landroid/widget/Toolbar;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public internalToolbar()Ljava/lang/Object;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/mi/globallauncher/view/ToolbarTapTarget$StandardToolbarProxy;->toolbar:Landroid/widget/Toolbar;

    return-object p0
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/mi/globallauncher/view/ToolbarTapTarget$StandardToolbarProxy;->toolbar:Landroid/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
