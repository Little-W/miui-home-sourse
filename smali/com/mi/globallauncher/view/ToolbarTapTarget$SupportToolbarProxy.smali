.class Lcom/mi/globallauncher/view/ToolbarTapTarget$SupportToolbarProxy;
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
    name = "SupportToolbarProxy"
.end annotation


# instance fields
.field private final toolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/mi/globallauncher/view/ToolbarTapTarget$SupportToolbarProxy;->toolbar:Landroidx/appcompat/widget/Toolbar;

    return-void
.end method


# virtual methods
.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .locals 1
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

    .line 189
    iget-object v0, p0, Lcom/mi/globallauncher/view/ToolbarTapTarget$SupportToolbarProxy;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/widget/Toolbar;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/mi/globallauncher/view/ToolbarTapTarget$SupportToolbarProxy;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/mi/globallauncher/view/ToolbarTapTarget$SupportToolbarProxy;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/mi/globallauncher/view/ToolbarTapTarget$SupportToolbarProxy;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/mi/globallauncher/view/ToolbarTapTarget$SupportToolbarProxy;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/mi/globallauncher/view/ToolbarTapTarget$SupportToolbarProxy;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public internalToolbar()Ljava/lang/Object;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/mi/globallauncher/view/ToolbarTapTarget$SupportToolbarProxy;->toolbar:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/mi/globallauncher/view/ToolbarTapTarget$SupportToolbarProxy;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
